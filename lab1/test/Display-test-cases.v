//========================================================================
// Display-test-cases
//========================================================================
// This file is meant to be included in a test bench.

//------------------------------------------------------------------------
// check
//------------------------------------------------------------------------
// We set the inputs, wait 8 tau, check the outputs, wait 2 tau. Each
// check will take a total of 10 tau.

task check
(
  input logic [4:0] in_,
  input logic [6:0] seg_tens_,
  input logic [6:0] seg_ones_
);
  if ( !t.failed ) begin
    t.num_checks += 1;

    in = in_;

    #8;

    if ( t.n != 0 )
      $display( "%3d: %b (%d) > %b %b", t.cycles,
                in, in, seg_tens, seg_ones );

    `ECE2300_CHECK_EQ( seg_tens, seg_tens_ );
    `ECE2300_CHECK_EQ( seg_ones, seg_ones_ );

    #2;

  end
endtask

//------------------------------------------------------------------------
// test_case_1_basic
//------------------------------------------------------------------------

task test_case_1_basic();
  t.test_case_begin( "test_case_1_basic" );

  check( 5'b00000, 7'b100_0000, 7'b100_0000 );
  check( 5'b00001, 7'b100_0000, 7'b111_1001 );

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
// main
//------------------------------------------------------------------------

initial begin
  t.test_bench_begin();

  if ((t.n <= 0) || (t.n == 1)) test_case_1_basic();
  if ((t.n <= 0) || (t.n == 2)) test_case_2_exhaustive();

  t.test_bench_end();
end
