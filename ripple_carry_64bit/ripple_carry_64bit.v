//************************
// 64 bit ripply carry adder
// by Ryan Thompason
//************************

`include "..\half_adder\half_adder.v"
`include "..\full_adder\full_adder.v"

module ripple_carry_64bit( sum, cout, a, b );

output [63:0] sum;      // Summed output
output cout;            // Carry flag
input  [63:0] a;        // A 64bit value to add
input  [63:0] b;        // Another 64bit value to add
input  enable;          // Enable

wire carry_wire[62:0];  // Internal carry wires

//
// Ripple chain
//
half_adder FA0 ( sum[0],  carry_wire[0],  a[0],  b[0] ); 
full_adder FA1 ( sum[1],  carry_wire[1],  a[1],  b[1],  carry_wire[0] );
full_adder FA2 ( sum[2],  carry_wire[2],  a[2],  b[2],  carry_wire[1] );
full_adder FA3 ( sum[3],  carry_wire[3],  a[3],  b[3],  carry_wire[2] );
full_adder FA4 ( sum[4],  carry_wire[4],  a[4],  b[4],  carry_wire[3] );
full_adder FA5 ( sum[5],  carry_wire[5],  a[5],  b[5],  carry_wire[4] );
full_adder FA6 ( sum[6],  carry_wire[6],  a[6],  b[6],  carry_wire[5] );
full_adder FA7 ( sum[7],  carry_wire[7],  a[7],  b[7],  carry_wire[6] );
full_adder FA8 ( sum[8],  carry_wire[8],  a[8],  b[8],  carry_wire[7] );
full_adder FA9 ( sum[9],  carry_wire[9],  a[9],  b[9],  carry_wire[8] );
full_adder FA10( sum[10], carry_wire[10], a[10], b[10], carry_wire[9] );
full_adder FA11( sum[11], carry_wire[11], a[11], b[11], carry_wire[10] );
full_adder FA12( sum[12], carry_wire[12], a[12], b[12], carry_wire[11] );
full_adder FA13( sum[13], carry_wire[13], a[13], b[13], carry_wire[12] );
full_adder FA14( sum[14], carry_wire[14], a[14], b[14], carry_wire[13] );
full_adder FA15( sum[15], carry_wire[15], a[15], b[15], carry_wire[14] );
full_adder FA16( sum[16], carry_wire[16], a[16], b[16], carry_wire[15] );
full_adder FA17( sum[17], carry_wire[17], a[17], b[17], carry_wire[16] );
full_adder FA18( sum[18], carry_wire[18], a[18], b[18], carry_wire[17] );
full_adder FA19( sum[19], carry_wire[19], a[19], b[19], carry_wire[18] );
full_adder FA20( sum[20], carry_wire[20], a[20], b[20], carry_wire[19] );
full_adder FA21( sum[21], carry_wire[21], a[21], b[21], carry_wire[20] );
full_adder FA22( sum[22], carry_wire[22], a[22], b[22], carry_wire[21] );
full_adder FA23( sum[23], carry_wire[23], a[23], b[23], carry_wire[22] );
full_adder FA24( sum[24], carry_wire[24], a[24], b[24], carry_wire[23] );
full_adder FA25( sum[25], carry_wire[25], a[25], b[25], carry_wire[24] );
full_adder FA26( sum[26], carry_wire[26], a[26], b[26], carry_wire[25] );
full_adder FA27( sum[27], carry_wire[27], a[27], b[27], carry_wire[26] );
full_adder FA28( sum[28], carry_wire[28], a[28], b[28], carry_wire[27] );
full_adder FA29( sum[29], carry_wire[29], a[29], b[29], carry_wire[28] );
full_adder FA30( sum[30], carry_wire[30], a[30], b[30], carry_wire[29] );
full_adder FA31( sum[31], carry_wire[31], a[31], b[31], carry_wire[30] );
full_adder FA32( sum[32], carry_wire[32], a[32], b[32], carry_wire[31] );
full_adder FA33( sum[33], carry_wire[33], a[33], b[33], carry_wire[32] );
full_adder FA34( sum[34], carry_wire[34], a[34], b[34], carry_wire[33] );
full_adder FA35( sum[35], carry_wire[35], a[35], b[35], carry_wire[34] );
full_adder FA36( sum[36], carry_wire[36], a[36], b[36], carry_wire[35] );
full_adder FA37( sum[37], carry_wire[37], a[37], b[37], carry_wire[36] );
full_adder FA38( sum[38], carry_wire[38], a[38], b[38], carry_wire[37] );
full_adder FA39( sum[39], carry_wire[39], a[39], b[39], carry_wire[38] );
full_adder FA40( sum[40], carry_wire[40], a[40], b[40], carry_wire[39] );
full_adder FA41( sum[41], carry_wire[41], a[41], b[41], carry_wire[40] );
full_adder FA42( sum[42], carry_wire[42], a[42], b[42], carry_wire[41] );
full_adder FA43( sum[43], carry_wire[43], a[43], b[43], carry_wire[42] );
full_adder FA44( sum[44], carry_wire[44], a[44], b[44], carry_wire[43] );
full_adder FA45( sum[45], carry_wire[45], a[45], b[45], carry_wire[44] );
full_adder FA46( sum[46], carry_wire[46], a[46], b[46], carry_wire[45] );
full_adder FA47( sum[47], carry_wire[47], a[47], b[47], carry_wire[46] );
full_adder FA48( sum[48], carry_wire[48], a[48], b[48], carry_wire[47] );
full_adder FA49( sum[49], carry_wire[49], a[49], b[49], carry_wire[48] );
full_adder FA50( sum[50], carry_wire[50], a[50], b[50], carry_wire[49] );
full_adder FA51( sum[51], carry_wire[51], a[51], b[51], carry_wire[50] );
full_adder FA52( sum[52], carry_wire[52], a[52], b[52], carry_wire[51] );
full_adder FA53( sum[53], carry_wire[53], a[53], b[53], carry_wire[52] );
full_adder FA54( sum[54], carry_wire[54], a[54], b[54], carry_wire[53] );
full_adder FA55( sum[55], carry_wire[55], a[55], b[55], carry_wire[54] );
full_adder FA56( sum[56], carry_wire[56], a[56], b[56], carry_wire[55] );
full_adder FA57( sum[57], carry_wire[57], a[57], b[57], carry_wire[56] );
full_adder FA58( sum[58], carry_wire[58], a[58], b[58], carry_wire[57] );
full_adder FA59( sum[59], carry_wire[59], a[59], b[59], carry_wire[58] );
full_adder FA60( sum[60], carry_wire[60], a[60], b[60], carry_wire[59] );
full_adder FA61( sum[61], carry_wire[61], a[61], b[61], carry_wire[60] );
full_adder FA62( sum[62], carry_wire[62], a[62], b[62], carry_wire[61] );
full_adder FA63( sum[63], cout, a[63], b[63], carry_wire[62] );

endmodule