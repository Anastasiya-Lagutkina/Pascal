const
n=10;
var a:array[1..n] of integer;
    r,min,maxlnt:real;
    i,index:integer;
begin
writeln('¬ведите r:');
readln(r);
write('¬ведите элементы массива:');
for i:=1 to n do
read (A[i]);
min:=maxlnt;
for i:=1 to n do
if min>abs(a[i]-r) then
begin
min:=abs(a[i]-r);
index:=i
end;
writeln('closest=a[',index,']=',a[index]:4);
end.