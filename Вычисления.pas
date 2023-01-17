unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function fib(n:integer):integer;
begin
  if n<2 then fib:=1
  else fib:=fib(n-1)+fib(n-2);
end;

procedure TForm1.Button1Click(Sender: TObject);
var c,x,y,s,e,el:real;
    k:integer;
begin
memo1.Lines.Add('синус sin(x)=');
x:=strtofloat(form1.Edit1.Text);
e:=strtofloat(form1.Edit2.Text);
y:=sin(x);
memo1.Lines.Add('x='+floattostr(x)+' e='+floattostr(e));
k:=0;
s:=x; c:=x;
repeat
  k:=k+1;
  c:=c*(-1)*x*x/(2*k*(2*k+1));
  s:=s+c;
  el:=abs(c);
  memo1.Lines.Add('s='+floattostr(s)+' el='+floattostr(el));
until el<e ;
memo1.Lines.Add('y(x)='+floattostr(s)+' точное='+floattostr(y));
end;

procedure TForm1.Button2Click(Sender: TObject);
var c,x,y,s,e,el:real;
    k:integer;
begin
memo1.Lines.Add('экспонента exp(x)=');
x:=strtofloat(form1.Edit1.Text);
e:=strtofloat(form1.Edit2.Text);
y:=exp(x);
memo1.Lines.Add('x='+floattostr(x)+' e='+floattostr(e));
k:=0;
s:=1; c:=1;
repeat
  k:=k+1;
  c:=c*x/k;
  s:=s+c;
  el:=abs(c);
  memo1.Lines.Add('s='+floattostr(y)+' el='+floattostr(el));
until el<e;
memo1.Lines.Add('y(x)='+floattostr(s)+' точное='+floattostr(y));
end;

procedure TForm1.Button3Click(Sender: TObject);
var c,x,y,s,e,el:real;
    k:integer;
begin
x:=strtofloat(form1.Edit1.Text);
e:=strtofloat(form1.Edit2.Text);
memo1.Lines.Add('корень sqrt(x)=');
y:=sqrt(x);
memo1.Lines.Add('x='+floattostr(x)+' e='+floattostr(e));
k:=0;
s:=1; c:=1;
repeat
  k:=k+1;
  c:=s;
  s:=s/2+x/(2*s);
  el:=abs(s-c);
  memo1.Lines.Add('s='+floattostr(s)+' el='+floattostr(el));
until el<e;
memo1.Lines.Add('y(x)='+floattostr(s)+' точное='+floattostr(y));
end;

procedure TForm1.Button4Click(Sender: TObject);
var c,x,y,s,e,el: real;
    k:integer;
begin
memo1.Lines.Add('косинус cos(x)=');
 x:=strtofloat(form1.Edit1.Text);
e:=strtofloat(form1.Edit2.Text);
y:=cos(x);
memo1.Lines.Add('x='+floattostr(x)+' e='+floattostr(e));
k:=0;
s:=x; c:=x;
repeat
  k:=k+1;
  c:=c*(-1)*x*x/(2*k*(2*k+1));
  s:=s+c;
  el:=abs(c);
  memo1.Lines.Add('s='+floattostr(s)+' el='+floattostr(el));
until el<e ;
memo1.Lines.Add('y(x)='+floattostr(s)+' точное='+floattostr(y));
end;

procedure TForm1.Button5Click(Sender: TObject);
var i:integer;
begin
for i:=1 to 20 do
  label1.Caption:=Label1.Caption+Inttostr(fib(i))+',';

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
memo1.Clear;
end;

end.


