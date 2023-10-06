//Verilog Code for  Parallel in Parallel out Register 
module PIPO_Shift_Register(B,clk,reset,Q);

input [3:0]B;
input clk,reset;
output[3:0]Q;


D_Flip_Flop FF3(.D(B[3]),.reset(reset),.clk(clk),.Q(Q[3]));

D_Flip_Flop FF2(.D(B[2]),.reset(reset),.clk(clk),.Q(Q[2]));

D_Flip_Flop FF1(.D(B[1]),.reset(reset),.clk(clk),.Q(Q[1]));

D_Flip_Flop FF0(.D(B[0]),.reset(reset),.clk(clk),.Q(Q[0]));

endmodule
