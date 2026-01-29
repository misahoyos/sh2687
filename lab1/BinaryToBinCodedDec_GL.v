//========================================================================
// BinaryToBinCodedDec_GL
//========================================================================

`ifndef BINARY_TO_BIN_CODED_DEC_GL_V
`define BINARY_TO_BIN_CODED_DEC_GL_V

`include "ece2300/ece2300-misc.v"

module BinaryToBinCodedDec_GL
(
  input  wire [4:0] in,
  output wire [3:0] tens,
  output wire [3:0] ones
);

  //''' LAB ASSIGNMENT '''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement the binary to binary coded decimal converter
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  // remove these lines before starting your implementation
  `ECE2300_UNUSED( in );
  `ECE2300_UNDRIVEN( tens );
  `ECE2300_UNDRIVEN( ones );

endmodule

`endif /* BINARY_TO_BIN_CODED_DEC_GL_V */

