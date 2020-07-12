// **********************************
// Full Adder testbench
// by: Ryan Thompson
// **********************************

module full_adder_tb();
wire sum;
wire cout;
reg  a;
reg  b;
reg  cin;

full_adder FA1( s, cout, a, b, cin );

initial begin
    a = 1'b0; b = 1'b0; cin = 1'b0;
#10 a = 1'b0; b = 1'b0; cin = 1'b1;
#10 a = 1'b0; b = 1'b1; cin = 1'b0;
#10 a = 1'b0; b = 1'b1; cin = 1'b1;
#10 a = 1'b1; b = 1'b0; cin = 1'b0;
#10 a = 1'b1; b = 1'b0; cin = 1'b1;
#10 a = 1'b1; b = 1'b1; cin = 1'b0;
#10 a = 1'b1; b = 1'b1; cin = 1'b1;
#10 $finish;
end

initial $monitor("%b + %b + %b = %b%b", a, b, cin, cout, s);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, FA1);
end

endmodule