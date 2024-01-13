`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 11:50:39
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk,w,R,E,L;
    wire Q;
    des dut(.clk(clk),.w(w),.R(R),.E(E),.L(L),.Q(Q));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%t w=%b R=%b E=%d L=%d Q=%b",$time,w,R,E,L,Q);
    clk<=0;
    w<=12;
    R<=69;
    E<=1;
    L<=1;
    #6 E<=0;
    #10 L<=0;
    #100 $finish;
    end
endmodule
