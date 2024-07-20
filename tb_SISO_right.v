`include"SISO_Right_shift.v"
module tb;
reg clk,clr,si;
wire out,so0,so1,so2;
right_reg dut(.*);
always begin 
clk=0;clr=1;
forever #5 clk=~clk;
end
initial begin
#5;
clr=0;
repeat(10)begin 
si=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'b1;
//#10 si=1'b0;
end
end
initial begin
$monitor($time,"\tclk=%b,clr=%b,si=%b,so2=%b,so1=%b,so0=%b,out=%b",clk,clr,si,so2,so1,so0,out);
#150;
$finish();
end
endmodule

