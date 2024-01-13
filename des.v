`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 11:42:48
// Design Name: 
// Module Name: des
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
module mux(input a0,a1,sel,output q);
assign q=(a0 & (~sel))|(a1 & (sel));
endmodule
module des(
    input clk,
    input w, R, E, L,
    output reg Q
    );
    wire w1,w2;
    mux m1(Q,w,E,w1);
    mux m2(w1,R,L,w2);
    always @ (posedge clk) begin
    Q<=w2;
    end
endmodule
