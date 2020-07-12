// **********************************
// A simple structual half-adder
//
// by: Ryan Thompson
// **********************************

module half_adder_tb();
wire sum, cout;
reg  a, b;

half_adder HA1(cout, sum, a, b);

initial begin
    a = 1'b0; b = 1'b0;
#10 a = 1'b0; b = 1'b1;
#10 a = 1'b1; b = 1'b0;
#10 a = 1'b1; b = 1'b1;
#10 $finish;
end

initial $monitor("%b + %b = %b%b", a, b, cout, sum);

initial begin
    $dumpfile("half_adder_sim.vcd");
    $dumpvars(0, HA1);
end

endmodule