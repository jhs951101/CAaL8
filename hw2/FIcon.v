
module ficon(clk, scinr, cin);

input clk, scinr, cin;

wire [15:0] w_sys_bus, w_ir_data, w_mem_data, w_dr_data, w_ac_data;
wire [11:0] w_pc_data, w_ar_data;

wire [2:0] sel;
wire arldw, arinrw, pcinrw, irldw, mreadw, drldw, acldw, acandw, acaddw, acdrw;
wire [15:0] alout;
reg e = 0; 
wire ew;

always@(posedge clk or negedge clk) begin
	if(ew) e <= ew;
end

ar u2(arldw, 1'b0, arinrw, clk, w_sys_bus, w_ar_data);
pc u3(1'b0, 1'b0, pcinrw, clk, w_sys_bus, w_pc_data);
ir u4(irldw, clk, w_sys_bus, w_ir_data);
mem u5(mreadw, 1'b0, w_ar_data, w_sys_bus, w_mem_data);
dr u6(drldw, 1'b0, 1'b0, clk, w_sys_bus, w_dr_data);

bit1AdderLogic u10(w_ac_data, w_dr_data, acandw, acaddw, acdrw, cin, ew, alout);
bit1ac u26(acldw, 1'b0, clk, alout, w_ac_data);

cu u7(.irin(w_ir_data), .s(sel), .scinr(scinr), .clk(clk),
	.arld(arldw), .arinr(arinrw), .pcinr(pcinrw), .irld(irldw), .memread(mreadw), .drld(drldw), .acld(acldw),
	.acand(acandw), .acadd(acaddw), .acdr(acdrw));

bus u1(sel, w_mem_data, w_ar_data, w_pc_data, w_ir_data, w_dr_data, w_ac_data, 0, w_sys_bus);

/*
assign w_sys_bus = (sel == 3'b010) ? w_pc_data :
			(sel == 3'b101) ? w_ir_data :
			(sel == 3'b001) ? w_ar_data :
			(sel == 3'b111) ? w_mem_data :
			(sel == 3'b011) ? w_dr_data :
						16'bz;
*/

endmodule
