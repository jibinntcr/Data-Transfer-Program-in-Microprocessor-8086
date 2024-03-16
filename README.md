# Data-Transfer-Program-in-Microprocessor-8086
Data Transfer Program in Microprocessor 8086
# Assembly String Copy Program

## Description
This is a simple assembly language program for the x86 architecture that demonstrates how to copy a string of bytes from one memory location to another using the `REP MOVSB` instruction. The program initializes two arrays in the data segment and then copies the contents of the first array to the second array in the code segment.

## Data Segment
- `S1`: An array pre-filled with the values 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.
- `S2`: An array with 10 elements, all initialized to 0.

## Code Segment
- Initializes the data segment registers `DS` and `ES`.
- Copies the bytes from `S1` to `S2`.
- Terminates the program with a return code of 0.

## Setup and Execution
To run this program, you'll need an assembler and an emulator or real hardware that supports x86 architecture. Assemble the program with your assembler, and then load the resulting object file into your emulator or execute it directly on your hardware.

## Code Explanation
Each instruction in the code is commented for clarity and understanding of the operation it performs. The comments explain the purpose of the registers, the string operations, and the program termination call.

## License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

## Disclaimer
This software is provided 'as is', without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.
