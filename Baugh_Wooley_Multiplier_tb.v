`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Patna
// Engineer: Rishav
// 
// Create Date: 11.03.2025 00:40:20
// Design Name: 
// Module Name: Baugh_Wooley_Multiplier_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Baugh_Wooley_Multiplier_tb();

reg [7:0] Multiplier, Multiplicand;
wire [15:0] Product;

Baugh_Wooley_Multiplier uut(Multiplier,Multiplicand,Product);

initial 
            begin
            Multiplier = 8'd253; Multiplicand = 8'd253;
            #20 Multiplier = 8'd100; Multiplicand = 8'd101;
            #20 Multiplier = 8'd100; Multiplicand = 8'd102;
            #20 Multiplier = 8'd131; Multiplicand = 8'd165;
            #20 Multiplier = 8'd169; Multiplicand = 8'd216;
            #20 Multiplier = 8'd215; Multiplicand = 8'd193;
            #20 $finish;
            end
endmodule
