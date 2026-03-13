# Create Clock (100 MHz)
create_clock -name clk -period 2 [get_ports clk]

# Clock Uncertainty
set_clock_uncertainty 0.3 [get_clocks clk]

# Input Delay
set_input_delay 0.2 -clock clk [get_ports {weight_in[*]}]
set_input_delay 0.2 -clock clk [get_ports {min_weight[*]}]
set_input_delay 0.2 -clock clk [get_ports {max_weight[*]}]
set_input_delay 0.2 -clock clk [get_ports pkg_detect]

# Output Delay
set_output_delay 0.3 -clock clk [get_ports {sort_accept sort_reject}]

# Reset as False Path
set_false_path -from [get_ports rst]

# Driving Cell assumption
#set_driving_cell -lib_cell INVX1 [get_ports *]

# Output Load
set_load 0.1 [get_ports {sort_accept sort_reject}]
