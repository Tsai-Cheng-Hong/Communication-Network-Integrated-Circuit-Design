module SISO_test;
reg clk,reset,in;
wire v0,v1,v2;
wire [6:0] v;
wire [3:0] u;

SISO d1(clk,reset,in,u,v,v0,v1,v2);
  initial
    begin
      in=1'd0;
      clk = 1'b1;
      reset = 1'b1;
      #10 reset= 1'b0;
      #10 in=1'd1;
      #10 in=1'd0;
      #10 in=1'd0;
      #10 in=1'd1;



   end
   always #10 clk = ~clk;
 initial
   #100000 $finish;
 endmodule

