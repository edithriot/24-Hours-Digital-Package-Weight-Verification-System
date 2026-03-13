class scoreboard;
mailbox mon2scb;
function new(mailbox mon2scb);
this.mon2scb = mon2scb;
endfunction
task main();
transaction trans;
repeat(10)
begin
mon2scb.get(trans);
trans.display("Scoreboard");
if(trans.pkg_detect && trans.weight_in >= 10 && trans.weight_in <= 100)
begin
if(trans.sort_accept)
$display("PASS: ACCEPTED PACKAGE");
else
$display("FAIL");
end
else if(trans.pkg_detect && (trans.weight_in < 10 || trans.weight_in > 100))
begin
if(trans.sort_reject)
$display("PASS: REJECTED PACKAGE");
else
$display("FAIL");
end
else if(!trans.pkg_detect && trans.weight_in != 0)
begin
if(trans.fault)
$display("PASS: FAULT DETECTED");
else
$display("FAIL");
end
end
endtask
endclass
