module h3(a,b,s);
input [1:0] a,b;
output [3:0] s;

and(s[0],a[0],b[0]);
and(a1b0,a[1],b[0]);
and(a0b1,a[0],b[1]);
adder a1(a1b0,a0b1,s[1],c1);
and(a1b1,a[1],b[1]);
adder a2(c1,a1b1,s[2],s[3]);

endmodule

module adder(a,b,s,co);
input a,b;
output s,co;

and(co,a,b);
xor(s,a,b);

endmodule
