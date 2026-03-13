//-------------------------------------------------------------
// Sorting Control
//-------------------------------------------------------------
//module declaration
module sorting_control(
//input declaration
    input accept,
    input reject,
//output declaration
    output reg sort_accept,
    output reg sort_reject
);
//the always block executed at every input changes
always @(*) begin
//the value of accept becomes one in the module accept_reject_control then based on the value 
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

