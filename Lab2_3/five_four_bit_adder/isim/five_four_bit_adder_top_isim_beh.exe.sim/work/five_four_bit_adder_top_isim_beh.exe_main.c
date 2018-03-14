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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_07958154198403372893_3190593924_init();
    work_m_14899572538499005334_1698222184_init();
    work_m_02348284607137495627_0898501645_init();
    work_m_12432428146512626913_1485883089_init();
    work_m_08665817568385925374_2913367964_init();
    work_m_12367177302823571314_2226691148_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_12367177302823571314_2226691148");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
