`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 12:20:02
// Design Name: 
// Module Name: bit_2_comparator_tb
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




module bit_2_comparator_tb;

reg [1:0] A;
reg [1:0] B;

wire A_gt_B;
wire A_eq_B;
wire A_lt_B;

bit_2_comparator uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin
    $display("A B | GT EQ LT");
    $monitor("%b %b | %b  %b  %b",
              A, B, A_gt_B, A_eq_B, A_lt_B);

    A = 2'b00; B = 2'b00; #10;
    A = 2'b01; B = 2'b00; #10;
    A = 2'b10; B = 2'b11; #10;
    A = 2'b11; B = 2'b10; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b00; B = 2'b11; #10;
    A = 2'b11; B = 2'b11; #10;

    $finish;
end

endmodule
