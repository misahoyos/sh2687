//========================================================================
// DisplayUnopt_GL
//========================================================================

`ifndef DISPLAY_UNOPT_GL_V
`define DISPLAY_UNOPT_GL_V

`include "lab1/BinaryToBinCodedDec_GL.v"
`include "lab1/BinaryToSevenSegUnopt_GL.v"

module DisplayUnopt_GL (
  input  wire [4:0] in,
  output wire [6:0] seg_tens,
  output wire [6:0] seg_ones
);

  wire [3:0] tens;
  wire [3:0] ones;

  BinaryToBinCodedDec_GL b2bcd (
    .in   (in),
    .tens (tens),
    .ones (ones)
  );

  BinaryToSevenSegUnopt_GL seg0 (
    .in  (tens),
    .seg (seg_tens)
  );

  BinaryToSevenSegUnopt_GL seg1 (
    .in  (ones),
    .seg (seg_ones)
  );

endmodule

`endif /* DISPLAY_UNOPT_GL_V */\
