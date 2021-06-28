`timescale 1ns/100ps

module jkFlipFlop(ini, clk, j, k, q);

input ini;
input clk;
input j, k;
output q;

reg r_q;

initial begin
	#1 r_q <= ini;
end

assign q = r_q;

always@(posedge clk) begin
	if(j && !k) r_q <= 1'b1;
	else if(!j && k) r_q <= 1'b0;
	else if(j && k) r_q <= ~r_q;
end

endmodule
