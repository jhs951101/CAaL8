`timescale 1ns/100ps

module ar(arld, arclr, arinr, clk, arin, arout);

input [11:0] arin;
output [11:0] arout;
input arclr, arinr, arld;
input clk;

reg [11:0] r_ar;

initial
begin
	#1 r_ar <= 0;
end

assign arout = r_ar;

always@(posedge clk)
begin
	if(arclr) r_ar <= 0;
	else if(arinr) r_ar <= r_ar + 1;
	else /*#5*/ if(arld) r_ar <= arin;
end

endmodule
