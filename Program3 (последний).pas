program ml;
var
 a:array [1..10] of integer;
 i:integer;
 k:integer;
begin
readln(a[1]);
readln(a[10]);
randomize;
for i:=2 to 9 do
a[i]:=random(10);
for i:=1 to 10 do
write(a[i]:3);
writeln;
k:=10;
for i:=2 to 9 do
if (a[i]>a[1]) and (a[i]<a[10]) then
k:=i;
if k<=9 then
writeln('k=',k)
else writeln('����� ��������� ���')
end.
