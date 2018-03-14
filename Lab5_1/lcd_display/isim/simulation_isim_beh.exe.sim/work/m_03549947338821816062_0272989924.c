/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/rharish/Harish/CS220A_Labs/Lab5_1/lcd_display/LCD_top.v";
static unsigned int ng1[] = {1129530656U, 0U, 542396192U, 0U, 1129270597U, 0U, 542590284U, 0U};
static unsigned int ng2[] = {1431445536U, 0U, 1262571088U, 0U, 541663264U, 0U, 541663305U, 0U};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 128);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 128);

LAB1:    return;
}


extern void work_m_03549947338821816062_0272989924_init()
{
	static char *pe[] = {(void *)Initial_31_0};
	xsi_register_didat("work_m_03549947338821816062_0272989924", "isim/simulation_isim_beh.exe.sim/work/m_03549947338821816062_0272989924.didat");
	xsi_register_executes(pe);
}
