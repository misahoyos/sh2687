// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VBinaryToBinCodedDec_GL__pch.h"

//============================================================
// Constructors

VBinaryToBinCodedDec_GL::VBinaryToBinCodedDec_GL(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VBinaryToBinCodedDec_GL__Syms(contextp(), _vcname__, this)}
    , in{vlSymsp->TOP.in}
    , tens{vlSymsp->TOP.tens}
    , ones{vlSymsp->TOP.ones}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

VBinaryToBinCodedDec_GL::VBinaryToBinCodedDec_GL(const char* _vcname__)
    : VBinaryToBinCodedDec_GL(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VBinaryToBinCodedDec_GL::~VBinaryToBinCodedDec_GL() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VBinaryToBinCodedDec_GL___024root___eval_debug_assertions(VBinaryToBinCodedDec_GL___024root* vlSelf);
#endif  // VL_DEBUG
void VBinaryToBinCodedDec_GL___024root___eval_static(VBinaryToBinCodedDec_GL___024root* vlSelf);
void VBinaryToBinCodedDec_GL___024root___eval_initial(VBinaryToBinCodedDec_GL___024root* vlSelf);
void VBinaryToBinCodedDec_GL___024root___eval_settle(VBinaryToBinCodedDec_GL___024root* vlSelf);
void VBinaryToBinCodedDec_GL___024root___eval(VBinaryToBinCodedDec_GL___024root* vlSelf);

void VBinaryToBinCodedDec_GL::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VBinaryToBinCodedDec_GL::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VBinaryToBinCodedDec_GL___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VBinaryToBinCodedDec_GL___024root___eval_static(&(vlSymsp->TOP));
        VBinaryToBinCodedDec_GL___024root___eval_initial(&(vlSymsp->TOP));
        VBinaryToBinCodedDec_GL___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VBinaryToBinCodedDec_GL___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VBinaryToBinCodedDec_GL::eventsPending() { return false; }

uint64_t VBinaryToBinCodedDec_GL::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VBinaryToBinCodedDec_GL::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VBinaryToBinCodedDec_GL___024root___eval_final(VBinaryToBinCodedDec_GL___024root* vlSelf);

VL_ATTR_COLD void VBinaryToBinCodedDec_GL::final() {
    VBinaryToBinCodedDec_GL___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VBinaryToBinCodedDec_GL::hierName() const { return vlSymsp->name(); }
const char* VBinaryToBinCodedDec_GL::modelName() const { return "VBinaryToBinCodedDec_GL"; }
unsigned VBinaryToBinCodedDec_GL::threads() const { return 1; }
void VBinaryToBinCodedDec_GL::prepareClone() const { contextp()->prepareClone(); }
void VBinaryToBinCodedDec_GL::atClone() const {
    contextp()->threadPoolpOnClone();
}
