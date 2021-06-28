
module SequenceCounter(sc_inr, sc_clr, clk, sc_out);

input sc_inr, sc_clr;
input clk;
output [2:0] sc_out;
reg [2:0] sc_out;

initial
begin
	sc_out <= 0;
end

always@(posedge clk) begin
	if(sc_clr) sc_out <= 0;
	else if(sc_inr) begin
		if(sc_out == 7) sc_out = 0;
		else sc_out = sc_out + 1;
	end
end

endmodule
