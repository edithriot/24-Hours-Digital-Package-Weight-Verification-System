
class driver;
virtual intf vif;
mailbox gen2drv;
function new(virtual intf vif, mailbox gen2drv);
this.vif = vif;
this.gen2drv = gen2drv;
endfunction
task main();
transaction trans;
repeat(10)
begin
gen2drv.get(trans);
vif.weight_in <= trans.weight_in;
vif.pkg_detect <= trans.pkg_detect;
#10;
trans.display("Driver");
end
endtask
endclass
