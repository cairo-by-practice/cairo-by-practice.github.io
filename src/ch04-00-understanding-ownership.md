# Understanding Cairo's Ownership system

Cairo's ownership system, based on a linear type system, ensures values are used only once in programs, preventing runtime errors through compile-time detection of problematic operations like double writing to memory cells. It restricts copying and dropping values by default
