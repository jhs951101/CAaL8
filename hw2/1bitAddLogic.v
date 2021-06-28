module bit1AdderLogic(ac_data, dr_data, acand, acadd, acdr, cin, e, alout);

input [15:0] ac_data;
input [15:0] dr_data;
input acand, acadd, acdr;
input cin;
output e;
output [15:0] alout;

wire [15:0] andw, addw, drw;
wire [15:0] sum;
wire [14:0] carry;

FullAdder u0(ac_data[0], dr_data[0], cin, sum[0], carry[0]);
FullAdder u1(ac_data[1], dr_data[1], carry[0], sum[1], carry[1]);
FullAdder u2(ac_data[2], dr_data[2], carry[1], sum[2], carry[2]);
FullAdder u3(ac_data[3], dr_data[3], carry[2], sum[3], carry[3]);
FullAdder u4(ac_data[4], dr_data[4], carry[3], sum[4], carry[4]);
FullAdder u5(ac_data[5], dr_data[5], carry[4], sum[5], carry[5]);
FullAdder u6(ac_data[6], dr_data[6], carry[5], sum[6], carry[6]);
FullAdder u7(ac_data[7], dr_data[7], carry[6], sum[7], carry[7]);
FullAdder u8(ac_data[8], dr_data[8], carry[7], sum[8], carry[8]);
FullAdder u9(ac_data[9], dr_data[9], carry[8], sum[9], carry[9]);
FullAdder u10(ac_data[10], dr_data[10], carry[9], sum[10], carry[10]);
FullAdder u11(ac_data[11], dr_data[11], carry[10], sum[11], carry[11]);
FullAdder u12(ac_data[12], dr_data[12], carry[11], sum[12], carry[12]);
FullAdder u13(ac_data[13], dr_data[13], carry[12], sum[13], carry[13]);
FullAdder u14(ac_data[14], dr_data[14], carry[13], sum[14], carry[14]);
FullAdder u15(ac_data[15], dr_data[15], carry[14], sum[15], e);

assign andw[0] = acand & dr_data[0] & ac_data[0];
assign addw[0] = acadd & sum[0];
assign drw[0] = acdr & dr_data[0];
assign alout[0] = andw[0] | addw[0] | drw[0];

assign andw[1] = acand & dr_data[1] & ac_data[1];
assign addw[1] = acadd & sum[1];
assign drw[1] = acdr & dr_data[1];
assign alout[1] = andw[1] | addw[1] | drw[1];

assign andw[2] = acand & dr_data[2] & ac_data[2];
assign addw[2] = acadd & sum[2];
assign drw[2] = acdr & dr_data[2];
assign alout[2] = andw[2] | addw[2] | drw[2];

assign andw[3] = acand & dr_data[3] & ac_data[3];
assign addw[3] = acadd & sum[3];
assign drw[3] = acdr & dr_data[3];
assign alout[3] = andw[3] | addw[3] | drw[3];

assign andw[4] = acand & dr_data[4] & ac_data[4];
assign addw[4] = acadd & sum[4];
assign drw[4] = acdr & dr_data[4];
assign alout[4] = andw[4] | addw[4] | drw[4];

assign andw[5] = acand & dr_data[5] & ac_data[5];
assign addw[5] = acadd & sum[5];
assign drw[5] = acdr & dr_data[5];
assign alout[5] = andw[5] | addw[5] | drw[5];

assign andw[6] = acand & dr_data[6] & ac_data[6];
assign addw[6] = acadd & sum[6];
assign drw[6] = acdr & dr_data[6];
assign alout[6] = andw[6] | addw[6] | drw[6];

assign andw[7] = acand & dr_data[7] & ac_data[7];
assign addw[7] = acadd & sum[7];
assign drw[7] = acdr & dr_data[7];
assign alout[7] = andw[7] | addw[7] | drw[7];

assign andw[8] = acand & dr_data[8] & ac_data[8];
assign addw[8] = acadd & sum[8];
assign drw[8] = acdr & dr_data[8];
assign alout[8] = andw[8] | addw[8] | drw[8];

assign andw[9] = acand & dr_data[9] & ac_data[9];
assign addw[9] = acadd & sum[9];
assign drw[9] = acdr & dr_data[9];
assign alout[9] = andw[9] | addw[9] | drw[9];

assign andw[10] = acand & dr_data[10] & ac_data[10];
assign addw[10] = acadd & sum[10];
assign drw[10] = acdr & dr_data[10];
assign alout[10] = andw[10] | addw[10] | drw[10];

assign andw[11] = acand & dr_data[11] & ac_data[11];
assign addw[11] = acadd & sum[11];
assign drw[11] = acdr & dr_data[11];
assign alout[11] = andw[11] | addw[11] | drw[11];

assign andw[12] = acand & dr_data[12] & ac_data[12];
assign addw[12] = acadd & sum[12];
assign drw[12] = acdr & dr_data[12];
assign alout[12] = andw[12] | addw[12] | drw[12];

assign andw[13] = acand & dr_data[13] & ac_data[13];
assign addw[13] = acadd & sum[13];
assign drw[13] = acdr & dr_data[13];
assign alout[13] = andw[13] | addw[13] | drw[13];

assign andw[14] = acand & dr_data[14] & ac_data[14];
assign addw[14] = acadd & sum[14];
assign drw[14] = acdr & dr_data[14];
assign alout[14] = andw[14] | addw[14] | drw[14];

assign andw[15] = acand & dr_data[15] & ac_data[15];
assign addw[15] = acadd & sum[15];
assign drw[15] = acdr & dr_data[15];
assign alout[15] = andw[15] | addw[15] | drw[15];

endmodule
