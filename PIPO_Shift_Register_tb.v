//Testbench Code for Parallel in Parallel out Register 
module PIPO_Shift_Register_tb();

reg [3:0]B;
reg clk,reset;
wire [3:0]Q;

PIPO_Shift_Register dut(.B(B),.clk(clk),.reset(reset),.Q(Q));

initial begin
B=4'b0000;
clk=1'b0;
reset=1'b1;
#6  reset=1'b0;
#8 B=4'b1010;
#8 B=4'b0011;
#8 B=4'b1001;
#8 B=4'b0110;
#18 B=4'b0101;
//Add More test Cases Here
#8 $finish;

end

always #5 clk=~clk;

endmodule
