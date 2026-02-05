//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================

`ifndef BINARY_TO_BIN_CODED_DEC_GL_V
`define BINARY_TO_BIN_CODED_DEC_GL_V

//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================


module BinaryToBinCodedDec_GL (
  input  wire [4:0] in,
  output wire [3:0] tens,
  output wire [3:0] ones
);

  wire n0, n1, n2, n3, n4;
  not (n0, in[0]);
  not (n1, in[1]);
  not (n2, in[2]);
  not (n3, in[3]);
  not (n4, in[4]);

  // Tens digit = 0,1,2,3
  // tens = 0 for 0–9
  // tens = 1 for 10–19
  // tens = 2 for 20–29
  // tens = 3 for 30–31

  wire t1, t2, t3;

  // 10–19
  and (t1, n4, in[3]);
  // 20–29
  and (t2, in[4], n3);
  // 30–31
  and (t3, in[4], in[3]);

  assign tens[3] = 1'b0;
  assign tens[2] = 1'b0;
  or     (tens[1], t2);
  or     (tens[0], t1, t3);

  // Ones digit (binary subtraction by 10/20/30)
  // Unoptimized truth-table approach

  wire o0, o1, o2, o3;

  // ones[0]
  xor (o0, in[0], tens[0]);

  // ones[1]
  xor (o1, in[1], tens[0]);

  // ones[2]
  xor (o2, in[2], tens[1]);

  // ones[3]
  assign o3 = 1'b0;

  assign ones[0] = o0;
  assign ones[1] = o1;
  assign ones[2] = o2;
  assign ones[3] = o3;

endmodule
 `endif
 /* BINARY_TO_BIN_CODED_DEC_GL_V */
