var a:array[1..10] of integer;
    i,k,N:integer;
begin
write('������� N:');
readln(N);
write('������� �������� �������:');
for i:=1 to N do 
read (A[i]);

k:=0;
for i:=1 to N-1 do
if abs(A[i]-A[i+1]) mod 2=0 then
begin
k:=i;
break;
end;
writeln(k);
end.


