module taset;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
integer ia,ib;

fulladd4 fa4(sum,cout,a,b,cin);
initial begin
  a=0;
  b=0;
  cin=0;

  for(ia=0;ia<=1;ia=ia+1)
    begin
    #10 a=ia;
    for(ib=0;ib<=8;ib=ib+1)
    begin
      #10 b=ib;
     end
    end

    #10 $finish;
 end
 endmodule

