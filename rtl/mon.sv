class monitor;
virtual intf vif;
mailbox mon2scb;
function new(virtual intf vif, mailbox mon2scb);
this.vif = vif;
this.mon2scb = mon2scb;
endfunction
task main();
transaction trans;
repeat(10)
begin
#10;
trans = new();
trans.weight_in = vif.weight_in;
trans.pkg_detect = vif.pkg_detect;
trans.sort_accept = vif.sort_accept;
trans.sort_reject = vif.sort_reject;
trans.fault = vif.fault;
mon2scb.put(trans);
trans.display("Monitor");
end
endtask
endclass
