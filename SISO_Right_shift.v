module right_reg(clk,clr,out,si,so0,so1,so2);
input clk,clr,si;
output reg out ,so0,so1,so2;
reg [3:0]temp;
assign out=temp[0];
assign so0=temp[1];
assign so1=temp[2];
assign so2=temp[3];
always@(posedge clk)begin
	if(clr) temp<=4'b0000;
	else begin 
	temp<=temp>>1;
	temp[3]<=si;
	end
end
endmodule

