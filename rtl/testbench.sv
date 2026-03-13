`include "main.sv"
`include "tx.sv"
`include "scb.sv"
`include "mon.sv"
`include "drv.sv"
`include "gen.sv"
`include "env.sv"
`include "int.sv"
`include "test.sv"
module testbench;
logic clk;
logic rst;
intf intff(clk);
test tst(intff);
weight_verification_top DUT(
.clk(clk),
.rst(rst),
.pkg_detect(intff.pkg_detect),
.weight_in(intff.weight_in),
.min_weight(8'd10),
.max_weight(8'd100),
.sort_accept(intff.sort_accept),
.sort_reject(intff.sort_reject),
.fault(intff.fault),
.total_count(),
.accept_count(),
.reject_count()
);
initial
begin
clk = 1;
forever #10 clk = ~clk;
end
initial
begin
rst = 1;
#10 rst = 0;
end
initial
begin
$dumpfile("dump.vcd");
$dumpvars;
end
initial begin
#400 $finish;
end
endmodule

