//-------------------------------------------------------------
// Comparator Module
//-------------------------------------------------------------
module comparator(
    input  [7:0] weight_in,
    input  [7:0] min_weight,
    input  [7:0] max_weight,
    
    output reg within_range,
    output reg under_weight,
    output reg over_weight
);

always @(*) begin
    if(weight_in < min_weight) begin
        within_range = 0;
        under_weight = 1;
        over_weight  = 0;
    end
    else if(weight_in > max_weight) begin
        within_range = 0;
        under_weight = 0;
        over_weight  = 1;
    end
    else begin
        within_range = 1;
        under_weight = 0;
        over_weight  = 0;
    end
end

endmodule


//-------------------------------------------------------------
// Accept / Reject Control
//-------------------------------------------------------------
module accept_reject_control(
    input clk,
    input rst,
    input within_range,

    output reg accept,
    output reg reject
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        accept <= 0;
        reject <= 0;
    end
    else begin
        if(within_range) begin
            accept <= 1;
            reject <= 0;
        end
        else begin
            accept <= 0;
            reject <= 1;
        end
    end
end

endmodule


//-------------------------------------------------------------
// Sorting Control
//-------------------------------------------------------------
module sorting_control(
    input accept,
    input reject,

    output reg sort_accept,
    output reg sort_reject
);

always @(*) begin
    if(accept) begin
        sort_accept = 1;
        sort_reject = 0;
    end
    else if(reject) begin
        sort_accept = 0;
        sort_reject = 1;
    end
    else begin
        sort_accept = 0;
        sort_reject = 0;
    end
end

endmodule


//-------------------------------------------------------------
// Package Counter
//-------------------------------------------------------------
module package_counter(
    input clk,
    input rst,
    input pkg_detect,
    input accept,
    input reject,

    output reg [15:0] total_count,
    output reg [15:0] accept_count,
    output reg [15:0] reject_count
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        total_count  <= 16'd0;
        accept_count <= 16'd0;
        reject_count <= 16'd0;
    end
    else if(pkg_detect) begin
        total_count <= total_count + 1;

        if(accept)
            accept_count <= accept_count + 1;

        if(reject)
            reject_count <= reject_count + 1;
    end
end

endmodule


//-------------------------------------------------------------
// Fault Alert Module (Enhanced Logic)
//-------------------------------------------------------------
module fault_alert(
    input [7:0] weight_in,
    input under_weight,
    input over_weight,
    input pkg_detect,

    output reg fault
);

always @(*) begin

    // Sensor detects weight but no package present
    if(pkg_detect == 0 && weight_in != 0)
        fault = 1;

    // Package detected but weight is zero
    else if(pkg_detect == 1 && weight_in == 0)
        fault = 1;

    // Underweight or overweight package
    else if(under_weight || over_weight)
        fault = 1;

    else
        fault = 0;

end

endmodule


//-------------------------------------------------------------
// Top Module Integration
//-------------------------------------------------------------
module weight_verification_top(

input clk,
input rst,
input pkg_detect,

input [7:0] weight_in,
input [7:0] min_weight,
input [7:0] max_weight,

output sort_accept,
output sort_reject,
output fault,

output [15:0] total_count,
output [15:0] accept_count,
output [15:0] reject_count
);

// Internal wires
wire within_range;
wire under_weight;
wire over_weight;

wire accept;
wire reject;


// Comparator
comparator cmp (
    .weight_in(weight_in),
    .min_weight(min_weight),
    .max_weight(max_weight),
    .within_range(within_range),
    .under_weight(under_weight),
    .over_weight(over_weight)
);


// Accept / Reject Control
accept_reject_control ctrl (
    .clk(clk),
    .rst(rst),
    .within_range(within_range),
    .accept(accept),
    .reject(reject)
);


// Sorting Control
sorting_control sort_ctrl (
    .accept(accept),
    .reject(reject),
    .sort_accept(sort_accept),
    .sort_reject(sort_reject)
);


// Package Counter
package_counter counter (
    .clk(clk),
    .rst(rst),
    .pkg_detect(pkg_detect),
    .accept(accept),
    .reject(reject),
    .total_count(total_count),
    .accept_count(accept_count),
    .reject_count(reject_count)
);


// Fault Alert
fault_alert fault_mod (
    .weight_in(weight_in),
    .under_weight(under_weight),
    .over_weight(over_weight),
    .pkg_detect(pkg_detect),
    .fault(fault)
);

endmodule
