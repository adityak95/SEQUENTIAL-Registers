module PISO(clk,clr,shift,x,out,so);
parameter WIDTH=4;
input clk,clr,shift;
input [WIDTH-1:0]x;
output reg out;
output reg [WIDTH-1:0] so;
reg [WIDTH-1:0]temp;
assign temp=x;
genvar i;
generate for (i=0;i<=WIDTH-1;i=i+1)begin 
		assign so[i]=temp[i];
end
endgenerate
//assign so[0]=temp[3];
//assign so[1]=temp[2];
//assign so[2]=temp[1];
//assign so[3]=temp[0];
assign out=so[0];

always@(posedge clk)begin 
	if(clr)begin 
		out=1'b0;
	end
	else begin 
		if(shift)begin 
			temp<=temp>>1;
		end
		else temp<=x;
	end
end
endmodule
