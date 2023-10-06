//Testbench Code for Serial in Parallel in Serial out Register 
module PISO_Shift_Register_tb();

reg [3:0]B;
reg SL,clk,reset;
wire [3:0]Q;

PISO_Shift_Register dut(.B(B),.SL(SL),.clk(clk),.reset(reset),.Q(Q));

initial begin
SL=1'b0;
B=4'b1010;
clk=1'b0;
reset=1'b1;
#6  reset=1'b0;
#40 SL=1'b1;
//Add More test Cases Here
#50 $finish;

end

always #5 clk=~clk;

endmodule
