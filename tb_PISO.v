`include"PISO.v"
module tb;
parameter WIDTH=6;
reg clk,clr,shift;
reg [WIDTH-1:0]x;
wire out;
wire [WIDTH-1:0] so;

PISO #(.WIDTH(WIDTH)) dut(.*);
always #5 clk=~clk;
initial $monitor($time,"\tclk=%b,clr=%b,shift=%b,x=%b,so=%b,out=%b",clk,clr,shift,x,so,out);
initial #150 $finish();
initial begin 
clk=0;clr=1;
repeat(2)@(posedge clk);
clr=0;shift=1;
{x}=$random;
#50;
shift=0;
{x}=$random;
end
endmodule
