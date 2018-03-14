
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name full_adder_schematic -dir "/media/rharish/822A-B6CA/CS220Labs/Lab1_2/full_adder_schematic/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "full_adder_sch.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {myxor.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {full_adder_sch.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top full_adder_sch $srcset
add_files [list {full_adder_sch.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
