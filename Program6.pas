const n=10;
var a: array [1..n] of Integer;
    i,m: Integer;
begin
Randomize;
for i:=1 to n do 
 a[i]:=-10+Random(21);
m:=a[1]; 
for i:=2 to n do 
if a[i]<m {3} then m:=a[i];
Write('A ='); 
for i:=1 to n do 
Write(' ',a[i]);
WriteLn;
for i:=1 to n do 
if a[i]>0 {1} then a[i]:=m;
Write('A''='); 
for i:=1 to n do 
Write(' ',a[i]); 
WriteLn;
end.