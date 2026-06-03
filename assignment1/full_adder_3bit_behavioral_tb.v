`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 17:05:59
// Design Name: 
// Module Name: full_adder_3bit_behavioral_tb
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


module full_adder_3bit_behavioral_tb(

    );
reg a, b, cin;
wire s, cout;

// Instantiate the Design Under Test (DUT)
full_adder_3bit_behavioral uut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin

    $display("a b cin | s cout");
    $display("----------------");

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end

initial begin
    $monitor("%b %b  %b  | %b   %b",
              a, b, cin, s, cout);
end

endmodule
