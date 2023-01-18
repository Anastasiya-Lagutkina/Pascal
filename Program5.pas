const N=10;
var m: array[0..N] of integer;
    t,o: integer;
    c, k1,k2,i, min, max: integer;
begin
randomize;
for i:=0 to N do
m[i]:=random(50);
min:=m[0]; 
max:=m[0];
for i:= 0 to N do 
begin
if (m[i]>max) then 
begin
max:=m[i];
k1:=i
end;
if (m[i]<min) then begin
min:=m[i];
k2:=i
end
end;
writeln(m[k1],' ',m[k2]);
c:=min;
min:=max;
max:=c;
end.