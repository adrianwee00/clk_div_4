`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2024 09:46:14 PM
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
    reg clk, rst;
    wire out;
    clk_div_4 inst(.clk(clk), .rst(rst), .clk_o(out));
    always #10 clk = ~clk;
    initial begin 
    rst = 0;
    clk = 0;
    #15;
    rst = 1;
    #15;
    rst = 0;
    #100;
    end
endmodule
