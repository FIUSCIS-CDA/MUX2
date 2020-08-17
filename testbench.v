module testbench();

reg A, B, S;
wire Y;

MUX2 myMUX(A, B, S, Y);

initial begin
A=1; B=0; S=0;  #10; 
if (Y !== A) begin
           $display("Error: Expected %d got %d for S=%d", A, Y, S); $stop;
end
S=1;  #10; 
if (Y !== B) begin
           $display("Error: Expected %d got %d for S=%d", B, Y, S); $stop;
end

$display("All tests passed.");
end

endmodule
