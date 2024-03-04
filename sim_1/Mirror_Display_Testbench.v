`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2024 08:59:34 AM
// Design Name: 
// Module Name: Mirror_Display_Testbench
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


module Mirror_Display_Testbench(

    );
    
    reg [7:0] Temperature;
    reg [7:0] Avg_mpg;
    reg [7:0] Instant_mpg;
    reg [7:0] Miles_remaining;
    reg [1:0] SS;
    wire [7:0] Display;
    
Mirror_Display_1 U0(Temperature, Avg_mpg, Instant_mpg, Miles_remaining, SS, Display);
    
    initial begin
        Temperature = 8'b0;
        Avg_mpg = 8'b10011000;
        Instant_mpg = 8'b00010010;
        Miles_remaining = 8'b1111000;
        SS = 2'b00;
        #100;
                Avg_mpg = 8'b10011000;
                Instant_mpg = 8'b10010010;
                Miles_remaining = 8'b00001111;
                SS = 2'b11;
            #1000;
        end
endmodule   
