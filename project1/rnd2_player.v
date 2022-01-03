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
// CREATED		"Thu Dec 23 10:58:01 2021"

module rnd2_player(
	clk,
	rst,
	sharp,
	Keypad,
	RED1,
	RED2,
	RED3,
	RED4,
	GREEN1,
	GREEN2,
	GREEN3,
	GREEN4,
	BLUE1,
	BLUE2,
	BLUE3,
	BLUE4,
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
	com5,
	com6,
	com7,
	com8,
	rnd2_done,
	player,
	player2_rnd2_win,
	player1_rnd2_win,
	player1_led,
	player2_led
);


input wire	clk;
input wire	rst;
input wire	sharp;
input wire	[9:0] Keypad;
output wire	RED1;
output wire	RED2;
output wire	RED3;
output wire	RED4;
output wire	GREEN1;
output wire	GREEN2;
output wire	GREEN3;
output wire	GREEN4;
output wire	BLUE1;
output wire	BLUE2;
output wire	BLUE3;
output wire	BLUE4;
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
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;
output wire	rnd2_done;
output wire	player;
output wire	player2_rnd2_win;
output wire	player1_rnd2_win;
output wire	[3:0] player1_led;
output wire	[3:0] player2_led;

wire	[3:0] Bin;
wire	[3:0] gdfx_temp0;
wire	[3:0] gdfx_temp1;
wire	[3:0] num2_ten;
wire	[3:0] num_ten;
wire	outoutsum0;
wire	outoutsum1;
wire	outoutsum2;
wire	outoutsum20;
wire	outoutsum21;
wire	outoutsum22;
wire	outoutsum23;
wire	outoutsum24;
wire	outoutsum3;
wire	outoutsum4;
wire	[3:0] player1_cnt;
wire	[3:0] player2_cnt;
wire	[2:0] RGB;
wire	[4:0] sum2_ten;
wire	[4:0] sum_ten;
wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_100;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_101;
wire	[3:0] SYNTHESIZED_WIRE_102;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_103;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_104;
wire	[3:0] SYNTHESIZED_WIRE_12;
reg	SYNTHESIZED_WIRE_105;
wire	SYNTHESIZED_WIRE_106;
wire	SYNTHESIZED_WIRE_107;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_108;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_25;
wire	[3:0] SYNTHESIZED_WIRE_109;
wire	SYNTHESIZED_WIRE_27;
reg	SYNTHESIZED_WIRE_110;
wire	SYNTHESIZED_WIRE_28;
wire	[3:0] SYNTHESIZED_WIRE_111;
wire	[3:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	[3:0] SYNTHESIZED_WIRE_112;
wire	[3:0] SYNTHESIZED_WIRE_113;
wire	SYNTHESIZED_WIRE_34;
wire	[3:0] SYNTHESIZED_WIRE_114;
wire	SYNTHESIZED_WIRE_115;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	[3:0] SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_116;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_117;
wire	[3:0] SYNTHESIZED_WIRE_48;
wire	[3:0] SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	[3:0] SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_62;
wire	[3:0] SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_65;
wire	[3:0] SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_119;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_120;
wire	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_90;
wire	SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_96;
wire	SYNTHESIZED_WIRE_97;
wire	[3:0] SYNTHESIZED_WIRE_98;

assign	com2 = 1;
assign	com3 = 1;
assign	com4 = 1;
assign	com5 = 1;
assign	com6 = 1;
assign	com7 = 1;
assign	com1 = SYNTHESIZED_WIRE_110;
assign	player = SYNTHESIZED_WIRE_107;
assign	player2_rnd2_win = SYNTHESIZED_WIRE_96;
assign	player1_rnd2_win = SYNTHESIZED_WIRE_97;
assign	SYNTHESIZED_WIRE_28 = 0;
assign	SYNTHESIZED_WIRE_31 = 0;
assign	SYNTHESIZED_WIRE_34 = 0;
assign	SYNTHESIZED_WIRE_41 = 0;
assign	SYNTHESIZED_WIRE_58 = 0;
assign	SYNTHESIZED_WIRE_61 = 0;




BW	b2v_ins3333(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_0),
	.reg1(SYNTHESIZED_WIRE_100),
	.reg2(SYNTHESIZED_WIRE_2),
	.ce(SYNTHESIZED_WIRE_104),
	.one(SYNTHESIZED_WIRE_111),
	.ten(SYNTHESIZED_WIRE_112));
	defparam	b2v_ins3333.state1 = 0;
	defparam	b2v_ins3333.state2 = 1;


BW	b2v_ins3334(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_3),
	.reg1(SYNTHESIZED_WIRE_101),
	.reg2(SYNTHESIZED_WIRE_102),
	.ce(SYNTHESIZED_WIRE_117),
	.one(SYNTHESIZED_WIRE_118),
	.ten(SYNTHESIZED_WIRE_114));
	defparam	b2v_ins3334.state1 = 0;
	defparam	b2v_ins3334.state2 = 1;


five_counter	b2v_inst(
	.clk(SYNTHESIZED_WIRE_6),
	.rst(rst),
	.cnt5(player1_cnt[2:0]));


Four_bit_Register_v3	b2v_inst011(
	.ce(SYNTHESIZED_WIRE_103),
	.clk(clk),
	.rst_n(rst),
	.din(Bin),
	.out(SYNTHESIZED_WIRE_100));


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_105 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_105 <= SYNTHESIZED_WIRE_8;
	end
end

assign	SYNTHESIZED_WIRE_80 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;


Four_bit_Register_v3	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_104),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_12),
	.out(SYNTHESIZED_WIRE_113));

assign	SYNTHESIZED_WIRE_107 =  ~SYNTHESIZED_WIRE_105;


trigger	b2v_inst1113(
	.Din(sharp),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_108));


trigger	b2v_inst1114(
	.Din(SYNTHESIZED_WIRE_106),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_103));


trigger	b2v_inst1115(
	.Din(SYNTHESIZED_WIRE_107),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_0));


trigger	b2v_inst1116(
	.Din(SYNTHESIZED_WIRE_106),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_115));


trigger	b2v_inst1117(
	.Din(SYNTHESIZED_WIRE_105),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_3));


trigger	b2v_inst1118(
	.Din(SYNTHESIZED_WIRE_16),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_6));


trigger	b2v_inst1119(
	.Din(SYNTHESIZED_WIRE_17),
	.CLK(clk),
	.rst_n(rst),
	.Dout(SYNTHESIZED_WIRE_65));

assign	SYNTHESIZED_WIRE_22 = Keypad[0] | Keypad[2] | Keypad[1] | Keypad[3] | Keypad[5] | Keypad[4] | Keypad[6] | Keypad[7];


b2seg_bus	b2v_inst1121(
	.b_in(SYNTHESIZED_WIRE_18),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	SYNTHESIZED_WIRE_19 =  ~SYNTHESIZED_WIRE_105;


mx_2x1	b2v_inst12(
	.s_1(SYNTHESIZED_WIRE_19),
	.sel(SYNTHESIZED_WIRE_108),
	.s_0(SYNTHESIZED_WIRE_105),
	.m_out(SYNTHESIZED_WIRE_8));

assign	SYNTHESIZED_WIRE_106 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_107 & SYNTHESIZED_WIRE_104 & SYNTHESIZED_WIRE_25;


rnd2_ledcontrol	b2v_inst13(
	.reset(rst),
	.clock(clk),
	.inputten(SYNTHESIZED_WIRE_109),
	.ledstate(player1_led));
	defparam	b2v_inst13.state1 = 0;
	defparam	b2v_inst13.state2 = 1;
	defparam	b2v_inst13.state3 = 2;
	defparam	b2v_inst13.state4 = 3;
	defparam	b2v_inst13.state5 = 4;


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_110 <= 0;
	end
else
if (rst)
	begin
	SYNTHESIZED_WIRE_110 <= SYNTHESIZED_WIRE_27;
	end
end


mx_4bit_2x1	b2v_inst15(
	.ce(SYNTHESIZED_WIRE_110),
	.s0(player1_cnt),
	.s1(player2_cnt),
	.m_out(SYNTHESIZED_WIRE_18));




four_bit_ripple_carry_adder_v3	b2v_inst18(
	.C_in(SYNTHESIZED_WIRE_28),
	.A(SYNTHESIZED_WIRE_111),
	.B(SYNTHESIZED_WIRE_30),
	.Sum(sum_ten));


four_bit_ripple_carry_adder_v2	b2v_inst1818(
	.C_in(SYNTHESIZED_WIRE_31),
	.A(SYNTHESIZED_WIRE_112),
	.B(SYNTHESIZED_WIRE_113),
	
	.Sum(SYNTHESIZED_WIRE_43));


four_bit_ripple_carry_adder_v2	b2v_inst1819(
	.C_in(SYNTHESIZED_WIRE_34),
	.A(SYNTHESIZED_WIRE_114),
	.B(SYNTHESIZED_WIRE_109),
	
	.Sum(SYNTHESIZED_WIRE_63));




Four_bit_Register_v3	b2v_inst2020(
	.ce(SYNTHESIZED_WIRE_103),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_100),
	.out(SYNTHESIZED_WIRE_2));


Four_bit_Register_v3	b2v_inst2021(
	.ce(SYNTHESIZED_WIRE_115),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_101),
	.out(SYNTHESIZED_WIRE_102));


four_bit_ripple_carry_adder_v4	b2v_inst21(
	.C_in(SYNTHESIZED_WIRE_41),
	.carry(SYNTHESIZED_WIRE_42),
	.A(SYNTHESIZED_WIRE_43),
	
	.Sum(SYNTHESIZED_WIRE_12));

assign	Bin[3] = SYNTHESIZED_WIRE_116 & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_27 =  ~SYNTHESIZED_WIRE_110;

assign	SYNTHESIZED_WIRE_56 = Keypad[4] | Keypad[6] | Keypad[7] | Keypad[5];


four_bit_Register_v4	b2v_inst23(
	.ce(SYNTHESIZED_WIRE_104),
	.clk(clk),
	.rst_n(rst),
	.din(gdfx_temp1),
	.out(SYNTHESIZED_WIRE_30));

assign	SYNTHESIZED_WIRE_54 = Keypad[2] | Keypad[6] | Keypad[7] | Keypad[3];


assign	SYNTHESIZED_WIRE_45 = Keypad[9] | Keypad[8];

assign	com8 =  ~SYNTHESIZED_WIRE_110;


Four_bit_Register_v3	b2v_inst25(
	.ce(SYNTHESIZED_WIRE_117),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_48),
	.out(SYNTHESIZED_WIRE_109));

assign	SYNTHESIZED_WIRE_21 = Keypad[9] | Keypad[8];


Four_bit_Register_v3	b2v_inst253(
	.ce(SYNTHESIZED_WIRE_117),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_118),
	.out(SYNTHESIZED_WIRE_98));


assign	SYNTHESIZED_WIRE_57 = Keypad[1] | Keypad[5] | Keypad[7] | Keypad[3];


assign	Bin[0] = SYNTHESIZED_WIRE_116 & SYNTHESIZED_WIRE_52;

assign	Bin[1] = SYNTHESIZED_WIRE_116 & SYNTHESIZED_WIRE_54;

assign	Bin[2] = SYNTHESIZED_WIRE_116 & SYNTHESIZED_WIRE_56;

assign	SYNTHESIZED_WIRE_52 = Keypad[9] | SYNTHESIZED_WIRE_57;


four_bit_ripple_carry_adder_v3	b2v_inst32(
	.C_in(SYNTHESIZED_WIRE_58),
	.A(SYNTHESIZED_WIRE_118),
	.B(SYNTHESIZED_WIRE_60),
	.Sum(sum2_ten));



four_bit_ripple_carry_adder_v4	b2v_inst34(
	.C_in(SYNTHESIZED_WIRE_61),
	.carry(SYNTHESIZED_WIRE_62),
	.A(SYNTHESIZED_WIRE_63),
	
	.Sum(SYNTHESIZED_WIRE_48));


Four_bit_Register_v3	b2v_inst35(
	.ce(SYNTHESIZED_WIRE_115),
	.clk(clk),
	.rst_n(rst),
	.din(Bin),
	.out(SYNTHESIZED_WIRE_101));


five_counter	b2v_inst356(
	.clk(SYNTHESIZED_WIRE_65),
	.rst(rst),
	.cnt5(player2_cnt[2:0]));


four_bit_Register_v4	b2v_inst36(
	.ce(SYNTHESIZED_WIRE_117),
	.clk(clk),
	.rst_n(rst),
	.din(gdfx_temp0),
	.out(SYNTHESIZED_WIRE_60));



week3_3	b2v_inst371(
	.Player1(SYNTHESIZED_WIRE_67),
	.Player2(SYNTHESIZED_WIRE_112),
	.Eq(SYNTHESIZED_WIRE_119),
	.Gt(SYNTHESIZED_WIRE_10),
	.Ls(SYNTHESIZED_WIRE_73));

assign	SYNTHESIZED_WIRE_69 =  ~player1_cnt[1];

assign	SYNTHESIZED_WIRE_97 = player1_cnt[0] & SYNTHESIZED_WIRE_69 & player1_cnt[2];

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_119 & SYNTHESIZED_WIRE_71;

assign	SYNTHESIZED_WIRE_83 = SYNTHESIZED_WIRE_72 | SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_72 = SYNTHESIZED_WIRE_119 & SYNTHESIZED_WIRE_75;


rnd2_ledcontrol	b2v_inst45(
	.reset(rst),
	.clock(clk),
	.inputten(SYNTHESIZED_WIRE_113),
	.ledstate(player2_led));
	defparam	b2v_inst45.state1 = 0;
	defparam	b2v_inst45.state2 = 1;
	defparam	b2v_inst45.state3 = 2;
	defparam	b2v_inst45.state4 = 3;
	defparam	b2v_inst45.state5 = 4;

assign	SYNTHESIZED_WIRE_95 =  ~player2_cnt[1];


mapping	b2v_inst456(
	.one_in(sum2_ten),
	.one_out({outoutsum23,outoutsum22,outoutsum21,outoutsum20}));

assign	SYNTHESIZED_WIRE_79 = SYNTHESIZED_WIRE_119 & SYNTHESIZED_WIRE_78;

assign	SYNTHESIZED_WIRE_120 =  ~SYNTHESIZED_WIRE_79;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_80 & SYNTHESIZED_WIRE_120;

assign	SYNTHESIZED_WIRE_90 = SYNTHESIZED_WIRE_120 & SYNTHESIZED_WIRE_83;

assign	SYNTHESIZED_WIRE_116 =  ~Keypad[0];


rn2_fullcoler	b2v_inst51(
	.reset(rst),
	.clock(clk),
	.sharp(SYNTHESIZED_WIRE_108),
	.inputten(SYNTHESIZED_WIRE_102),
	.RGB(RGB));
	defparam	b2v_inst51.state1 = 0;
	defparam	b2v_inst51.state2 = 1;
	defparam	b2v_inst51.state3 = 2;


Four_bit_Register_v3	b2v_inst52(
	.ce(SYNTHESIZED_WIRE_117),
	.clk(clk),
	.rst_n(rst),
	.din(SYNTHESIZED_WIRE_114),
	.out(SYNTHESIZED_WIRE_67));


assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_107 & SYNTHESIZED_WIRE_104 & SYNTHESIZED_WIRE_90;


mapping	b2v_inst55(
	.one_in(sum_ten),
	.one_out({outoutsum3,outoutsum2,outoutsum1,outoutsum0}));




week3_3	b2v_inst571(
	.Player1(sum_ten[4:1]),
	.Player2(num_ten),
	.Eq(SYNTHESIZED_WIRE_92),
	.Gt(SYNTHESIZED_WIRE_91)
	);


week3_3	b2v_inst572(
	.Player1(sum2_ten[4:1]),
	.Player2(num2_ten),
	.Eq(SYNTHESIZED_WIRE_94),
	.Gt(SYNTHESIZED_WIRE_93)
	);

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_91 | SYNTHESIZED_WIRE_92;

assign	SYNTHESIZED_WIRE_62 = SYNTHESIZED_WIRE_93 | SYNTHESIZED_WIRE_94;

assign	SYNTHESIZED_WIRE_96 = player2_cnt[0] & SYNTHESIZED_WIRE_95 & player2_cnt[2];

assign	rnd2_done = SYNTHESIZED_WIRE_96 | SYNTHESIZED_WIRE_97;


week3_3	b2v_inst70(
	.Player1(SYNTHESIZED_WIRE_98),
	.Player2(SYNTHESIZED_WIRE_111),
	.Eq(SYNTHESIZED_WIRE_78),
	.Gt(SYNTHESIZED_WIRE_71),
	.Ls(SYNTHESIZED_WIRE_75));



assign	RED1 = RGB[2];
assign	RED2 = RGB[2];
assign	RED3 = RGB[2];
assign	RED4 = RGB[2];
assign	GREEN1 = RGB[1];
assign	GREEN2 = RGB[1];
assign	GREEN3 = RGB[1];
assign	GREEN4 = RGB[1];
assign	BLUE1 = RGB[0];
assign	BLUE2 = RGB[0];
assign	BLUE3 = RGB[0];
assign	BLUE4 = RGB[0];
assign	gdfx_temp0[0] = outoutsum20;
assign	gdfx_temp0[1] = outoutsum21;
assign	gdfx_temp0[2] = outoutsum22;
assign	gdfx_temp0[3] = outoutsum23;
assign	gdfx_temp1[0] = outoutsum0;
assign	gdfx_temp1[1] = outoutsum1;
assign	gdfx_temp1[2] = outoutsum2;
assign	gdfx_temp1[3] = outoutsum3;
assign	num2_ten[0] = 1;
assign	num2_ten[2] = 1;
assign	num_ten[0] = 1;
assign	num_ten[2] = 1;
assign	player1_cnt[3] = 0;
assign	player2_cnt[3] = 0;

endmodule
