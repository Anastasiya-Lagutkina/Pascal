const
nmax=20;
var a:array[1..nmax] of integer;
    x:integer;
    i,n,key:integer;
begin
 Writeln('����������� ������(1-�����,2-������):');
 Readln(key);
  Repeat
  Write('������ �������(�� �����',nmax,'):');
  Readln(n);
 until n in [1..nmax];
 Writeln('������� n ��������� �������');
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
Writeln('����� ������:');
for i:=1 to n do
Write(a[i],'');
end.