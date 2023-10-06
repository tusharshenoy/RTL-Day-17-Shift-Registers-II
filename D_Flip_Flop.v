//Verilog Code for D Flip Flop
module D_Flip_Flop(D, reset, clk, Q, Qb);
 input D, reset, clk;
 output reg Q, Qb;
 
 always @(posedge clk,posedge reset) 
 begin
 if (reset == 1) 
 Q<=1'b0;
 else
 begin
 Q<=D;
 end
 Qb<=~Q;
 end
endmodule
