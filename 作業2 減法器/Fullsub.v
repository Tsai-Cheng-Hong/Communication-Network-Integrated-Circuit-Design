module fullsub4(sum,cout,a,b,cin);
output[3:0] sum;
output cout;
input [3:0] a,b;
input cin;
wire c1,c2,c3;
fullsub fs0(sum[0],c1,a[0],b[0],cin);
fullsub fs1(sum[1],c2,a[1],b[1],c1);
fullsub fs2(sum[2],c3,a[2],b[2],c2);
fullsub fs3(sum[3],c4,a[3],b[3],c3);
endmodule

module fullsub(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;
wire s1,s2,s3;
not(ainv,a);
and(s1,ainv,b);
and(s2,ainv,cin);
and(s3,b,cin);
or(cout,s1,s2,s3);
xor(sum,a,b,cin);
endmodule


