`timescale 1ns/100ps

module ir(irld, clk, irin, irout);

input [15:0] irin;
output [15:0] irout;
input irld;
input clk;

reg [15:0] r_ir;

initial
begin
	#1 r_ir <= 0;
end

assign irout = r_ir;

always@(posedge clk)
begin
	/*#5*/ if(irld) r_ir <= irin;
end

endmodule
