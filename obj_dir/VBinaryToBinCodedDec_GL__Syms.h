// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VBINARYTOBINCODEDDEC_GL__SYMS_H_
#define VERILATED_VBINARYTOBINCODEDDEC_GL__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VBinaryToBinCodedDec_GL.h"

// INCLUDE MODULE CLASSES
#include "VBinaryToBinCodedDec_GL___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)VBinaryToBinCodedDec_GL__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VBinaryToBinCodedDec_GL* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VBinaryToBinCodedDec_GL___024root TOP;

    // CONSTRUCTORS
    VBinaryToBinCodedDec_GL__Syms(VerilatedContext* contextp, const char* namep, VBinaryToBinCodedDec_GL* modelp);
    ~VBinaryToBinCodedDec_GL__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
