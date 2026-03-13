class generator;
transaction trans;
mailbox gen2drv;
function new(mailbox gen2drv);
this.gen2drv = gen2drv;
endfunction
task main();
repeat(10)
begin
trans = new();
trans.randomize();
trans.pkg_detect = $urandom_range(0,1);
trans.display("Generator");
gen2drv.put(trans);
end
endtask
endclass
