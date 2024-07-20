module SIPO_reg(clk,clr,out,si,so);
parameter WIDTH=5;
input clk,clr,si;
output reg [WIDTH-1:0] so;
output reg [WIDTH-1:0]out;
reg [WIDTH-1:0]temp;
assign so =temp;
assign out=so;
always@(posedge clk)begin
	if(clr) temp<=0;
	else begin 
	temp<=temp<<1;
	temp[0]<=si;
	end
end
endmodule

