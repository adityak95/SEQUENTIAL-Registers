module left_reg(clk,clr,out,si,so);
parameter WIDTH=8;
input clk,clr,si;
output reg out;
output reg [WIDTH-2:0] so;
reg [WIDTH-1:0]temp;
assign so=temp;
assign out=temp[WIDTH-1];
always@(posedge clk)begin
	if(clr) temp<=0;
	else begin 
	temp<=temp<<1;
	temp[0]<=si;
	end
end
endmodule
