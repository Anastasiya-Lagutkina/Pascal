const n=10;
var A:array[1..n] of integer;
    i:integer;
begin
randomize;
for i:=1 to n do
a[i]:=random(20);
for i:=1 to n do
write (a[i]:4);
writeln;
for i:=n downto 1 do
write (a[i]:4);
writeln;
for i:=1 to n do 
if (i mod 2)=0 then
write (a[i]:4);
end.