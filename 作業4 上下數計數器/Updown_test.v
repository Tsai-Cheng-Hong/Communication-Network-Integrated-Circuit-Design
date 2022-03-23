module Up_counter_test;
  reg clock;
  reg reset;
  wire [7:0] a,b;

  updown d1(a,b,clock,reset);
  initial
    begin
      clock = 1'b1;
      reset = 1'b1;
      #5 reset= 1'b0;
   end
   always #10 clock = ~clock;
 initial
   #100000 $finish;
 endmodule

