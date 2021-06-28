`timescale 1ns/100ps

module ficon_test();

reg clk, scinr, cin;

ficon ficon_unit(clk, scinr, cin);

initial begin
	clk <= 0;
	scinr <= 8;
	cin <= 0;

	#5 scinr <= 0;

	#10;
	scinr <= 1;
	#50;
end

always #5 clk <= ~clk;

endmodule
