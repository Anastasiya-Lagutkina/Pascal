const n=10;
var A:array[1..n] of integer;
    i:integer;
begin
randomize;
for i:=1 to n do
begin
a[i]:=random(100);
write (a[i]:7);
end;
writeln;
for i:=2 to n-1 do 
 if (a[i] mod 2=0) then a[i]:=a[i]+a[1]
else
a[i]:=a[i]+a[n];
for i:=1 to n do write (a[i]:7);
readln
end.