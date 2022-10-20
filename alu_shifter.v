`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 01:04:21 PM
// Design Name: 
// Module Name: alu_shifter
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


module alu_shifter(
    input[3:0] B,
    input[3:0] A,
    output[7:0] out
    );
    assign out = A<<B;
endmodule
