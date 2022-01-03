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
// Created on Wed Dec 08 17:08:38 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module con2 (
    reset,clock,random,trigger,final1,
    final2,En);

    input reset;
    input clock;
    input [3:0] random;
    input trigger;
    input [3:0] final1;
    tri reset;
    tri [3:0] random;
    tri trigger;
    tri [3:0] final1;
    output [3:0] final2;
    output En;
	 reg [3:0] temprandom;
    reg [3:0] final2;
    reg En;
    reg [3:0] fstate;
    reg [3:0] reg_fstate;
    parameter state3=0,state1=1,state2=2,state4=3;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or random or trigger or final1)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            final2 <= 4'b0000;
            En <= 1'b0;
        end
        else begin
            final2 <= 4'b0000;
            En <= 1'b0;
            case (fstate)
                state3: begin
                    if ((final1[3:0] != 4'b0000))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    En <= 1'b0;

                    final2 <= 4'b0000;
                end
                state1: begin
                    if (((trigger == 1'b0) | (final1[3:0] == 4'b0000)))
                        reg_fstate <= state1;
                    else if (((trigger == 1'b1) & (final1[3:0] != 4'b0000)))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    En <= 1'b0;

                    final2 <= 4'b0000;
                end
                state2: begin
							temprandom[3:0] <= random[3:0];
                    if (((temprandom[3:0] < 4'b1011) & (temprandom[3:0] != final1[3:0])))
                        reg_fstate <= state3;
                    else if (((temprandom[3:0] >= 4'b1011) | (temprandom[3:0] == final1[3:0])))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    En <= 1'b1;

                    final2 <= temprandom[3:0];
                end
                state4: begin
                    if ((final1[3:0] != 4'b0000))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    En <= 1'b0;

                    final2 <= 4'b0000;
                end
                default: begin
                    final2 <= 4'bxxxx;
                    En <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // con2