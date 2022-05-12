///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: MUX2
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////


module testbench();
`include "../Test/Test.v"

///////////////////////////////////////////////////////////////////////////////////
// Inputs: A, B, S (1-bit)
reg A, B, S;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Output: Y (1-bit)
wire Y;
///////////////////////////////////////////////////////////////////////////////////

MUX2 myMUX(.A(A), 
           .B(B), 
           .S(S), 
           .Y(Y));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: S=0
$display("Testing: S=0");
A=1; B=0; S=0;  #10;
verifyEqual(Y, A); 
////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
// Test: S=1
$display("Testing: S=1");
S=1;  #10; 
verifyEqual(Y, B);
////////////////////////////////////////////////////////////////////////////////////////
$display("All tests passed.");
end

endmodule
