//========================================================================
// DisplayUnopt_GL
//========================================================================

`ifndef DISPLAY_UNOPT_GL_V
`define DISPLAY_UNOPT_GL_V

`include "ece2300/ece2300-misc.v"
`include "lab1/BinaryToBinCodedDec_GL.v"
`include "lab1/BinaryToSevenSegUnopt_GL.v"

module DisplayUnopt_GL
(
  input  wire [4:0] in,
  output wire [6:0] seg_tens,
  output wire [6:0] seg_ones
);

  //''' LAB ASSIGNMENT '''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement the unoptimized five-bit numeric display
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  // remove these lines before starting your implementation
  `ECE2300_UNUSED( in );
  `ECE2300_UNDRIVEN( seg_tens );
  `ECE2300_UNDRIVEN( seg_ones );

endmodule

`endif /* DISPLAY_UNOPT_GL_V */

