###################################################################

# Created by write_sdc on Fri Mar 13 22:25:38 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
set_load -pin_load 0.1 [get_ports sort_accept]
set_load -pin_load 0.1 [get_ports sort_reject]
create_clock [get_ports clk]  -period 2  -waveform {0 1}
set_clock_uncertainty 0.3  [get_clocks clk]
set_input_delay -clock clk  0.2  [get_ports {weight_in[7]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[6]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[5]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[4]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[3]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[2]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[1]}]
set_input_delay -clock clk  0.2  [get_ports {weight_in[0]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[7]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[6]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[5]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[4]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[3]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[2]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[1]}]
set_input_delay -clock clk  0.2  [get_ports {min_weight[0]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[7]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[6]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[5]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[4]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[3]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[2]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[1]}]
set_input_delay -clock clk  0.2  [get_ports {max_weight[0]}]
set_input_delay -clock clk  0.2  [get_ports pkg_detect]
set_output_delay -clock clk  0.3  [get_ports sort_accept]
set_output_delay -clock clk  0.3  [get_ports sort_reject]
set_false_path   -from [get_ports rst]
