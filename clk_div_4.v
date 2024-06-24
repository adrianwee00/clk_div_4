`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2024 09:42:03 PM
// Design Name: 
// Module Name: clk_div_4
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


module clk_div_4(
	input clk, rst,
	output reg clk_o
    );
    reg clk_2;
    always @(posedge clk or posedge rst) begin 
    	if (rst) 
    		clk_2 <= 1'b0;
    	else 
    		clk_2 <= ~clk_2;
    end
    
    always @(posedge clk_2 or posedge rst) begin 
    	if (rst)
    		clk_o <= 1'b0;
    	else
    		clk_o <= ~clk_o;
    end
endmodule
