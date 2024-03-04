`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2024 08:51:32 AM
// Design Name: 
// Module Name: Mirror_Display_1
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


module Mirror_Display_1(
    input wire [7:0] Temperature,
    input wire [7:0] Avg_mpg,
    input wire [7:0] Instant_mpg,
    input wire [7:0] Miles_remaining,
    input wire [1:0] SS,
    output reg [7:0] Display
    );
    
    always @(*)
    case(SS)
    0: Display = Temperature;
    1: Display = Avg_mpg;
    2: Display = Instant_mpg;
    3: Display = Miles_remaining;
    endcase
    
endmodule
