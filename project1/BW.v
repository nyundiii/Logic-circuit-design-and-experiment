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
// Created on Tue Dec 21 13:41:05 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module BW (
    reset,clock,sharp,reg1,reg2,
    ten,one,ce);

    input reset;
    input clock;
    input sharp;
    input [3:0] reg1;
    input [3:0] reg2;
    tri0 reset;
    tri0 sharp;
    tri0 [3:0] reg1;
    tri0 [3:0] reg2;
    output [3:0] ten;
    output [3:0] one;
    output ce;
    reg [3:0] ten;
    reg [3:0] one;
    reg ce;
    reg [1:0] fstate;
    reg [1:0] reg_fstate;
    parameter state1=0,state2=1;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or sharp or reg1 or reg2)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            ten <= 4'b0000;
            one <= 4'b0000;
            ce <= 1'b0;
        end
        else begin
            ten <= 4'b0000;
            one <= 4'b0000;
            ce <= 1'b0;
            case (fstate)
                state1: begin
                    if ((sharp == 1'b0))
                        reg_fstate <= state1;
                    else if ((sharp == 1'b1))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    ten <= 4'b0000;

                    ce <= 1'b0;

                    one <= 4'b0000;
                end
                state2: begin
                    if ((sharp == 1'b1))
                        reg_fstate <= state2;
                    else if ((sharp == 1'b0))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    ten <= reg2[3:0];

                    ce <= 1'b1;

                    one <= reg1[3:0];
                end
                default: begin
                    ten <= 4'bxxxx;
                    one <= 4'bxxxx;
                    ce <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // BW
