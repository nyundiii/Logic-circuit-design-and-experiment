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
// Created on Wed Dec 22 11:32:47 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module rn2_fullcoler (
    reset,clock,inputten,sharp,
    RGB);

    input reset;
    input clock;
    input [3:0] inputten;
	 input sharp;
    tri0 reset;
    tri0 [3:0] inputten;
    tri0 player;
	 tri0 sharp;
    output [2:0] RGB;
    reg [2:0] RGB;
    reg [4:0] fstate;
    reg [4:0] reg_fstate;
    parameter state1=0,state2=1,state3=2;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or inputten or sharp)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            RGB <= 3'b000;
        end
        else begin
            RGB <= 3'b000;
            case (fstate)
                state1: begin
                    if (((inputten[3:0] > 4'b0000) & (sharp == 1'b1)))
                        reg_fstate <= state2;
                    else if (((inputten[3:0] <= 4'b0000) & (sharp == 1'b1)))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    RGB <= 3'b000;
                end
                state2: begin
                    // Inserting 'else' block to prevent latch inference
                    if (((inputten[3:0] <= 4'b0000) & (sharp == 1'b1)))
                        reg_fstate <= state3;
							else
								reg_fstate <= state2;
								
							RGB <= 3'b111;
                end
                state3: begin
                    if((inputten[3:0] > 4'b0000) & (sharp == 1'b1))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
							else
								reg_fstate <= state3;
								
							RGB <= 3'b101;
                end
             
                default: begin
                    RGB <= 3'bxxx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // rn2_fullcoler