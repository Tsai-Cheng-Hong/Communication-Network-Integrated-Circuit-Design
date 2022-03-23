module idontknow(clk,reset,in,r,s,t,e);
input clk, reset, in;


output [6:0] r;
reg [6:0] r;
output [2:0] s;
wire [2:0] s;
output[6:0] t;
wire [6:0] t;
output [6:0] e;



always@(posedge clk)
begin
   if (reset)
   begin   
    r=0;  
   end
    else
    begin
    r[6]=r[5];
    r[5]=r[4];
    r[4]=r[3];
    r[3]=r[2];
    r[2]=r[1];
    r[1]=r[0];
    r[0]=in;

    end
end

xor(s[0],r[0],r[3],r[5],r[6]);
xor(s[1],r[1],r[3],r[4],r[5]);
xor(s[2],r[2],r[4],r[5],r[6]);


// 3/25
not(ns2,s[2]);
not(ns1,s[1]);
not(ns0,s[0]);

and(e[0],s[0],ns1,ns2);
and(e[1],ns0,s[1],ns2);
and(e[2],ns0,ns1,s[2]);
and(e[3],s[0],s[1],ns2);
and(e[4],ns0,s[1],s[2]);
and(e[5],s[0],s[1],s[2]);
and(e[6],s[0],ns1,s[2]);

xor(t[0],r[0],e[6]);
xor(t[1],r[1],e[5]);
xor(t[2],r[2],e[4]);
xor(t[3],r[3],e[3]);
xor(t[4],r[4],e[2]);
xor(t[5],r[5],e[1]);
xor(t[6],r[6],e[0]);




endmodule

