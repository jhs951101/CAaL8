
module bus(s, mem_data, ar_data, pc_data, ir_data, dr_data, ac_data, tr_data, bus_data);

input [2:0] s;
input [15:0] mem_data, ir_data, dr_data, tr_data, ac_data;
input [11:0] ar_data, pc_data;
output [15:0] bus_data;

mux u0(0, ar_data, pc_data, dr_data, ac_data, ir_data, tr_data, mem_data, s, bus_data);

endmodule
