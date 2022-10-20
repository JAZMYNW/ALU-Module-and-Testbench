`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 12:48:52 PM
// Design Name: 
// Module Name: alu
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


`timescale 1ns / 1ps

// EC-311 Lab-1 Part-2
  // The names of the variables are as described in the lab handout

module alu #
(
  parameter INPUT_WIDTH = 4,
  parameter OUTPUT_WIDTH = 8,
  parameter SELECT_WIDTH = 2
)
(
  // The inputs 
  input wire [INPUT_WIDTH-1:0]      A,
  input wire [INPUT_WIDTH-1:0]      B,
  input wire [SELECT_WIDTH-1:0]     S,

  // The outputs
  output wire [OUTPUT_WIDTH-1:0]           Y

);
wire[7:0] j;
wire[7:0] k;
wire[7:0] l;
wire[7:0] m;
alu_adder add(A,B,j)   ;
alu_multiplier multi(A,B,k);
alu_shifter shift(A,B,l);
alu_conc conc (A,B,m);
alu_mux m1(j,k,l,m,S,Y);


endmodule


