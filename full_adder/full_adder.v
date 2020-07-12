//*********************************
// Full adder
// by Ryan Thompson
//*********************************

module full_adder( s, cout, a, b, cin );

output s;       // Result
output cout;    // Carry out
input  a;       // Number to add
input  b;       // Second number to add
input  cin;     // Carry in

wire   w1;
wire   w2;
wire   w3; 

assign w1 = a ^ b;
assign w2 = w1 & cin;
assign w3 = a & b;
assign s = w1 ^ cin;
assign cout = w2 | w3;

endmodule