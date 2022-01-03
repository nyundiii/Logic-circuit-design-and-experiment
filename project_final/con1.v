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
// Created on Wed Dec 08 17:09:40 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module con1 (
    reset,clock,random,trigger,
    final1,En);

    input reset;
    input clock;
    input [3:0] random;
    input trigger;
    tri reset;
    tri [3:0] random;
    tri trigger;
    output [3:0] final1;
    output En;
	 reg [3:0] temprandom;
    reg [3:0] final1;
    reg En;
    reg [3:0] fstate;
    reg [3:0] reg_fstate;
    parameter state1=0,state2=1,state3=2,state4=3;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or random or trigger)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            final1 <= 4'b0000;
            En <= 1'b0;
        end
        else begin
            final1 <= 4'b0000;
            En <= 1'b0;
            case (fstate)
                state1: begin
                    if ((trigger == 1'b0))
                        reg_fstate <= state1;
                    else if ((trigger == 1'b1))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    En <= 1'b0;

                    final1 <= 4'b0000;
                end
                state2: begin
							temprandom[3:0] <= random[3:0];
                    if ((temprandom[3:0] < 4'd11)) begin
								 
                        reg_fstate <= state3;
							end
                    else if ((temprandom[3:0] >= 4'd11))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    En <= 1'b1;

                    final1 <= temprandom[3:0];
                end
                state3: begin
                    if ((random[3:0] != 4'b0000))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    En <= 1'b0;

                    final1 <= 4'b0000;
                end
                state4: begin
                    if ((random[3:0] != 4'b0000))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    En <= 1'b0;

                    final1 <= 4'b0000;
                end
                default: begin
                    final1 <= 4'bxxxx;
                    En <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // con1
