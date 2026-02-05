// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VBinaryToBinCodedDec_GL.h for the primary calling header

#ifndef VERILATED_VBINARYTOBINCODEDDEC_GL___024ROOT_H_
#define VERILATED_VBINARYTOBINCODEDDEC_GL___024ROOT_H_  // guard

#include "verilated.h"


class VBinaryToBinCodedDec_GL__Syms;

class alignas(VL_CACHE_LINE_BYTES) VBinaryToBinCodedDec_GL___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(in,4,0);
    VL_OUT8(tens,3,0);
    VL_OUT8(ones,3,0);
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    VBinaryToBinCodedDec_GL__Syms* const vlSymsp;

    // CONSTRUCTORS
    VBinaryToBinCodedDec_GL___024root(VBinaryToBinCodedDec_GL__Syms* symsp, const char* v__name);
    ~VBinaryToBinCodedDec_GL___024root();
    VL_UNCOPYABLE(VBinaryToBinCodedDec_GL___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
