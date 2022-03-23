module updown(a,b,clock,reset);
input clock,reset;
output [7:0] a,b;
reg [7:0] a,b;

always@(posedge clock)
begin
  if (reset)
  begin
    a=0;b=0;
  end

  else if (b==0)
  begin
    if (a==60)
    b=1;
    else 
    a=a+3;
  end

  else if (b==1)
  begin
    if (a==0)
    b=0;
    else
    a=a-2;
  end
end

endmodule
    

