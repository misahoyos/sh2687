//========================================================================
// DisplayOpt_GL
//========================================================================

`ifndef DISPLAY_OPT_GL_V
`define DISPLAY_OPT_GL_V

`include "ece2300/ece2300-misc.v"
`include "lab1/BinaryToBinCodedDec_GL.v"
`include "lab1/BinaryToSevenSegOpt_GL.v"

module DisplayOpt_GL
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

`endif /* DISPLAY_OPT_GL_V */

