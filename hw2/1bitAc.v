`timescale 1ns/100ps

module bit1ac(acld, acclr, clk, acin, acout);

input [15:0] acin;
input acclr, acld;
input clk;
output [15:0] acout;
wire [15:0] acout;

wire [15:0] acin_not;
wire [15:0] jw, kw;

assign acin_not[0] = ~acin[0];
assign acin_not[1] = ~acin[1];
assign acin_not[2] = ~acin[2];
assign acin_not[3] = ~acin[3];
assign acin_not[4] = ~acin[4];
assign acin_not[5] = ~acin[5];
assign acin_not[6] = ~acin[6];
assign acin_not[7] = ~acin[7];
assign acin_not[8] = ~acin[8];
assign acin_not[9] = ~acin[9];
assign acin_not[10] = ~acin[10];
assign acin_not[11] = ~acin[11];
assign acin_not[12] = ~acin[12];
assign acin_not[13] = ~acin[13];
assign acin_not[14] = ~acin[14];
assign acin_not[15] = ~acin[15];

assign jw[0] = acld & acin[0];
assign kw[0] = acld & acin_not[0];
jkFlipFlop u0(1'b1, clk, jw[0], kw[0], acout[0]);

assign jw[1] = acld & acin[1];
assign kw[1] = acld & acin_not[1];
jkFlipFlop u1(1'b1, clk, jw[1], kw[1], acout[1]);

assign jw[2] = acld & acin[2];
assign kw[2] = acld & acin_not[2];
jkFlipFlop u2(1'b1, clk, jw[2], kw[2], acout[2]);

assign jw[3] = acld & acin[3];
assign kw[3] = acld & acin_not[3];
jkFlipFlop u3(1'b1, clk, jw[3], kw[3], acout[3]);

assign jw[4] = acld & acin[4];
assign kw[4] = acld & acin_not[4];
jkFlipFlop u4(1'b1, clk, jw[4], kw[4], acout[4]);

assign jw[5] = acld & acin[5];
assign kw[5] = acld & acin_not[5];
jkFlipFlop u5(1'b1, clk, jw[5], kw[5], acout[5]);

assign jw[6] = acld & acin[6];
assign kw[6] = acld & acin_not[6];
jkFlipFlop u6(1'b1, clk, jw[6], kw[6], acout[6]);

assign jw[7] = acld & acin[7];
assign kw[7] = acld & acin_not[7];
jkFlipFlop u7(1'b1, clk, jw[7], kw[7], acout[7]);

assign jw[8] = acld & acin[8];
assign kw[8] = acld & acin_not[8];
jkFlipFlop u8(1'b1, clk, jw[8], kw[8], acout[8]);

assign jw[9] = acld & acin[9];
assign kw[9] = acld & acin_not[9];
jkFlipFlop u9(1'b1, clk, jw[9], kw[9], acout[9]);

assign jw[10] = acld & acin[10];
assign kw[10] = acld & acin_not[10];
jkFlipFlop u10(1'b1, clk, jw[10], kw[10], acout[10]);

assign jw[11] = acld & acin[11];
assign kw[11] = acld & acin_not[11];
jkFlipFlop u11(1'b1, clk, jw[11], kw[11], acout[11]);

assign jw[12] = acld & acin[12];
assign kw[12] = acld & acin_not[12];
jkFlipFlop u12(1'b1, clk, jw[12], kw[12], acout[12]);

assign jw[13] = acld & acin[13];
assign kw[13] = acld & acin_not[13];
jkFlipFlop u13(1'b1, clk, jw[13], kw[13], acout[13]);

assign jw[14] = acld & acin[14];
assign kw[14] = acld & acin_not[14];
jkFlipFlop u14(1'b1, clk, jw[14], kw[14], acout[14]);

assign jw[15] = acld & acin[15];
assign kw[15] = acld & acin_not[15];
jkFlipFlop u15(1'b1, clk, jw[15], kw[15], acout[15]);

endmodule
