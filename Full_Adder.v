`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT_Patna
// Engineer: Rishav
// 
// Create Date: 08.02.2025 17:45:44
// Design Name: 
// Module Name: Full_Adder
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
module Full_Adder(A,B,CIn,Sum,C_out);

input A,B,CIn;
output Sum,C_out;

assign Sum = A ^ B ^ CIn;
assign C_out = (A & B) | (B & CIn) | (A & CIn);

endmodule