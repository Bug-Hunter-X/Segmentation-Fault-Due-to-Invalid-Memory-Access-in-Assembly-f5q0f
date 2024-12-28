# Segmentation Fault in Assembly

This repository demonstrates a common yet subtle error in x86 assembly: accessing memory outside of the allocated address space.  The bug arises from the `mov eax, [ebx+ecx*4]` instruction where incorrect values in `ebx` and `ecx` can result in accessing invalid memory locations, triggering a segmentation fault.

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version including improved error handling.