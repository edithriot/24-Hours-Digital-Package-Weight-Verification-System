class transaction;
rand bit [7:0] weight_in;
bit pkg_detect;
bit sort_accept;
bit sort_reject;
bit fault;
function void display(string name);
$display("----- %s -----",name);
$display("weight=%0d pkg_detect=%0b accept=%0b reject=%0b fault=%0b",
weight_in,pkg_detect,sort_accept,sort_reject,fault);
$display("-------------------------");
endfunction
endclass

