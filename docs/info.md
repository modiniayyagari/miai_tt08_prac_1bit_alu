<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is a 1bit Arithmetic Logic Unit for Logical Operations.

## How to test

The pinlist table below describes the functionality of the ALU:

**PinList**:
| Pin Name    | Direction   | Width  | Description                                            |
| ----------- | ----------- | ------ | ------------------------------------------------------ |
| ui\[0\]     | Input       | 1 bit  | ALU Input Data 1                                       |
| ui\[1\]     | Input       | 1 bit  | ALU Input Data 2                                       |
| ui\[7:6\]   | Input       | 2 bits | ALU Control Signal (00: AND; 01: OR; 10: XOR, 11:XNOR) |
| uo\[0\]     | Output      | 1 bit  | ALU Output Data                                        |
| uo\[1\]     | Output      | 1 bit  | ALU Zero Flag Indicator                                |

- Drive the ALU Control Signal to the desired option and provide the input data values.
- Check the result on the output data pins using multi-meter or LEDs.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any\

MIAI: Need to connect to the output result of the ALU to LED or check using a multimeter.

