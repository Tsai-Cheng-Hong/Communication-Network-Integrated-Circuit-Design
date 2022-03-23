module SISO(clk,reset,in,u,v,v0,v1,v2);
input clk, reset, in;
output v0,v1,v2;

output [6:0] v;

output [3:0] u;
reg [3:0] u;



always@(posedge clk)
begin
   if (reset)
   begin   
    u=0;
   end
    else
    begin
    u[3]=u[2];
    u[2]=u[1];
    u[1]=u[0];
    u[0]=in;
    end
end


xor(v0,u[3],u[0],u[2]);
xor(v1,u[0],u[1],u[2]);
xor(v2,u[3],u[2],u[1]);

assign v[3]=u[3];
assign v[2]=u[2];
assign v[1]=u[1];
assign v[0]=u[0];
assign v[6]=v2;
assign v[4]=v1;
assign v[5]=v0;



endmodule

