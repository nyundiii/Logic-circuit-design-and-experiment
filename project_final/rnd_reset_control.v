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

// Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
// Created on Thu Dec 23 02:23:38 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module rnd_reset_control (
    reset,clock,dip_sw_8,rnd1_done,rnd2_done,
    rnd1_rs,rnd2_rs,rnd3_rs,round);

    input reset;
    input clock;
    input dip_sw_8;
    input rnd1_done;
    input rnd2_done;
    tri reset;
    tri dip_sw_8;
    tri rnd1_done;
    tri rnd2_done;
    output rnd1_rs;
    output rnd2_rs;
    output rnd3_rs;
    output [1:0] round;
    reg rnd1_rs;
    reg rnd2_rs;
    reg rnd3_rs;
    reg [1:0] round;
    reg [3:0] fstate;
    reg [3:0] reg_fstate;
    parameter state1=0,state2=1,state3=2,state4=3;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or dip_sw_8 or rnd1_done or rnd2_done)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            rnd1_rs <= 1'b0;
            rnd2_rs <= 1'b0;
            rnd3_rs <= 1'b0;
            round <= 2'b00;
        end
        else begin
            rnd1_rs <= 1'b0;
            rnd2_rs <= 1'b0;
            rnd3_rs <= 1'b0;
            round <= 2'b00;
            case (fstate)
                state1: begin
                    if ((dip_sw_8 == 1'b0))
                        reg_fstate <= state1;
                    else if ((dip_sw_8 == 1'b1))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    rnd2_rs <= 1'b0;

                    round <= 2'b00;

                    rnd3_rs <= 1'b0;

                    rnd1_rs <= 1'b1;
                end
                state2: begin
                    if ((dip_sw_8 == 1'b0))
                        reg_fstate <= state1;
                    else if (((dip_sw_8 == 1'b1) & (rnd1_done == 1'b0)))
                        reg_fstate <= state2;
                    else if (((dip_sw_8 == 1'b1) & (rnd1_done == 1'b1)))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    rnd2_rs <= 1'b0;

                    round <= 2'b00;

                    rnd3_rs <= 1'b0;

                    rnd1_rs <= 1'b1;
                end
                state3: begin
                    if (((dip_sw_8 == 1'b1) & (rnd2_done == 1'b0)))
                        reg_fstate <= state3;
                    else if ((dip_sw_8 == 1'b0))
                        reg_fstate <= state1;
                    else if (((dip_sw_8 == 1'b1) & (rnd2_done == 1'b1)))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    rnd2_rs <= 1'b1;

                    round <= 2'b01;

                    rnd3_rs <= 1'b0;

                    rnd1_rs <= 1'b0;
                end
                state4: begin
                    if ((dip_sw_8 == 1'b1))
                        reg_fstate <= state4;
                    else if ((dip_sw_8 == 1'b0))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    rnd2_rs <= 1'b0;

                    round <= 2'b10;

                    rnd3_rs <= 1'b1;

                    rnd1_rs <= 1'b0;
                end
                default: begin
                    rnd1_rs <= 1'bx;
                    rnd2_rs <= 1'bx;
                    rnd3_rs <= 1'bx;
                    round <= 2'bxx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // rnd_reset_control
