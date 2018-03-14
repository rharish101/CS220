
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lcd_display -dir "/media/rharish/Harish/CS220A_Labs/Lab5_1/lcd_display/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LCD_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {LCD_base_driver.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD_driver.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LCD_top $srcset
add_files [list {LCD_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
