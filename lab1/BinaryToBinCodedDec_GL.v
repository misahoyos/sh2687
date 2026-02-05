//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================

`ifndef BINARY_TO_BIN_CODED_DEC_GL_V
`define BINARY_TO_BIN_CODED_DEC_GL_V

//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================


module BinaryToBinCodedDec_GL
(
  input  wire [4:0] in,
  output wire [3:0] tens,
  output wire [3:0] ones
);

wire n0,n1,n2,n3,n4;
not(n0,in[0]); not(n1,in[1]); not(n2,in[2]); not(n3,in[3]); not(n4,in[4]);

wire d1,d2,d3,d4,d5,d6,d7,d8,d9;
wire d10,d11,d12,d13,d14,d15,d16,d17,d18,d19;
wire d20,d21,d22,d23,d24,d25,d26,d27,d28,d29;
wire d30,d31;

// and(d0 , n4,n3,n2,n1,n0);
and(d1 , n4,n3,n2,n1,in[0]);
and(d2 , n4,n3,n2,in[1],n0);
and(d3 , n4,n3,n2,in[1],in[0]);
and(d4 , n4,n3,in[2],n1,n0);
and(d5 , n4,n3,in[2],n1,in[0]);

and(d6 , n4,n3,in[2],in[1],n0);
and(d7 , n4,n3,in[2],in[1],in[0]);
and(d8 , n4,in[3],n2,n1,n0);
and(d9 , n4,in[3],n2,n1,in[0]);
and(d10, n4,in[3],n2,in[1],n0);

and(d11, n4,in[3],n2,in[1],in[0]);
and(d12, n4,in[3],in[2],n1,n0);
and(d13, n4,in[3],in[2],n1,in[0]);
and(d14, n4,in[3],in[2],in[1],n0);
and(d15, n4,in[3],in[2],in[1],in[0]);

and(d16, in[4],n3,n2,n1,n0);
and(d17, in[4],n3,n2,n1,in[0]);
and(d18, in[4],n3,n2,in[1],n0);
and(d19, in[4],n3,n2,in[1],in[0]);

and(d20, in[4],n3,in[2],n1,n0);
and(d21, in[4],n3,in[2],n1,in[0]);
and(d22, in[4],n3,in[2],in[1],n0);
and(d23, in[4],n3,in[2],in[1],in[0]);
and(d24, in[4],in[3],n2,n1,n0);
and(d25, in[4],in[3],n2,n1,in[0]);

and(d26, in[4],in[3],n2,in[1],n0);
and(d27, in[4],in[3],n2,in[1],in[0]);
and(d28, in[4],in[3],in[2],n1,n0);
and(d29, in[4],in[3],in[2],n1,in[0]);
and(d30, in[4],in[3],in[2],in[1],n0);

and(d31, in[4],in[3],in[2],in[1],in[0]);

or(ones[0], d1,d3,d5,d7,d9,d11,d13,d15,d17,d19,d21,d23,d25,d27,d29,d31);
or(ones[1], d2,d3,d6,d7,d12,d13,d16,d17,d22,d23,d26,d27);
or(ones[2], d4,d5,d6,d7,d18,d19,d24,d25,d26,d27);
or(ones[3], d8,d9,d18,d19,d28,d29);

or(tens[0], d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d30,d31);
or(tens[1], d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31);

assign tens[2] = 1'b0;
assign tens[3] = 1'b0;

endmodule
 `endif
 /* BINARY_TO_BIN_CODED_DEC_GL_V */
