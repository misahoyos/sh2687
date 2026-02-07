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

wire n0;
wire n1;
wire n2;
wire n3;

not ( n0, in[0] );
not ( n1, in[1] );
not ( n2, in[2] );
not ( n3, in[3] );

wire d0;
wire d1;
wire d2;
wire d3;
wire d4;
wire d5;
wire d6; 
wire d7;
wire d9;

and ( d0, n3, n2, n1, n0 );        
and ( d1, n3, n2, n1, in[0] );    
and ( d2, n3, n2, in[1], n0 );    
and ( d3, n3, n2, in[1], in[0]); 
and ( d4, n3, in[2], n1, n0 );    
and ( d5, n3, in[2], n1, in[0] ); 
and ( d6, n3, in[2], in[1], n0 ); 
and ( d7, n3, in[2], in[1], in[0] ); 
and ( d9, in[3], n2, n1, in[0] ); 

or (seg[0], d1, d4);

or (seg[1], d5, d6);

or (seg[2], d2);

or (seg[3], d1, d4, d7);

or (seg[4], d1, d3, d4, d5, d7, d9);

or (seg[5], d1, d2, d3, d7);

or (seg[6], d0, d1, d7);

endmodule
 `endif 
 /* BINARY_TO_SEVEN_SEG_UNOPT_GL_V */
 