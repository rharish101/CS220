
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name eight_bit_comparator -dir "/media/rharish/822A-B6CA/CS220Labs/Lab2_2/eight_bit_comparator/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "eight_bit_comparator.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {one_bit_compare.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {eight_bit_comparator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top eight_bit_comparator $srcset
add_files [list {eight_bit_comparator.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
