module rnd2_point(
RESETN, CLK, LCD_E, LCD_RS, LCD_RW, LCD_DATA, rnd, p1, p2);

input RESETN, CLK;
input [3:0]rnd;
input [2:0]p1;
input [2:0]p2;
output LCD_E, LCD_RS, LCD_RW;
output [7:0]LCD_DATA;

wire LCD_E;
reg LCD_RS, LCD_RW;
reg [7:0]LCD_DATA;
reg [2:0]STATE;
parameter DELAY = 3'b000,	FUNCTION_SET = 3'b001,
			ENTRY_MODE = 3'b010, DISP_ONOFF = 3'b011,
			LINE1 = 3'b100, LINE2 = 3'b101,
			DELAY_T = 3'b110, CLEAR_DISP = 3'b111;
			
integer CNT;

always @(posedge RESETN or posedge CLK)
begin
	if(RESETN)	STATE = DELAY;
	else
		begin
			case (STATE)
				DELAY: if(CNT==70) STATE=FUNCTION_SET;
				FUNCTION_SET: if(CNT==30) STATE=DISP_ONOFF;
				DISP_ONOFF: if(CNT==30) STATE = ENTRY_MODE;
				ENTRY_MODE: if(CNT==30) STATE=LINE1;
				LINE1: if(CNT==20) STATE=LINE2;
				LINE2: if(CNT==20) STATE=DELAY_T;
				DELAY_T: if(CNT==400) STATE = CLEAR_DISP;
				CLEAR_DISP: if(CNT==200) STATE=LINE1;
				default: STATE=DELAY;
			endcase
		end
end

always @(posedge RESETN or posedge CLK)
begin
	if(RESETN) CNT = 0;
	else
		begin
			case(STATE)
				DELAY: if(CNT>=70) CNT = 0;
						else CNT = CNT+1;
				FUNCTION_SET: if(CNT>=30) CNT = 0;
									else CNT = CNT + 1;
				DISP_ONOFF: if(CNT>=30) CNT = 0;
								else CNT = CNT+1;
				ENTRY_MODE: if(CNT>=30) CNT = 0;
								else CNT = CNT+1;
				LINE1: if(CNT>=20) CNT = 0;
								else CNT = CNT+1;
				LINE2: if(CNT>=20) CNT = 0;
								else CNT = CNT+1;
				DELAY_T: if(CNT>=400) CNT = 0;
								else CNT = CNT+1;
				CLEAR_DISP: if(CNT>=200) CNT = 0;
								else CNT = CNT+1;
				default: CNT=0;
			endcase
		end
end

always @(posedge RESETN or posedge CLK)
begin
	if(RESETN) begin
		LCD_RS = 1'b1;
		LCD_RW = 1'b1;
		LCD_DATA = 8'b00000000;
		end
	else begin
		case(STATE)
			FUNCTION_SET: begin
				LCD_RS = 1'b0; LCD_RW = 1'b0;
				LCD_DATA = 8'b00111100;
				end
			DISP_ONOFF: begin
				LCD_RS = 1'b0; LCD_RW = 1'b0;
				LCD_DATA = 8'b00001100;
				end
			ENTRY_MODE: begin
				LCD_RS = 1'b0; LCD_RW = 1'b0;
				LCD_DATA = 8'b00000110;
				end
			LINE1: begin
				LCD_RW = 1'b0;
				
				case(CNT)
					0:begin
						LCD_RS = 1'b0; LCD_DATA = 8'b10000000;
						end
					1:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					2:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					3:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					4:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b01010010;
						end
					5:begin
                    if ((rnd[3:0] == 4'b000)) begin // rnd == 0
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110000;
							end
                    else if ((rnd[3:0] == 4'b0001)) begin // rnd == 1
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110001;
							end
                    else if ((rnd[3:0] == 4'b0010)) begin // rnd == 2
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110010;
							end
                    else if ((rnd[3:0] == 4'b0011)) begin // rnd == 3
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110011;
							end
                    else if ((rnd[3:0] == 4'b0100)) begin // rnd == 4
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110100;
							end
                    else if ((rnd[3:0] == 4'b0101)) begin // rnd == 5
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110101;
							end							
                    else if ((rnd[3:0] == 4'b0110)) begin // rnd == 6
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110110;
							end							
                    else if ((rnd[3:0] == 4'b0111)) begin // rnd == 7
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110111;
							end
                    else if ((rnd[3:0] == 4'b1000)) begin // rnd == 8
                        LCD_RS = 1'b1; LCD_DATA = 8'b00111000;
							end
                    else if ((rnd[3:0] == 4'b1001)) begin // rnd == 9
                        LCD_RS = 1'b1; LCD_DATA = 8'b00111001;
							end							
                    else begin // rnd != 0 ~ 9
								LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
							end
						end
					6:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b00101110;
						end
					7:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					8:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b00110001;
						end
					9:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b01010000;
						end
					10:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					11:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b00111010;
						end
					12:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					13:begin
                    if ((p1[2:0] == 3'b000)) begin // p1 == 0
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110000;
							end
                    else if ((p1[2:0] == 3'b001)) begin // p1 == 1
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110001;
							end
                    else if ((p1[2:0] == 3'b010)) begin // p1 == 2
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110010;
							end
                    else if ((p1[2:0] == 3'b011)) begin // p1 == 3
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110011;
							end
                    else if ((p1[2:0] == 3'b100)) begin // p1 == 4
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110100;
							end
                    else if ((p1[2:0] == 3'b101)) begin // p1 == 5
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110101;
							end													
                    else begin // p1 != 0 ~ 5
								LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
							end
						end
					14:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					15:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					16:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					default:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					endcase
				end
			LINE2: begin
				
				LCD_RW = 1'b0;
				
				case(CNT)
					0:begin
						LCD_RS = 1'b0; LCD_DATA = 8'b11000000;
					end
					1:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
					end
					2:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					3:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					4:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b01110110;
						end
					5:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b01110011;
						end
					6:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					7:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b00110010;
						end
					8:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b01010000;
						end
					9:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					10:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b00111010;
						end
					11:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					12:begin
                    if ((p2[2:0] == 3'b000)) begin // p2 == 0
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110000;
							end
                    else if ((p2[2:0] == 3'b001)) begin // p2 == 1
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110001;
							end
                    else if ((p2[2:0] == 3'b010)) begin // p2 == 2
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110010;
							end
                    else if ((p2[2:0] == 3'b011)) begin // p2 == 3
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110011;
							end
                    else if ((p2[2:0] == 3'b100)) begin // p2 == 4
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110100;
							end
                    else if ((p2[2:0] == 3'b101)) begin // p2 == 5
                        LCD_RS = 1'b1; LCD_DATA = 8'b00110101;
							end													
                    else begin // p2 != 0 ~ 5
								LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
							end
						end
					13:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					14:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					15:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					16:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					default:begin
						LCD_RS = 1'b1; LCD_DATA = 8'b10000000;
						end
					endcase
				end
			DELAY_T:begin
				LCD_RS = 1'b0; LCD_RW=1'b0;
				LCD_DATA = 8'b00000010;
				end
			CLEAR_DISP:begin
				LCD_RS = 1'b0; LCD_RW=1'b0;
				LCD_DATA = 8'b00000001;
				end
			default: begin
				LCD_RS = 1'b1; LCD_RW=1'b1;
				LCD_DATA = 8'b00000000  ;
				end
			endcase
		end
	end
	
	assign LCD_E = CLK;
	
	endmodule