const
  n=10;
var
  r,i:integer;
  arr:array[1..n] of integer;
  min,j:integer;
begin
  randomize;
  write('R= ');
  readln(r);
  for i:=1 to n do
    begin
      arr[i]:=random(20)+1;
      write(arr[i]:3);
    end;
  writeln;
  j:=1;
  min:=abs(arr[j]+arr[j+1]-r);
  for i:=2 to n-1 do
    if abs(arr[i]+arr[i+1]-r)<min then
      begin
        min:=abs(arr[i]+arr[i+1]-r);
        j:=i;
      end;
  writeln('arr[',j,']=',arr[j],' ','arr[',j+1,']=',arr[j+1]);
  readln;
end.