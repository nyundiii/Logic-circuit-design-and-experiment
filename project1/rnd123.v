// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Thu Dec 23 15:16:39 2021"

module rnd123(
	clk,
	rst,
	sw8,
	dipswitch,
	Keypad,
	red1,
	red2,
	red3,
	red4,
	blue1,
	blue2,
	blue3,
	blue4,
	green1,
	green2,
	green3,
	green4,
	psegb,
	psega,
	psegc,
	psegd,
	psege,
	psegf,
	psegg,
	led1,
	led2,
	led3,
	led4,
	led5,
	led6,
	led7,
	led8,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com1,
	com2,
	com3,
	com4,
	com8,
	com5,
	com6,
	com7,
	LCD_E,
	LCD_R,
	LCD_RW,
	round2_rst,
	rnd1_done,
	round1_rst,
	rnd3_deon,
	rnd3_rst,
	rnd3_pr,
	LCD_DATA
);


input wire	clk;
input wire	rst;
input wire	sw8;
input wire	[2:0] dipswitch;
input wire	[11:0] Keypad;
output wire	red1;
output wire	red2;
output wire	red3;
output wire	red4;
output wire	blue1;
output wire	blue2;
output wire	blue3;
output wire	blue4;
output wire	green1;
output wire	green2;
output wire	green3;
output wire	green4;
output wire	psegb;
output wire	psega;
output wire	psegc;
output wire	psegd;
output wire	psege;
output wire	psegf;
output wire	psegg;
output wire	led1;
output wire	led2;
output wire	led3;
output wire	led4;
output wire	led5;
output wire	led6;
output wire	led7;
output wire	led8;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com8;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	LCD_E;
output wire	LCD_R;
output wire	LCD_RW;
output wire	round2_rst;
output wire	rnd1_done;
output wire	round1_rst;
output wire	rnd3_deon;
output wire	rnd3_rst;
output wire	rnd3_pr;
output wire	[7:0] LCD_DATA;

wire	[3:0] player1_led;
wire	[3:0] player1_res;
wire	[3:0] player2_led;
wire	[3:0] player2_res;
wire	[1:0] round;
wire	SYNTHESIZED_WIRE_242;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_243;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_244;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_245;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_246;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	SYNTHESIZED_WIRE_87;
wire	SYNTHESIZED_WIRE_88;
wire	SYNTHESIZED_WIRE_89;
wire	SYNTHESIZED_WIRE_90;
wire	SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_96;
wire	SYNTHESIZED_WIRE_97;
wire	SYNTHESIZED_WIRE_98;
wire	SYNTHESIZED_WIRE_99;
wire	SYNTHESIZED_WIRE_100;
wire	SYNTHESIZED_WIRE_101;
wire	SYNTHESIZED_WIRE_102;
wire	SYNTHESIZED_WIRE_103;
wire	SYNTHESIZED_WIRE_104;
wire	SYNTHESIZED_WIRE_247;
wire	SYNTHESIZED_WIRE_248;
wire	SYNTHESIZED_WIRE_249;
wire	SYNTHESIZED_WIRE_113;
wire	SYNTHESIZED_WIRE_114;
wire	SYNTHESIZED_WIRE_116;
wire	SYNTHESIZED_WIRE_117;
wire	SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_120;
wire	SYNTHESIZED_WIRE_122;
wire	SYNTHESIZED_WIRE_123;
wire	SYNTHESIZED_WIRE_124;
wire	SYNTHESIZED_WIRE_126;
wire	SYNTHESIZED_WIRE_128;
wire	SYNTHESIZED_WIRE_129;
wire	SYNTHESIZED_WIRE_130;
wire	SYNTHESIZED_WIRE_131;
wire	SYNTHESIZED_WIRE_133;
wire	SYNTHESIZED_WIRE_135;
wire	SYNTHESIZED_WIRE_138;
wire	SYNTHESIZED_WIRE_139;
wire	SYNTHESIZED_WIRE_141;
wire	SYNTHESIZED_WIRE_142;
wire	SYNTHESIZED_WIRE_143;
wire	SYNTHESIZED_WIRE_145;
wire	SYNTHESIZED_WIRE_146;
wire	SYNTHESIZED_WIRE_149;
wire	SYNTHESIZED_WIRE_150;
wire	SYNTHESIZED_WIRE_151;
wire	SYNTHESIZED_WIRE_152;
wire	SYNTHESIZED_WIRE_154;
wire	SYNTHESIZED_WIRE_157;
wire	SYNTHESIZED_WIRE_159;
wire	SYNTHESIZED_WIRE_161;
wire	SYNTHESIZED_WIRE_162;
wire	SYNTHESIZED_WIRE_164;
wire	SYNTHESIZED_WIRE_166;
wire	SYNTHESIZED_WIRE_168;
wire	SYNTHESIZED_WIRE_169;
wire	SYNTHESIZED_WIRE_170;
wire	SYNTHESIZED_WIRE_172;
wire	SYNTHESIZED_WIRE_174;
wire	SYNTHESIZED_WIRE_177;
wire	SYNTHESIZED_WIRE_179;
wire	SYNTHESIZED_WIRE_182;
wire	SYNTHESIZED_WIRE_185;
wire	SYNTHESIZED_WIRE_187;
wire	SYNTHESIZED_WIRE_189;
wire	[3:0] SYNTHESIZED_WIRE_190;
wire	[3:0] SYNTHESIZED_WIRE_191;
wire	SYNTHESIZED_WIRE_194;
wire	SYNTHESIZED_WIRE_195;
wire	SYNTHESIZED_WIRE_196;
wire	SYNTHESIZED_WIRE_197;
wire	SYNTHESIZED_WIRE_198;
wire	SYNTHESIZED_WIRE_200;
wire	SYNTHESIZED_WIRE_201;
wire	SYNTHESIZED_WIRE_202;
wire	SYNTHESIZED_WIRE_203;
wire	SYNTHESIZED_WIRE_204;
wire	SYNTHESIZED_WIRE_205;
wire	SYNTHESIZED_WIRE_206;
wire	SYNTHESIZED_WIRE_208;
wire	SYNTHESIZED_WIRE_209;
wire	SYNTHESIZED_WIRE_210;
wire	SYNTHESIZED_WIRE_211;
wire	SYNTHESIZED_WIRE_212;
wire	SYNTHESIZED_WIRE_213;
wire	SYNTHESIZED_WIRE_214;
wire	SYNTHESIZED_WIRE_216;
wire	SYNTHESIZED_WIRE_218;
wire	SYNTHESIZED_WIRE_220;
wire	SYNTHESIZED_WIRE_222;
wire	SYNTHESIZED_WIRE_224;
wire	SYNTHESIZED_WIRE_226;
wire	SYNTHESIZED_WIRE_228;
wire	SYNTHESIZED_WIRE_229;
wire	SYNTHESIZED_WIRE_230;
wire	SYNTHESIZED_WIRE_250;
wire	SYNTHESIZED_WIRE_251;
wire	SYNTHESIZED_WIRE_252;

assign	red1 = SYNTHESIZED_WIRE_250;
assign	red2 = SYNTHESIZED_WIRE_250;
assign	red3 = SYNTHESIZED_WIRE_250;
assign	red4 = SYNTHESIZED_WIRE_250;
assign	blue1 = SYNTHESIZED_WIRE_251;
assign	blue2 = SYNTHESIZED_WIRE_251;
assign	blue3 = SYNTHESIZED_WIRE_251;
assign	blue4 = SYNTHESIZED_WIRE_251;
assign	green1 = SYNTHESIZED_WIRE_252;
assign	green2 = SYNTHESIZED_WIRE_252;
assign	green3 = SYNTHESIZED_WIRE_252;
assign	green4 = SYNTHESIZED_WIRE_252;
assign	round2_rst = SYNTHESIZED_WIRE_3;
assign	rnd1_done = SYNTHESIZED_WIRE_1;
assign	round1_rst = SYNTHESIZED_WIRE_131;
assign	rnd3_deon = SYNTHESIZED_WIRE_246;
assign	rnd3_rst = SYNTHESIZED_WIRE_246;
assign	rnd3_pr = SYNTHESIZED_WIRE_246;
assign	SYNTHESIZED_WIRE_248 = 1;




rnd_reset_control	b2v_inst(
	.reset(SYNTHESIZED_WIRE_242),
	.clock(clk),
	.dip_sw_8(sw8),
	.rnd1_done(SYNTHESIZED_WIRE_1),
	.rnd2_done(SYNTHESIZED_WIRE_2),
	.rnd1_rs(SYNTHESIZED_WIRE_131),
	.rnd2_rs(SYNTHESIZED_WIRE_3),
	.rnd3_rs(SYNTHESIZED_WIRE_246),
	.round(round));
	defparam	b2v_inst.state1 = 0;
	defparam	b2v_inst.state2 = 1;
	defparam	b2v_inst.state3 = 2;
	defparam	b2v_inst.state4 = 3;


rnd2_player	b2v_inst1(
	.sharp(Keypad[11]),
	.rst(SYNTHESIZED_WIRE_3),
	.clk(clk),
	.Keypad(Keypad[9:0]),
	.rnd2_done(SYNTHESIZED_WIRE_2),
	.a(SYNTHESIZED_WIRE_198),
	.b(SYNTHESIZED_WIRE_218),
	.c(SYNTHESIZED_WIRE_216),
	.d(SYNTHESIZED_WIRE_222),
	.e(SYNTHESIZED_WIRE_10),
	.f(SYNTHESIZED_WIRE_12),
	.g(SYNTHESIZED_WIRE_16),
	.com8(SYNTHESIZED_WIRE_82),
	.com1(SYNTHESIZED_WIRE_20),
	.com2(SYNTHESIZED_WIRE_28),
	.com3(SYNTHESIZED_WIRE_38),
	.com4(SYNTHESIZED_WIRE_46),
	.com5(SYNTHESIZED_WIRE_56),
	.com6(SYNTHESIZED_WIRE_64),
	.com7(SYNTHESIZED_WIRE_74),
	.RED1(SYNTHESIZED_WIRE_116),
	.player(SYNTHESIZED_WIRE_135),
	
	
	
	.GREEN1(SYNTHESIZED_WIRE_128),
	
	
	
	.BLUE1(SYNTHESIZED_WIRE_122),
	
	
	
	.player1_rnd2_win(SYNTHESIZED_WIRE_152),
	.player2_rnd2_win(SYNTHESIZED_WIRE_170),
	.player1_led(player1_led),
	.player2_led(player2_led));

assign	SYNTHESIZED_WIRE_162 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_104 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_7;

assign	g = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_212 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_202 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_203 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_243;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_161 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_19 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_21;

assign	com2 = ~(SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23);

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_27 =  ~SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_25 =  ~SYNTHESIZED_WIRE_29;

assign	com3 = ~(SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31);


four_bit_counter	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_32),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_242),
	.Q0(player2_res[1:0]));

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_35 =  ~SYNTHESIZED_WIRE_39;

assign	com4 = ~(SYNTHESIZED_WIRE_40 | SYNTHESIZED_WIRE_41);

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_45 =  ~SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_43 =  ~SYNTHESIZED_WIRE_47;

assign	com5 = ~(SYNTHESIZED_WIRE_48 | SYNTHESIZED_WIRE_49);


four_bit_counter	b2v_inst12(
	.ce(SYNTHESIZED_WIRE_50),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_242),
	.Q0(player1_res[1:0]));

assign	SYNTHESIZED_WIRE_49 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_53;

assign	SYNTHESIZED_WIRE_48 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_55;

assign	SYNTHESIZED_WIRE_55 =  ~SYNTHESIZED_WIRE_56;

assign	SYNTHESIZED_WIRE_53 =  ~SYNTHESIZED_WIRE_57;

assign	com6 = ~(SYNTHESIZED_WIRE_58 | SYNTHESIZED_WIRE_59);

assign	SYNTHESIZED_WIRE_59 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_61;

assign	SYNTHESIZED_WIRE_58 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_63;

assign	SYNTHESIZED_WIRE_63 =  ~SYNTHESIZED_WIRE_64;

assign	SYNTHESIZED_WIRE_61 =  ~SYNTHESIZED_WIRE_65;

assign	com7 = ~(SYNTHESIZED_WIRE_66 | SYNTHESIZED_WIRE_67);


test5	b2v_inst13(
	.rst(SYNTHESIZED_WIRE_246),
	.clk(clk),
	.pr(SYNTHESIZED_WIRE_246),
	.random_reset(sw8),
	.Keypad(Keypad),
	.player(SYNTHESIZED_WIRE_247),
	.Is4Strike(SYNTHESIZED_WIRE_249),
	.led4(SYNTHESIZED_WIRE_174),
	.led2(SYNTHESIZED_WIRE_157),
	.led3(SYNTHESIZED_WIRE_164),
	.led1(SYNTHESIZED_WIRE_149),
	.led5(SYNTHESIZED_WIRE_177),
	.led7(SYNTHESIZED_WIRE_194),
	.led6(SYNTHESIZED_WIRE_182),
	.led8(SYNTHESIZED_WIRE_185),
	.a(SYNTHESIZED_WIRE_206),
	.b(SYNTHESIZED_WIRE_214),
	.c(SYNTHESIZED_WIRE_224),
	.d(SYNTHESIZED_WIRE_220),
	.e(SYNTHESIZED_WIRE_226),
	.f(SYNTHESIZED_WIRE_14),
	.g(SYNTHESIZED_WIRE_139),
	.com8(SYNTHESIZED_WIRE_83),
	.com7(SYNTHESIZED_WIRE_75),
	.com6(SYNTHESIZED_WIRE_65),
	.com4(SYNTHESIZED_WIRE_47),
	.com3(SYNTHESIZED_WIRE_39),
	.com2(SYNTHESIZED_WIRE_29),
	.com1(SYNTHESIZED_WIRE_21),
	.com5(SYNTHESIZED_WIRE_57)
	
	
	
	
	
	
	
	);

assign	SYNTHESIZED_WIRE_67 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_71;

assign	SYNTHESIZED_WIRE_66 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_73 =  ~SYNTHESIZED_WIRE_74;

assign	SYNTHESIZED_WIRE_71 =  ~SYNTHESIZED_WIRE_75;

assign	com8 = ~(SYNTHESIZED_WIRE_76 | SYNTHESIZED_WIRE_77);

assign	SYNTHESIZED_WIRE_77 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_79;

assign	SYNTHESIZED_WIRE_76 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_81;

assign	SYNTHESIZED_WIRE_81 =  ~SYNTHESIZED_WIRE_82;

assign	SYNTHESIZED_WIRE_79 =  ~SYNTHESIZED_WIRE_83;

assign	led6 = SYNTHESIZED_WIRE_84 | SYNTHESIZED_WIRE_85 | SYNTHESIZED_WIRE_86;


assign	led5 = SYNTHESIZED_WIRE_90 | SYNTHESIZED_WIRE_91 | SYNTHESIZED_WIRE_92;

assign	led4 = SYNTHESIZED_WIRE_93 | SYNTHESIZED_WIRE_94 | SYNTHESIZED_WIRE_95;

assign	led3 = SYNTHESIZED_WIRE_96 | SYNTHESIZED_WIRE_97 | SYNTHESIZED_WIRE_98;

assign	led2 = SYNTHESIZED_WIRE_99 | SYNTHESIZED_WIRE_100 | SYNTHESIZED_WIRE_101;

assign	led1 = SYNTHESIZED_WIRE_102 | SYNTHESIZED_WIRE_103 | SYNTHESIZED_WIRE_104;

assign	SYNTHESIZED_WIRE_145 =  ~SYNTHESIZED_WIRE_247;

assign	SYNTHESIZED_WIRE_242 =  ~rst;



Four_bit_Register_v3	b2v_inst253(
	.ce(SYNTHESIZED_WIRE_248),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_242),
	.din(player1_res),
	.out(SYNTHESIZED_WIRE_190));


Four_bit_Register_v3	b2v_inst254(
	.ce(SYNTHESIZED_WIRE_248),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_242),
	.din(player2_res),
	.out(SYNTHESIZED_WIRE_191));

assign	SYNTHESIZED_WIRE_244 = ~(round[1] | round[0]);

assign	SYNTHESIZED_WIRE_169 = SYNTHESIZED_WIRE_249 & SYNTHESIZED_WIRE_247;

assign	SYNTHESIZED_WIRE_118 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_113;

assign	SYNTHESIZED_WIRE_245 = round[0] & SYNTHESIZED_WIRE_114;

assign	SYNTHESIZED_WIRE_117 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_116;

assign	SYNTHESIZED_WIRE_114 =  ~round[1];


before_game	b2v_inst3333(
	.RESETN(sw8),
	.CLK(clk),
	.LCD_E(LCD_E),
	.LCD_RS(LCD_R),
	.LCD_RW(LCD_RW),
	.LCD_DATA(LCD_DATA));
	defparam	b2v_inst3333.CLEAR_DISP = 3'b111;
	defparam	b2v_inst3333.DELAY = 3'b000;
	defparam	b2v_inst3333.DELAY_T = 3'b110;
	defparam	b2v_inst3333.DISP_ONOFF = 3'b011;
	defparam	b2v_inst3333.ENTRY_MODE = 3'b010;
	defparam	b2v_inst3333.FUNCTION_SET = 3'b001;
	defparam	b2v_inst3333.LINE1 = 3'b100;
	defparam	b2v_inst3333.LINE2 = 3'b101;

assign	SYNTHESIZED_WIRE_250 = SYNTHESIZED_WIRE_117 | SYNTHESIZED_WIRE_118;

assign	SYNTHESIZED_WIRE_124 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_120;

assign	SYNTHESIZED_WIRE_123 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_122;

assign	SYNTHESIZED_WIRE_251 = SYNTHESIZED_WIRE_123 | SYNTHESIZED_WIRE_124;

assign	SYNTHESIZED_WIRE_130 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_126;

assign	SYNTHESIZED_WIRE_129 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_128;


assign	SYNTHESIZED_WIRE_252 = SYNTHESIZED_WIRE_129 | SYNTHESIZED_WIRE_130;


project2	b2v_inst41(
	.dipswitch8(sw8),
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_131),
	.dipswitch(dipswitch),
	
	
	
	
	
	
	.red1(SYNTHESIZED_WIRE_113),
	
	
	
	.blue1(SYNTHESIZED_WIRE_120),
	
	
	
	.green1(SYNTHESIZED_WIRE_126),
	.led2(SYNTHESIZED_WIRE_154),
	.led3(SYNTHESIZED_WIRE_159),
	.led1(SYNTHESIZED_WIRE_7),
	.led7(SYNTHESIZED_WIRE_189),
	.led6(SYNTHESIZED_WIRE_179),
	.led8(SYNTHESIZED_WIRE_187),
	.led4(SYNTHESIZED_WIRE_166),
	.player(SYNTHESIZED_WIRE_133),
	.led5(SYNTHESIZED_WIRE_172),
	.player1_rnd1_win(SYNTHESIZED_WIRE_150),
	.player2_rnd1_win(SYNTHESIZED_WIRE_168),
	.rnd1_done(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_143 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_133;

assign	SYNTHESIZED_WIRE_142 = SYNTHESIZED_WIRE_245 & SYNTHESIZED_WIRE_135;

assign	SYNTHESIZED_WIRE_141 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_247;

assign	SYNTHESIZED_WIRE_243 = SYNTHESIZED_WIRE_138 & round[1];

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_139 & SYNTHESIZED_WIRE_243;

assign	SYNTHESIZED_WIRE_146 = SYNTHESIZED_WIRE_141 | SYNTHESIZED_WIRE_142 | SYNTHESIZED_WIRE_143;

assign	SYNTHESIZED_WIRE_151 = SYNTHESIZED_WIRE_249 & SYNTHESIZED_WIRE_145;


player_change	b2v_inst50(
	.pin_name1(SYNTHESIZED_WIRE_146),
	.a(psega),
	.b(psegb),
	.c(psegc),
	.d(psegd),
	.e(psege),
	.f(psegf),
	.g(psegg));

assign	SYNTHESIZED_WIRE_103 = SYNTHESIZED_WIRE_245 & player1_led[3];

assign	SYNTHESIZED_WIRE_102 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_149;

assign	SYNTHESIZED_WIRE_50 = SYNTHESIZED_WIRE_150 | SYNTHESIZED_WIRE_151 | SYNTHESIZED_WIRE_152;

assign	SYNTHESIZED_WIRE_101 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_154;

assign	SYNTHESIZED_WIRE_99 = SYNTHESIZED_WIRE_245 & player1_led[2];

assign	SYNTHESIZED_WIRE_100 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_157;

assign	SYNTHESIZED_WIRE_98 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_159;

assign	SYNTHESIZED_WIRE_96 = SYNTHESIZED_WIRE_245 & player1_led[1];

assign	com1 = ~(SYNTHESIZED_WIRE_161 | SYNTHESIZED_WIRE_162);

assign	SYNTHESIZED_WIRE_97 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_164;

assign	SYNTHESIZED_WIRE_95 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_166;

assign	SYNTHESIZED_WIRE_93 = SYNTHESIZED_WIRE_245 & player1_led[0];

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_168 | SYNTHESIZED_WIRE_169 | SYNTHESIZED_WIRE_170;

assign	SYNTHESIZED_WIRE_92 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_172;

assign	SYNTHESIZED_WIRE_94 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_174;

assign	SYNTHESIZED_WIRE_90 = SYNTHESIZED_WIRE_245 & player2_led[3];

assign	SYNTHESIZED_WIRE_91 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_177;

assign	SYNTHESIZED_WIRE_86 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_179;

assign	SYNTHESIZED_WIRE_84 = SYNTHESIZED_WIRE_245 & player2_led[2];

assign	SYNTHESIZED_WIRE_85 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_182;

assign	SYNTHESIZED_WIRE_195 = SYNTHESIZED_WIRE_245 & player2_led[0];

assign	SYNTHESIZED_WIRE_196 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_185;

assign	SYNTHESIZED_WIRE_197 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_187;

assign	SYNTHESIZED_WIRE_230 = SYNTHESIZED_WIRE_244 & SYNTHESIZED_WIRE_189;


week3_3	b2v_inst8(
	.Player1(SYNTHESIZED_WIRE_190),
	.Player2(SYNTHESIZED_WIRE_191),
	.Eq(SYNTHESIZED_WIRE_89),
	.Gt(SYNTHESIZED_WIRE_87),
	.Ls(SYNTHESIZED_WIRE_88));

assign	SYNTHESIZED_WIRE_228 = SYNTHESIZED_WIRE_245 & player2_led[1];

assign	SYNTHESIZED_WIRE_229 = SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_194;

assign	led8 = SYNTHESIZED_WIRE_195 | SYNTHESIZED_WIRE_196 | SYNTHESIZED_WIRE_197;

assign	SYNTHESIZED_WIRE_204 = SYNTHESIZED_WIRE_198 & SYNTHESIZED_WIRE_245;

assign	c = SYNTHESIZED_WIRE_200 | SYNTHESIZED_WIRE_201;

assign	f = SYNTHESIZED_WIRE_202 | SYNTHESIZED_WIRE_203;

assign	a = SYNTHESIZED_WIRE_204 | SYNTHESIZED_WIRE_205;

assign	SYNTHESIZED_WIRE_205 = SYNTHESIZED_WIRE_206 & SYNTHESIZED_WIRE_243;

assign	d = SYNTHESIZED_WIRE_208 | SYNTHESIZED_WIRE_209;

assign	SYNTHESIZED_WIRE_138 =  ~round[0];

assign	b = SYNTHESIZED_WIRE_210 | SYNTHESIZED_WIRE_211;

assign	e = SYNTHESIZED_WIRE_212 | SYNTHESIZED_WIRE_213;

assign	SYNTHESIZED_WIRE_211 = SYNTHESIZED_WIRE_214 & SYNTHESIZED_WIRE_243;

assign	SYNTHESIZED_WIRE_200 = SYNTHESIZED_WIRE_216 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_210 = SYNTHESIZED_WIRE_218 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_209 = SYNTHESIZED_WIRE_220 & SYNTHESIZED_WIRE_243;

assign	SYNTHESIZED_WIRE_208 = SYNTHESIZED_WIRE_222 & SYNTHESIZED_WIRE_245;

assign	SYNTHESIZED_WIRE_201 = SYNTHESIZED_WIRE_224 & SYNTHESIZED_WIRE_243;

assign	SYNTHESIZED_WIRE_213 = SYNTHESIZED_WIRE_226 & SYNTHESIZED_WIRE_243;

assign	led7 = SYNTHESIZED_WIRE_228 | SYNTHESIZED_WIRE_229 | SYNTHESIZED_WIRE_230;


endmodule
