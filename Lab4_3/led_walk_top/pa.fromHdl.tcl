
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name led_walk_top -dir "/media/rharish/Harish/CS220A_Labs/Lab4_3/led_walk_top/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_walk_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {full_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {five_bit_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {led_walk.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {led_walk_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top led_walk_top $srcset
add_files [list {led_walk_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
