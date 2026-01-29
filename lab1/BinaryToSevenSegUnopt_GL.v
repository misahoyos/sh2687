//========================================================================
// BinaryToSevenSegUnopt_GL
//========================================================================

`ifndef BINARY_TO_SEVEN_SEG_UNOPT_GL_V
`define BINARY_TO_SEVEN_SEG_UNOPT_GL_V

`include "ece2300/ece2300-misc.v"

module BinaryToSevenSegUnopt_GL
(
  input  wire [3:0] in,
  output wire [6:0] seg
);

  //''' LAB ASSIGNMENT '''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement the unoptimized binary to seven segment converter
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  // remove these lines before starting your implementation
  `ECE2300_UNUSED( in );
  `ECE2300_UNDRIVEN( seg );

endmodule

`endif /* BINARY_TO_SEVEN_SEG_UNOPT_GL_V */

