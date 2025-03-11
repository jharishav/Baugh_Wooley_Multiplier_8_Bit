`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2025 17:54:01
// Design Name: 
// Module Name: Brown_Box
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


module Brown_Box(X,Y,Ci,Si,So,Co);

input X,Y,Ci,Si;
output So,Co;

wire w1;

nand(w1,X,Y);

Full_Adder add(w1,Ci,Si,So,Co);

endmodule
