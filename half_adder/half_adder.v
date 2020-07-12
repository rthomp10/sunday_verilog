// **********************************
// A simple structual half-adder
// by: Ryan Thompson
// **********************************

module half_adder( cout, sum, a, b );
output sum, cout;
input  a, b;

xor X01( sum, a, b );
and A1( cout, a, b );

endmodule