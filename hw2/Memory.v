`timescale 1ns/100ps

module mem(read, write, i, memin, memout);

input [15:0] memin;
input [11:0] i;
input read, write;
output reg [15:0] memout;

reg [15:0] MEM[0:9];

initial
begin
	memout <= 0;
end

initial
begin
MEM[0] <= 16'h0x9004;
MEM[1] <= 16'h0x8005;
MEM[2] <= 16'h7020;
MEM[3] <= 16'h7080;
MEM[4] <= 16'h0x08a2;
MEM[5] <= 16'h0x0055;
MEM[6] <= 16'ha0ee;
MEM[7] <= 16'h00dd;
MEM[8] <= 16'hf811;
MEM[9] <= 16'hf4cc;
end

always@(posedge read or posedge write)
begin
	if(write) MEM[i] <= memin;
	else #1 if(read) memout <= MEM[i];
end

endmodule
