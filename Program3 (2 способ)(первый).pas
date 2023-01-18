program ml;
var
 a:array [1..10] of integer;
 i:integer;
begin
readln(a[1]);
readln(a[10]);
randomize;
for i:=2 to 9 do
a[i]:=random(10);
for i:=1 to 10 do
write(a[i]:3);
writeln;
i:=2;
while(i<10) and ((a[1]>a[i]) or (a[i]<a[10]))do
inc(i);// i:=i+1;
if i=10 then writeln('Таких элементов нет')
else writeln('i=',i);
end.
