`timescale 1ns / 1ps
module bcd_a_7_seg (In, Out); 

input [3:0] In;
output [6:0] Out; 
wire A, B, C, D;

assign A = In [3];

assign B = In [2];

assign C = In [1];

assign D = In [0];


assign Out [0] =(B) & (~C) & (~D) | (~A) & (~B) & (~C) & (D);

assign Out [1] =(B) & (~C) & (D) | (B) & (C) & (~D);

assign Out [2] =(~B) & (C) & (~D); 

assign Out [3] = (B) & (~C) & (~D) | (B) & (C) & (D) | (~A) & (~B) & (~C) & (D);

assign Out [4] = (D) | (B) & (~C);

assign Out [5] = (~B) & (C) | (C) & (D) |(~A) & (~B) & (D);

assign Out [6] =(~A) & (~B) & (~C) | (B) & (C) & (D);
endmodule
