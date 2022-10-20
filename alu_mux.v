`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 04:13:46 PM
// Design Name: 
// Module Name: alu_mux
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


module alu_mux(
input[7:0] j,
input[7:0] k,
input[7:0] l,
input[7:0] m,
input[1:0] S,
output[7:0]Y
    );
    
reg[7:0] y_int;
always@(*) begin
    case(S)
        2'b00: y_int = j;
        2'b01: y_int = k;
        2'b10: y_int = l;
        2'b11: y_int = m;
        endcase
     end
        
      assign Y = y_int;
    
endmodule
