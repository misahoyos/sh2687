// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VBinaryToBinCodedDec_GL.h for the primary calling header

#include "VBinaryToBinCodedDec_GL__pch.h"
#include "VBinaryToBinCodedDec_GL__Syms.h"
#include "VBinaryToBinCodedDec_GL___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void VBinaryToBinCodedDec_GL___024root___dump_triggers__ico(VBinaryToBinCodedDec_GL___024root* vlSelf);
#endif  // VL_DEBUG

void VBinaryToBinCodedDec_GL___024root___eval_triggers__ico(VBinaryToBinCodedDec_GL___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VBinaryToBinCodedDec_GL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBinaryToBinCodedDec_GL___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (IData)(vlSelf->__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VBinaryToBinCodedDec_GL___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VBinaryToBinCodedDec_GL___024root___dump_triggers__act(VBinaryToBinCodedDec_GL___024root* vlSelf);
#endif  // VL_DEBUG

void VBinaryToBinCodedDec_GL___024root___eval_triggers__act(VBinaryToBinCodedDec_GL___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VBinaryToBinCodedDec_GL__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBinaryToBinCodedDec_GL___024root___eval_triggers__act\n"); );
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        VBinaryToBinCodedDec_GL___024root___dump_triggers__act(vlSelf);
    }
#endif
}
