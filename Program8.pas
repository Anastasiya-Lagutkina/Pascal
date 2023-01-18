const
nmax=20;
var a:array[1..nmax] of integer;
    x:integer;
    i,n,key:integer;
begin
 Writeln('Направление сдвига(1-влево,2-вправо):');
 Readln(key);
  Repeat
  Write('Размер массива(не более',nmax,'):');
  Readln(n);
 until n in [1..nmax];
 Writeln('Введите n элементов массива');
 for i:=1 to n do
begin
Write ('A[',i,']=');
Readln(a[i]);
end;
case Key of
1:
begin
x:=a[1];
for i:=1 to n-1 do a[i]:=a[i+1];
a[n]:=x;
end;
2:
begin
x:=a[n];
for i:=n downto 2 do a[i]:=a[i-1];
a[1]:=x;
end;
end;
Writeln('После сдвига:');
for i:=1 to n do
Write(a[i],'');
end.