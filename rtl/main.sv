//-------------------------------------------------------------
// Comparator
//-------------------------------------------------------------
module comparator(

input  logic [7:0] weight_in,
input  logic [7:0] min_weight,
input  logic [7:0] max_weight,

output logic within_range,
output logic under_weight,
output logic over_weight

);

always_comb begin

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
// Accept Reject Controller
//-------------------------------------------------------------
module accept_reject_control(

input  logic clk,
input  logic rst,
input  logic within_range,

output logic accept,
output logic reject

);

always_ff @(posedge clk or posedge rst) begin

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

input  logic accept,
input  logic reject,

output logic sort_accept,
output logic sort_reject

);

always_comb begin

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

input logic clk,
input logic rst,
input logic pkg_detect,
input logic accept,
input logic reject,

output logic [15:0] total_count,
output logic [15:0] accept_count,
output logic [15:0] reject_count

);

always_ff @(posedge clk or posedge rst) begin

if(rst) begin
total_count  <= 0;
accept_count <= 0;
reject_count <= 0;
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
// Fault Alert Module
//-------------------------------------------------------------
module fault_alert(

input logic [7:0] weight_in,
input logic under_weight,
input logic over_weight,
input logic pkg_detect,

output logic fault

);

always_comb begin

if(pkg_detect == 0 && weight_in != 0)
fault = 1;

else if(pkg_detect == 1 && weight_in == 0)
fault = 1;

else if(under_weight || over_weight)
fault = 1;

else
fault = 0;

end

endmodule



//-------------------------------------------------------------
// TOP MODULE ARCHITECTURE
//-------------------------------------------------------------
module weight_verification_top(

input  logic clk,
input  logic rst,
input  logic pkg_detect,

input  logic [7:0] weight_in,
input  logic [7:0] min_weight,
input  logic [7:0] max_weight,

output logic sort_accept,
output logic sort_reject,
output logic fault,

output logic [15:0] total_count,
output logic [15:0] accept_count,
output logic [15:0] reject_count

);


// Internal Signals
logic within_range;
logic under_weight;
logic over_weight;

logic accept;
logic reject;


// Comparator Instance
comparator cmp(

.weight_in(weight_in),
.min_weight(min_weight),
.max_weight(max_weight),

.within_range(within_range),
.under_weight(under_weight),
.over_weight(over_weight)

);


// Control Logic
accept_reject_control ctrl(

.clk(clk),
.rst(rst),
.within_range(within_range),

.accept(accept),
.reject(reject)

);


// Sorting Logic
sorting_control sort_ctrl(

.accept(accept),
.reject(reject),

.sort_accept(sort_accept),
.sort_reject(sort_reject)

);


// Counter Logic
package_counter counter(

.clk(clk),
.rst(rst),
.pkg_detect(pkg_detect),

.accept(accept),
.reject(reject),

.total_count(total_count),
.accept_count(accept_count),
.reject_count(reject_count)

);


// Fault Detection
fault_alert fault_mod(

.weight_in(weight_in),
.under_weight(under_weight),
.over_weight(over_weight),
.pkg_detect(pkg_detect),

.fault(fault)

);

endmodule
