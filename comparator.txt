module comp(a,b,x,y,z)
input[3:0]a,b;
output x,y,z;
reg x,y,z;
always @(a,b)
begin
if(a<b)x=1'b1;
else x=1'b0;
if(a>b)y=1'b1;
else y=1'b0;
if(a==b)z=1'b1;
else z=1'b0;
end
end module 

