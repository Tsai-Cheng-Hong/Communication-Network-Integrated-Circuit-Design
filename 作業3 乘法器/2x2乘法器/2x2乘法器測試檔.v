module h3test;
reg [1:0] a,b;
wire [3:0] s;

h3 h3(a,b,s);

initial begin

a = 0; b = 0;

#10 b = 2'b01;
#10 b = 2'b10;
#10 b = 2'b11;

#10 a = 2'b01; b = 2'b00;
#10 b = 2'b01;
#10 b = 2'b10;
#10 b = 2'b11;

#10 a = 2'b10; b = 2'b00;
#10 b = 2'b01;
#10 b = 2'b10;
#10 b = 2'b11;

#10 a = 2'b11; b = 2'b00;
#10 b = 2'b01;
#10 b = 2'b10;
#10 b = 2'b11;


#10 $finish;
end

endmodule
