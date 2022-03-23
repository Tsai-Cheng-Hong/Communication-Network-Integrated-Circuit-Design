module ini (clk,reset,count,frame,out,in,flag);
input clk,reset,in;
output frame;
output [7:0] count;
reg [7:0] count;
reg frame;

output [3:0]out;
reg [3:0] out;

output flag;
reg flag;

always@(clk)
begin
   if (reset)
   begin
   count=0; frame=0; out=0; flag=0;
   end
   else if (count==192)
   count=0;
   else 
   count=count+1;
end

always@(count)
begin
  if (count==192 && out==4'b1001)
  begin
  frame=1;
  end
  else
  frame=0;
end

always@(clk)
begin
  out[5] = out[4];
  out[4] = out[3];
  out[3] = out[2];
  out[2] = out[1];
  out[1] = out[0];
  out[0] = in;
end

always@(clk or frame or out)
begin
  if (out==4'b1001 && frame == 1 && count==192)
  begin
  flag=1;
  end
end

always@(out)
begin
  if (flag==1)
  begin
    if (out == 4'b1001)
    flag=1;
    else if (out == 4'b0011)
    flag=1;
    else if (out == 4'b0110)
    flag=1;
    else if (out == 4'b1100)
    flag=1;
    else
    flag=0;
  end
end

endmodule
