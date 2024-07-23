/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_miai_1bit_alu (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

//Local Declarations
wire [1:0] alu_ctrl;
wire alu_in_1;
wire alu_in_2;
wire alu_data_out;
wire zero_flag;
    
//Instantiating 1-bit ALU
module alu u_alu_0 ( 
    .aluctrl      (alu_ctrl), 
    .data_in_1    (alu_in_1), 
    .data_in_2    (alu_in_2), 
    .data_out     (alu_data_out), 
    .zero_flag    (zero_flag)
);

// All required input must be driven
// All output pins must be assigned. If not used, assign to 0.
//MIAI assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in

assign alu_ctrl = ui_in[7];
assign alu_in_1 = ui_in[0];
assign alu_in_2 = ui_in[1];
    
assign uo_out[0] = alu_data_out;
assign uo_out[1] = zero_flag;
assign uo_out[7:2] = {6{1'b0}};
assign uio_out = 0;
assign uio_oe  = 0;

// List all unused inputs to prevent warnings
wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
