//========================================================================
// BinaryToSevenSegOpt_GL
//========================================================================

`ifndef BINARY_TO_SEVEN_SEG_OPT_GL_V
`define BINARY_TO_SEVEN_SEG_OPT_GL_V

`include "ece2300/ece2300-misc.v"

module BinaryToSevenSegOpt_GL
(
  input  wire [3:0] in,
  output wire [6:0] seg
);
// meow
  
  `ECE2300_UNUSED( in );
  `ECE2300_UNDRIVEN( seg );

endmodule

`endif /* BINARY_TO_SEVEN_SEG_OPT_GL_V */

