module fulladd4(sum,cout,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire c1,c2,c3;
fulladd fa0(sum[0],c1,a[0],b[0],cin);
fulladd fa1(sum[1],c2,a[1],b[1],c1);
fulladd fa2(sum[2],c3,a[2],b[2],c2);
fulladd fa3(sum[3],cout,a[3],b[3],c3);
endmodule



module fulladd(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;
wire s1,s2,s3;
and(s1,a,b);
and(s2,a,cin);
and(s3,b,cin);
or(cout,s1,s2,s3);
xor(sum,a,b,cin);
endmodule



