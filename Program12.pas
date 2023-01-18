const nmax=100;
var a:array[1..nmax] of integer;
    n,i,j,i1,i2:byte;
    mn:integer;
begin
randomize;
repeat
write('Размер массива до ',nmax,' n=');
readln(n);
until n in [1..nmax];
writeln('Массив:');
for i:=1 to n do
 begin
  a[i]:=random(100);
  write(a[i]:3);
 end;
writeln;
writeln;
mn:=abs(a[1]-a[2]);
i1:=1;
i2:=2;
for i:=1 to n-1 do
for j:=i+1 to n do
if abs(a[i]-a[j])<mn then
 begin
  mn:=abs(a[i]-a[j]);
  i1:=i;
  i2:=j;
 end;
writeln('Минимальная разность=',mn,' элементы № ',i1,',',i2);
readln
end.