//Verilog Code for  Parallel in Serial out Shift Register 
module PISO_Shift_Register(B,SL,clk,reset,Q);

input [3:0]B;
input SL,clk,reset;
output[3:0]Q;

wire [9:0]w;
not N(w[0],SL);

and A1(w[1],SL,Q[0]);
and A2(w[2],w[0],B[1]);
and A3(w[3],SL,Q[1]);
and A4(w[4],w[0],B[2]);
and A5(w[5],SL,Q[2]);
and A6(w[6],w[0],B[3]);

or O1(w[7],w[1],w[2]);
or O2(w[8],w[3],w[4]);
or O3(w[9],w[5],w[6]);

D_Flip_Flop FF1(.D(B[0]),.reset(reset),.clk(clk),.Q(Q[0]));

D_Flip_Flop FF2(.D(w[7]),.reset(reset),.clk(clk),.Q(Q[1]));

D_Flip_Flop FF3(.D(w[8]),.reset(reset),.clk(clk),.Q(Q[2]));

D_Flip_Flop FF4(.D(w[9]),.reset(reset),.clk(clk),.Q(Q[3]));

endmodule
