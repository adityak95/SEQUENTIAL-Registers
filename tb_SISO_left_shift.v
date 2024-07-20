`include"SISO_left_shift.v"
module tb;
parameter WIDTH=8;
reg clk,clr,si;
wire out;
wire [WIDTH-2:0] so;
left_reg dut(.*);
always begin 
clk=0;clr=1;
forever #5 clk=~clk;
end
initial begin
#5;
clr=0;
repeat(10)begin 
{si}=$random;
#10;
end
end
initial begin
$monitor($time,"\tclk=%b,clr=%b,out=%b,so=%b,si=%b",clk,clr,out,so,si);
#150;
$finish();
end
endmodule
