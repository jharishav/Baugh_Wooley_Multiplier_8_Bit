`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT_Patna
// Engineer: Rishav
// 
// Create Date: 08.02.2025 18:08:23
// Design Name: 
// Module Name: Baugh_Wooley_Multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: module Yellow_Box(X,Y,Ci,Si,So,Co); module Brown_Box(X,Y,Ci,Si,So,Co);
// 
//////////////////////////////////////////////////////////////////////////////////


module Baugh_Wooley_Multiplier(Multiplier,Multiplicand,Product); 

input [7:0] Multiplier,Multiplicand;
output [15:0] Product;
wire [63:0] carry_propagate;
wire [55:0] sum_propagate;
wire [7:0] adder_carry_propagate;

parameter zero = 1'b0;
parameter one = 1'b1;

Yellow_Box row0col0(Multiplier[0],Multiplicand[0],zero,zero,Product[0],carry_propagate[0]);
Yellow_Box row0col1(Multiplier[1],Multiplicand[0],zero,zero,sum_propagate[0],carry_propagate[1]);
Yellow_Box row0col2(Multiplier[2],Multiplicand[0],zero,zero,sum_propagate[1],carry_propagate[2]);
Yellow_Box row0col3(Multiplier[3],Multiplicand[0],zero,zero,sum_propagate[2],carry_propagate[3]);
Yellow_Box row0col4(Multiplier[4],Multiplicand[0],zero,zero,sum_propagate[3],carry_propagate[4]);
Yellow_Box row0col5(Multiplier[5],Multiplicand[0],zero,zero,sum_propagate[4],carry_propagate[5]);
Yellow_Box row0col6(Multiplier[6],Multiplicand[0],zero,zero,sum_propagate[5],carry_propagate[6]);
Brown_Box  row0col7(Multiplier[7],Multiplicand[0],zero,zero,sum_propagate[6],carry_propagate[7]);


Yellow_Box row1col0(Multiplier[0],Multiplicand[1],carry_propagate[0],sum_propagate[0],Product[1],carry_propagate[8]);
Yellow_Box row1col1(Multiplier[1],Multiplicand[1],carry_propagate[1],sum_propagate[1],sum_propagate[7],carry_propagate[9]);
Yellow_Box row1col2(Multiplier[2],Multiplicand[1],carry_propagate[2],sum_propagate[2],sum_propagate[8],carry_propagate[10]);
Yellow_Box row1col3(Multiplier[3],Multiplicand[1],carry_propagate[3],sum_propagate[3],sum_propagate[9],carry_propagate[11]);
Yellow_Box row1col4(Multiplier[4],Multiplicand[1],carry_propagate[4],sum_propagate[4],sum_propagate[10],carry_propagate[12]);
Yellow_Box row1col5(Multiplier[5],Multiplicand[1],carry_propagate[5],sum_propagate[5],sum_propagate[11],carry_propagate[13]);
Yellow_Box row1col6(Multiplier[6],Multiplicand[1],carry_propagate[6],sum_propagate[6],sum_propagate[12],carry_propagate[14]);
Brown_Box  row1col7(Multiplier[7],Multiplicand[1],carry_propagate[7],zero,sum_propagate[13],carry_propagate[15]);


Yellow_Box row2col0(Multiplier[0],Multiplicand[2],carry_propagate[8],sum_propagate[7],Product[2],carry_propagate[16]);
Yellow_Box row2col1(Multiplier[1],Multiplicand[2],carry_propagate[9],sum_propagate[8],sum_propagate[14],carry_propagate[17]);
Yellow_Box row2col2(Multiplier[2],Multiplicand[2],carry_propagate[10],sum_propagate[9],sum_propagate[15],carry_propagate[18]);
Yellow_Box row2col3(Multiplier[3],Multiplicand[2],carry_propagate[11],sum_propagate[10],sum_propagate[16],carry_propagate[19]);
Yellow_Box row2col4(Multiplier[4],Multiplicand[2],carry_propagate[12],sum_propagate[11],sum_propagate[17],carry_propagate[20]);
Yellow_Box row2col5(Multiplier[5],Multiplicand[2],carry_propagate[13],sum_propagate[12],sum_propagate[18],carry_propagate[21]);
Yellow_Box row2col6(Multiplier[6],Multiplicand[2],carry_propagate[14],sum_propagate[13],sum_propagate[19],carry_propagate[22]);
Brown_Box  row2col7(Multiplier[7],Multiplicand[2],carry_propagate[15],zero,sum_propagate[20],carry_propagate[23]);


Yellow_Box row3col0(Multiplier[0],Multiplicand[3],carry_propagate[16],sum_propagate[14],Product[3],carry_propagate[24]);
Yellow_Box row3col1(Multiplier[1],Multiplicand[3],carry_propagate[17],sum_propagate[15],sum_propagate[21],carry_propagate[25]);
Yellow_Box row3col2(Multiplier[2],Multiplicand[3],carry_propagate[18],sum_propagate[16],sum_propagate[22],carry_propagate[26]);
Yellow_Box row3col3(Multiplier[3],Multiplicand[3],carry_propagate[19],sum_propagate[17],sum_propagate[23],carry_propagate[27]);
Yellow_Box row3col4(Multiplier[4],Multiplicand[3],carry_propagate[20],sum_propagate[18],sum_propagate[24],carry_propagate[28]);
Yellow_Box row3col5(Multiplier[5],Multiplicand[3],carry_propagate[21],sum_propagate[19],sum_propagate[25],carry_propagate[29]);
Yellow_Box row3col6(Multiplier[6],Multiplicand[3],carry_propagate[22],sum_propagate[20],sum_propagate[26],carry_propagate[30]);
Brown_Box  row3col7(Multiplier[7],Multiplicand[3],carry_propagate[23],zero,sum_propagate[27],carry_propagate[31]);


Yellow_Box row4col0(Multiplier[0],Multiplicand[4],carry_propagate[24],sum_propagate[21],Product[4],carry_propagate[32]);
Yellow_Box row4col1(Multiplier[1],Multiplicand[4],carry_propagate[25],sum_propagate[22],sum_propagate[28],carry_propagate[33]);
Yellow_Box row4col2(Multiplier[2],Multiplicand[4],carry_propagate[26],sum_propagate[23],sum_propagate[29],carry_propagate[34]);
Yellow_Box row4col3(Multiplier[3],Multiplicand[4],carry_propagate[27],sum_propagate[24],sum_propagate[30],carry_propagate[35]);
Yellow_Box row4col4(Multiplier[4],Multiplicand[4],carry_propagate[28],sum_propagate[25],sum_propagate[31],carry_propagate[36]);
Yellow_Box row4col5(Multiplier[5],Multiplicand[4],carry_propagate[29],sum_propagate[26],sum_propagate[32],carry_propagate[37]);
Yellow_Box row4col6(Multiplier[6],Multiplicand[4],carry_propagate[30],sum_propagate[27],sum_propagate[33],carry_propagate[38]);
Brown_Box  row4col7(Multiplier[7],Multiplicand[4],carry_propagate[31],zero,sum_propagate[34],carry_propagate[39]);

Yellow_Box row5col0(Multiplier[0],Multiplicand[5],carry_propagate[32],sum_propagate[28],Product[5],carry_propagate[40]);
Yellow_Box row5col1(Multiplier[1],Multiplicand[5],carry_propagate[33],sum_propagate[29],sum_propagate[35],carry_propagate[41]);
Yellow_Box row5col2(Multiplier[2],Multiplicand[5],carry_propagate[34],sum_propagate[30],sum_propagate[36],carry_propagate[42]);
Yellow_Box row5col3(Multiplier[3],Multiplicand[5],carry_propagate[35],sum_propagate[31],sum_propagate[37],carry_propagate[43]);
Yellow_Box row5col4(Multiplier[4],Multiplicand[5],carry_propagate[36],sum_propagate[32],sum_propagate[38],carry_propagate[44]);
Yellow_Box row5col5(Multiplier[5],Multiplicand[5],carry_propagate[37],sum_propagate[33],sum_propagate[39],carry_propagate[45]);
Yellow_Box row5col6(Multiplier[6],Multiplicand[5],carry_propagate[38],sum_propagate[34],sum_propagate[40],carry_propagate[46]);
Brown_Box  row5col7(Multiplier[7],Multiplicand[5],carry_propagate[39],zero,sum_propagate[41],carry_propagate[47]);


Yellow_Box row6col0(Multiplier[0],Multiplicand[6],carry_propagate[40],sum_propagate[35],Product[6],carry_propagate[48]);
Yellow_Box row6col1(Multiplier[1],Multiplicand[6],carry_propagate[41],sum_propagate[36],sum_propagate[42],carry_propagate[49]);
Yellow_Box row6col2(Multiplier[2],Multiplicand[6],carry_propagate[42],sum_propagate[37],sum_propagate[43],carry_propagate[50]);
Yellow_Box row6col3(Multiplier[3],Multiplicand[6],carry_propagate[43],sum_propagate[38],sum_propagate[44],carry_propagate[51]);
Yellow_Box row6col4(Multiplier[4],Multiplicand[6],carry_propagate[44],sum_propagate[39],sum_propagate[45],carry_propagate[52]);
Yellow_Box row6col5(Multiplier[5],Multiplicand[6],carry_propagate[45],sum_propagate[40],sum_propagate[46],carry_propagate[53]);
Yellow_Box row6col6(Multiplier[6],Multiplicand[6],carry_propagate[46],sum_propagate[41],sum_propagate[47],carry_propagate[54]);
Brown_Box  row6col7(Multiplier[7],Multiplicand[6],carry_propagate[47],zero,sum_propagate[48],carry_propagate[55]);

Brown_Box  row7col0(Multiplier[0],Multiplicand[7],carry_propagate[48],sum_propagate[42],Product[7],carry_propagate[56]);
Brown_Box  row7col1(Multiplier[1],Multiplicand[7],carry_propagate[49],sum_propagate[43],sum_propagate[49],carry_propagate[57]);
Brown_Box  row7col2(Multiplier[2],Multiplicand[7],carry_propagate[50],sum_propagate[44],sum_propagate[50],carry_propagate[58]);
Brown_Box  row7col3(Multiplier[3],Multiplicand[7],carry_propagate[51],sum_propagate[45],sum_propagate[51],carry_propagate[59]);
Brown_Box  row7col4(Multiplier[4],Multiplicand[7],carry_propagate[52],sum_propagate[46],sum_propagate[52],carry_propagate[60]);
Brown_Box  row7col5(Multiplier[5],Multiplicand[7],carry_propagate[53],sum_propagate[47],sum_propagate[53],carry_propagate[61]);
Brown_Box  row7col6(Multiplier[6],Multiplicand[7],carry_propagate[54],sum_propagate[48],sum_propagate[54],carry_propagate[62]);
Yellow_Box row7col7(Multiplier[7],Multiplicand[7],carry_propagate[55],zero,sum_propagate[55],carry_propagate[63]);


Full_Adder add0(carry_propagate[56],sum_propagate[49],one,Product[8],adder_carry_propagate[0]);
Full_Adder add1(carry_propagate[57],sum_propagate[50],adder_carry_propagate[0],Product[9],adder_carry_propagate[1]);
Full_Adder add2(carry_propagate[58],sum_propagate[51],adder_carry_propagate[1],Product[10],adder_carry_propagate[2]);
Full_Adder add3(carry_propagate[59],sum_propagate[52],adder_carry_propagate[2],Product[11],adder_carry_propagate[3]);
Full_Adder add4(carry_propagate[60],sum_propagate[53],adder_carry_propagate[3],Product[12],adder_carry_propagate[4]);
Full_Adder add5(carry_propagate[61],sum_propagate[54],adder_carry_propagate[4],Product[13],adder_carry_propagate[5]);
Full_Adder add6(carry_propagate[62],sum_propagate[55],adder_carry_propagate[5],Product[14],adder_carry_propagate[6]);
Full_Adder add7(carry_propagate[63],one,adder_carry_propagate[6],Product[15],adder_carry_propagate[7]);


endmodule
