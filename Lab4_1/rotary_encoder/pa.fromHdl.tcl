
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name rotary_encoder -dir "/media/rharish/822A-B6CA/CS220Labs/Lab4_1/rotary_encoder/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "rotary_encoder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {rotator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rotation_info.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rotary_encoder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top rotary_encoder $srcset
add_files [list {rotary_encoder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
