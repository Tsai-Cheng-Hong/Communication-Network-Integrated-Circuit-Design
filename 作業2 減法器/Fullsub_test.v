module FS_test;
reg [3:0] a,b;
reg cin;
integer ia,ib;
wire [3:0] s;
wire cout;

fullsub4 fs4(s,cout,a,b,cin);
initial begin
a=0;
b=0;
cin=1;

for(ia=15;ia<=15;ia=ia+1)
 begin
  #10 a=ia;
    for(ib=0;ib<=15;ib=ib+1)
     begin
      #10 b=ib;
     end
 end
#10 $finish;

end
endmodule


