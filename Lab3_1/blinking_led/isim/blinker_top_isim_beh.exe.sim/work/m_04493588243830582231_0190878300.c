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
static const char *ng0 = "/media/raditya/822A-B6CA/CS220Labs/Lab3_1/blinking_led/blinker.v";
static int ng1[] = {0, 0};
static int ng2[] = {26, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {2, 0};



static void Initial_33_0(char *t0)
{
    char t5[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1448);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 1608);
    t15 = (t0 + 1608);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 1768);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    xsi_vlog_generic_convert_bit_index(t14, t17, 2, t20, 32, 1);
    t21 = (t14 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    if (t23 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t14), 1);
    goto LAB7;

}

static void Always_39_1(char *t0)
{
    char t8[8];
    char t22[8];
    char t38[8];
    char t54[8];
    char t62[8];
    char t102[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    char *t103;

LAB0:    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3248);
    *((int *)t2) = 1;
    t3 = (t0 + 2960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1608);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 26, t6, 26, t7, 26);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 26);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB9;

LAB6:    if (t19 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t8);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t62, t22, 8);

LAB16:    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(49, ng0);

LAB37:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t7);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB41;

LAB38:    if (t19 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t8) = 1;

LAB41:    memset(t22, 0, 8);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t8);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t23) != 0)
        goto LAB44;

LAB45:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB46;

LAB47:    memcpy(t102, t22, 8);

LAB48:    t100 = (t102 + 4);
    t95 = *((unsigned int *)t100);
    t96 = (~(t95));
    t97 = *((unsigned int *)t102);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB60;

LAB61:
LAB62:
LAB30:    goto LAB2;

LAB8:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 1608);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng5)));
    memset(t38, 0, 8);
    t39 = (t36 + 4);
    t40 = (t37 + 4);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB20;

LAB17:    if (t50 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t38) = 1;

LAB20:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t55) != 0)
        goto LAB23;

LAB24:    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t22 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t54) = 1;
    goto LAB24;

LAB23:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB24;

LAB25:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t22 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t22);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB27;

LAB28:    xsi_set_current_line(43, ng0);

LAB31:    xsi_set_current_line(44, ng0);
    t100 = ((char*)((ng1)));
    t101 = (t0 + 1448);
    xsi_vlogvar_assign_value(t101, t100, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB32:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t5, 32);
    t6 = (t8 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB33;

LAB34:    goto LAB30;

LAB33:    xsi_set_current_line(46, ng0);
    t7 = ((char*)((ng1)));
    t9 = (t0 + 1608);
    t23 = (t0 + 1608);
    t29 = (t23 + 72U);
    t30 = *((char **)t29);
    t34 = (t0 + 1768);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    xsi_vlog_generic_convert_bit_index(t22, t30, 2, t36, 32, 1);
    t37 = (t22 + 4);
    t15 = *((unsigned int *)t37);
    t86 = (!(t15));
    if (t86 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB32;

LAB35:    xsi_vlogvar_assign_value(t9, t7, 0, *((unsigned int *)t22), 1);
    goto LAB36;

LAB40:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t22) = 1;
    goto LAB45;

LAB44:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB45;

LAB46:    t34 = (t0 + 1608);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng5)));
    t39 = ((char*)((ng5)));
    memset(t38, 0, 8);
    xsi_vlog_unsigned_multiply(t38, 32, t37, 32, t39, 32);
    memset(t54, 0, 8);
    t40 = (t36 + 4);
    t53 = (t38 + 4);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t38);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t40);
    t45 = *((unsigned int *)t53);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t40);
    t49 = *((unsigned int *)t53);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB52;

LAB49:    if (t50 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t54) = 1;

LAB52:    memset(t62, 0, 8);
    t61 = (t54 + 4);
    t56 = *((unsigned int *)t61);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t61) != 0)
        goto LAB55;

LAB56:    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t62);
    t65 = (t63 & t64);
    *((unsigned int *)t102) = t65;
    t67 = (t22 + 4);
    t68 = (t62 + 4);
    t76 = (t102 + 4);
    t69 = *((unsigned int *)t67);
    t70 = *((unsigned int *)t68);
    t71 = (t69 | t70);
    *((unsigned int *)t76) = t71;
    t72 = *((unsigned int *)t76);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB51:    t55 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t55) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t62) = 1;
    goto LAB56;

LAB55:    t66 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB56;

LAB57:    t74 = *((unsigned int *)t102);
    t75 = *((unsigned int *)t76);
    *((unsigned int *)t102) = (t74 | t75);
    t77 = (t22 + 4);
    t94 = (t62 + 4);
    t78 = *((unsigned int *)t22);
    t79 = (~(t78));
    t80 = *((unsigned int *)t77);
    t81 = (~(t80));
    t82 = *((unsigned int *)t62);
    t83 = (~(t82));
    t84 = *((unsigned int *)t94);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t90 & t88);
    t91 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t91 & t89);
    t92 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t92 & t88);
    t93 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t93 & t89);
    goto LAB59;

LAB60:    xsi_set_current_line(51, ng0);

LAB63:    xsi_set_current_line(52, ng0);
    t101 = ((char*)((ng3)));
    t103 = (t0 + 1448);
    xsi_vlogvar_assign_value(t103, t101, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB64:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t5, 32);
    t6 = (t8 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB65;

LAB66:    goto LAB62;

LAB65:    xsi_set_current_line(54, ng0);
    t7 = ((char*)((ng1)));
    t9 = (t0 + 1608);
    t23 = (t0 + 1608);
    t29 = (t23 + 72U);
    t30 = *((char **)t29);
    t34 = (t0 + 1768);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    xsi_vlog_generic_convert_bit_index(t22, t30, 2, t36, 32, 1);
    t37 = (t22 + 4);
    t15 = *((unsigned int *)t37);
    t86 = (!(t15));
    if (t86 == 1)
        goto LAB67;

LAB68:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB64;

LAB67:    xsi_vlogvar_assign_value(t9, t7, 0, *((unsigned int *)t22), 1);
    goto LAB68;

}


extern void work_m_04493588243830582231_0190878300_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Always_39_1};
	xsi_register_didat("work_m_04493588243830582231_0190878300", "isim/blinker_top_isim_beh.exe.sim/work/m_04493588243830582231_0190878300.didat");
	xsi_register_executes(pe);
}
