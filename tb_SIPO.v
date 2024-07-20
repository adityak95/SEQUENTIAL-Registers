`include"SIPO_reg.v"
module tb;
parameter WIDTH=5;
reg clk,clr,si;
wire [WIDTH-1:0]so;
wire [WIDTH-1:0]out;
SIPO_reg dut(.*);
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
$monitor($time,"\tclk=%b,clr=%b,si=%b,so=%b,out=%b",clk,clr,si,so,out);
#150;
$finish();
end
endmodule

