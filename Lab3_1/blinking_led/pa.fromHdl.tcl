
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name blinking_led -dir "/media/raditya/822A-B6CA/CS220Labs/Lab3_1/blinking_led/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "blinker.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {blinker.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top blinker $srcset
add_files [list {blinker.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
