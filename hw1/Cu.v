`timescale 1ns/100ps

module cu(irin, s, scinr, clk, arld, arinr, pcinr, irld, memread, drld, acld, acand, acadd, acdr);

input [15:0] irin;
input scinr, clk;
output [2:0] s;
output arld, arinr, pcinr, irld, memread, drld, acld, acand, acadd, acdr;

reg [2:0] dir;
reg [11:0] air;
reg iir;
wire [2:0] sccnt;
wire scclr;

wire [7:0] t;
wire [7:0] d;
reg [2:0] sell;
wire [7:0] x;
reg [15:0] r_ir_data;

always@(negedge irld)
begin
	#1 r_ir_data <= irin;
end

always@(*)
begin
	iir <= r_ir_data[15];
	dir <= r_ir_data[14:12];
	air <= r_ir_data[11:0];
end

always@(*)
begin
	if(x[2]) sell <= 3'b010;
	else if(x[7]) sell <= 3'b111;
end

assign s = sell;
assign x[2] = t[0];
assign x[7] = t[1] | (iir & t[3] & (~d[7])) | ((d[0] | d[1]) & t[4] );

assign arld = ( iir & t[3] & (~d[7]) ) | t[2] | t[0];
assign arinr = d[5] & t[4];
assign pcinr = t[1];
assign irld = t[1];
assign memread = x[7];
assign drld = ( d[0] & t[4] ) | ( d[1] & t[4] ); 
assign acld = ( d[0] & t[5] ) | ( d[1] & t[5] );
assign acand = ( d[0] & t[5] );
assign acadd = ( d[1] & t[5] );
assign acdr = ( d[2] & t[5] );
assign scclr = ( d[0] | d[1] ) & t[5];

SequenceCounter u103(scinr, scclr, clk, sccnt);
decoder u104(1, sccnt, t);
decoder u105(1, dir, d);

endmodule
