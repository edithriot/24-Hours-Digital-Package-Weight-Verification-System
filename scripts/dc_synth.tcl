set_app_var search_path /home/sreenivasulu5137/VLSI/models

set_app_var target_library "/home/sreenivasulu5137/VLSI/models/saed32rvt_ss0p95v125c.db"

set_app_var synthetic_library dw_foundation.sldb

set_app_var link_library "\ /home/sreenivasulu5137/VLSI/models/saed32rvt_ss0p95v125c.db \ $synthetic_library"

analyze -library WORK -format sverilog /home/sreenivasulu5137/VLSI/rtl/main.sv

read_file -format sverilog /home/sreenivasulu5137/VLSI/rtl/main.sv

elaborate weight_verification_top

current_design weight_verification_top

link

check_design

read_sdc /home/sreenivasulu5137/VLSI/models/Team_EDITH.sdc

set_max_area 0.0

compile_ultra

report_area > ../reports/TEAM_EDITH_AREA_RPT.rpt

report_design > ../reports/TEAM_EDITH_DESIGN_RPT.rpt

report_cell > ../reports/TEAM_EDITH_CELL_RPT.rpt

report_qor > ../reports/TEAM_EDITH_QOR_RPT.rpt

report_resources  > ../reports/TEAM_EDITH_RESOURCES_RPT.rpt

report_timing  > ../reports/TEAM_EDITH_TIMING_RPT.rpt

report_power  > ../reports/TEAM_EDITH_PWR_RPT.rpt

write_sdc TEAM_EDITH_SYNTH.sdc

write_file -format verilog -hierarchy -output TEAM_EDITH_SYNTH.v

write -format ddc -hierarchy -output TEAM_EDITH_SYNTH.ddc


