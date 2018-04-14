
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab9 -dir "/mnt/Data/Dropbox/CS220A_Labs/Lab9_B/lab9/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "registers.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../../../../../../mnt/Data/Dropbox/CS220A_Labs/Lab9_B/lab9/registers.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top registers $srcset
add_files [list {registers.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
