//========================================================================
// BinaryToSevenSeg-test-cases
//========================================================================
// This file is meant to be included in a test bench.

//------------------------------------------------------------------------
// check
//------------------------------------------------------------------------
// We set the inputs, wait 8 tau, check the outputs, wait 2 tau. Each
// check will take a total of 10 tau.

task check
(
  input logic [3:0] in_,
  input logic [6:0] seg_
);
  if ( !t.failed ) begin
    t.num_checks += 1;

    in = in_;

    #8;

    if ( t.n != 0 )
      $display( "%3d: %b (%d) > %b", t.cycles, in, in, seg );

    `ECE2300_CHECK_EQ( seg, seg_ );

    #2;

  end
endtask

//------------------------------------------------------------------------
// test_case_1_basic
//------------------------------------------------------------------------

task test_case_1_basic();
  t.test_case_begin( "test_case_1_basic" );

  check( 4'b0000, 7'b100_0000 );
  check( 4'b0001, 7'b111_1001 );

  t.test_case_end();
endtask

//------------------------------------------------------------------------
// test_case_2_exhaustive
//------------------------------------------------------------------------

task test_case_2_exhaustive();
  t.test_case_begin( "test_case_2_exhaustive" );

  //''' LAB ASSIGNMENT '''''''''''''''''''''''''''''''''''''''''''''''''''
  // Add checks for exhaustive testing (check all possible inputs)
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  t.test_case_end();
endtask

//------------------------------------------------------------------------
// test_case_3_xprop
//------------------------------------------------------------------------

task test_case_3_xprop();
  t.test_case_begin( "test_case_3_xprop" );

  check( 4'bxxxx, 7'bxxx_xxxx );

  t.test_case_end();
endtask

//------------------------------------------------------------------------
// main
//------------------------------------------------------------------------

initial begin
  t.test_bench_begin();

  if ((t.n <= 0) || (t.n == 1)) test_case_1_basic();
  if ((t.n <= 0) || (t.n == 2)) test_case_2_exhaustive();
  if ((t.n <= 0) || (t.n == 3)) test_case_3_xprop();

  t.test_bench_end();
end

