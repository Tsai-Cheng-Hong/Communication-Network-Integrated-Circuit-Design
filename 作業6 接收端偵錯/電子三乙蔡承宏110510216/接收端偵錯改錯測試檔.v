module SISO_test;
reg clk,reset,in;

wire [6:0] r;
wire [2:0] s;
wire [6:0] t;
wire [6:0] e;

idontknow d1(clk,reset,in,r,s,t,e);
  initial
    begin
      in=1'd0; 
      clk = 1'b1;
      reset = 1'b1;
      #10 reset= 1'b0; 
      #20 in=1'b1;
      #20 in=1'b0;
      #20 in=1'b0;
      #20 in=1'b1;
      #20 in=1'b1;      
      #20 in=1'b0;
      #20 in=1'b0;      
      #20 in=1'b1;

   end
   always #10 clk = ~clk;
 initial
   #100000 $finish;
 endmodule

