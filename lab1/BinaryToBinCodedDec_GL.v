//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================


`ifndef BINARY_TO_BIN_CODED_DEC_GL_V
`define BINARY_TO_BIN_CODED_DEC_GL_V

module BinaryToBinCodedDec_GL
(
  input  wire [4:0] in,
  output wire [3:0] tens,
  output wire [3:0] ones
);

// wires 
wire n4 = in[4];
wire n3 = in[3]; 
wire n2 = in[2]; 
wire n1 = in[1];
wire n0 = in[0];

// inverted wires
wire not4;
not(not4, n4);

wire not3;
not(not3, n3);

wire not2;
not(not2, n2);

wire not1;
not(not1, n1);

wire not0;
not(not0, n0);

// tens wires
wire t1; 
wire t0;

// ones wires
wire o3;
wire o2; 
wire o1; 
wire o0; 

wire d1, d2, d3, d4, d5, d6, d7, d8, d9;
wire d10, d11, d12, d13, d14, d15, d16, d17, d18, d19;
wire d20, d21, d22, d23, d24, d25, d26, d27, d28, d29;
wire d30, d31;

and( d1,  not4, not3, not2, not1, n0 );
and( d2,  not4, not3, not2, n1,  not0 );
and( d3,  not4, not3, not2, n1,  n0 );
and( d4,  not4, not3, n2,  not1, not0 );
and( d5,  not4, not3, n2,  not1, n0 );

and( d6,  not4, not3, n2,  n1,  not0 );
and( d7,  not4, not3, n2,  n1,  n0 );
and( d8,  not4, n3,  not2, not1, not0 );
and( d9,  not4, n3,  not2, not1, n0 );
and( d10, not4, n3,  not2, n1,  not0 );

and( d11, not4, n3,  not2, n1,  n0 );
and( d12, not4, n3,  n2,  not1, not0 );
and( d13, not4, n3,  n2,  not1, n0 );
and( d14, not4, n3,  n2,  n1,  not0 );
and( d15, not4, n3,  n2,  n1,  n0 );

and( d16, n4,  not3, not2, not1, not0 );
and( d17, n4,  not3, not2, not1, n0 );
and( d18, n4,  not3, not2, n1,  not0 );
and( d19, n4,  not3, not2, n1,  n0 );
and( d20, n4,  not3, n2,  not1, not0 );

and( d21, n4,  not3, n2,  not1, n0 );
and( d22, n4,  not3, n2,  n1,  not0 );
and( d23, n4,  not3, n2,  n1,  n0 );
and( d24, n4,  n3,  not2, not1, not0 );
and( d25, n4,  n3,  not2, not1, n0 );

and( d26, n4,  n3,  not2, n1,  not0 );
and( d27, n4,  n3,  not2, n1,  n0 );
and( d28, n4,  n3,  n2,  not1, not0 );
and( d29, n4,  n3,  n2,  not1, n0 );
and( d30, n4,  n3,  n2,  n1,  not0 );

and( d31, n4,  n3,  n2,  n1,  n0 );

// tens 
or ( t0, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d30, d31 );
or ( t1, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31 );

// ones
or ( o0, d1, d3, d5, d7, d9, d11, d13, d15, d17, d19, d21, d23, d25, d27, d29, d31 );
or ( o1, d2, d3, d6, d7, d12, d13, d16, d17, d22, d23, d26, d27 );
or ( o2, d4, d5, d6, d7, d14, d15, d16, d17, d24, d25, d26, d27 );
or ( o3, d8, d9, d18, d19, d28, d29 );

assign tens[3:2] = 2'b00;
assign tens[1] = t1;
assign tens[0] = t0;

assign ones[3] = o3;
assign ones[2] = o2;
assign ones[1] = o1;
assign ones[0] = o0;

endmodule
`endif 
/* BINARY_TO_BIN_CODED_DEC_GL_V */
