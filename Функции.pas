unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Image1: TImage;
    Button4: TButton;
    ColorDialog1: TColorDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s:string;
  nf:integer;

implementation

uses Unit2;

{$R *.dfm}
function f(x:real):real;
begin
  case nf of
  0:f:=sin(x);
  1:f:=cos(x);
  2:f:=exp(x);
  3:f:=sin(x)/cos(x);
  end;
end;
procedure TForm1.Button1Click(Sender: TObject);
var a,b,c,x,y,ymax,ymin:real;
x1,y1,i,j,k:integer;
p:array[0..100] of Tpoint;
begin
nf:=form1.ListBox1.ItemIndex;
form1.Caption:=s+' '+form1.ListBox1.Items[form1.ListBox1.ItemIndex];
a:=strtofloat(form1.Edit1.Text); b:=strtofloat(form1.Edit2.Text);
if abs(a)>abs(b) then c:=abs(a)
else c:=abs(b);
ymax:=f(a); ymin:=f(a);
for i:=0 to 100 do
begin
x:=a+i*(b-a)/100;
if f(x)>ymax then ymax:=f(x); if f(x)<ymin then ymin:=f(x);
end;
for i:=0 to 100 do 
begin
x:=a+i*(b-a)/100; y:=f(x)/(ymax-ymin);
x1:=round(250+250*x/c);   y1:=round(250-500*y);
p[i].X:=x1; p[i].Y:=y1;
end;
form1.Image1.Canvas.Pen.Width:=(3);
form1.Image1.Canvas.Polyline(p);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Image1.Canvas.Pen.Color:=(clblack);
Form1.Image1.Canvas.Pen.width:=(1);
form1.Image1.Canvas.Rectangle(0,0,505,505);
form1.Image1.Canvas.Rectangle(0,248,498,250);
form1.Image1.Canvas.Rectangle(248,0,250,498);
Form1.Image1.Canvas.Pen.Color:=(ColorDialog1.Color);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,c,x,y,ymax,ymin:real;
x1,y1,i,j,k:integer;
p:array[0..100] of TPoint;
begin
if ColorDialog1.Execute then
form1.Image1.Canvas.Pen.Color:=ColorDialog1.Color;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Image1.Canvas.Pen.color:=(ColorDialog1.Color);
Form1.Image1.Canvas.Pen.width:=(1);
form1.Image1.Canvas.Rectangle(0, 248, 498, 250);
form1.Image1.Canvas.Rectangle(248, 0, 250, 498);
form1.ListBox1.ItemIndex:=0;
nf:=0;
s:=form1.Caption;
form1.Caption:=s+' '+form1.ListBox1.Items[form1.ListBox1.ItemIndex];
Form1.Image1.Canvas.Pen.Color:=(clblack);
Form1.Image1.Canvas.Pen.width:=(1);
form1.Image1.Canvas.Rectangle(0,0,505,505);
form1.Image1.Canvas.Rectangle(0,248,498,250);
form1.Image1.Canvas.Rectangle(248,0,250,498);
Form1.Image1.Canvas.Pen.Color:=(ColorDialog1.Color);
end;
end.
