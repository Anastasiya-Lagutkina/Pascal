unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PaintFace (x,y:integer);
    procedure EraseFace(x,y: integer);
  end;

var
  Form1: TForm1;
  fx,fy: integer;
  n: integer;
  p: integer;

implementation

{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
fx:=100;
fy:=100;
Randomize;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
inc(n);
if (x > fx) and (x < fx+30) and
(y > fy) and (y < fy+30) then
begin
 inc(p);
 Label2.Font.Color:=clGreen;
 Label2.Caption:='Попал!';
end
else
 begin
  Label2.Font.Color:=clRed;
  Label2.Caption:='Мазила!';
 end;

if n = 10 then
begin
Timer1.Enabled := False;
ShowMessage('Выстрелов: 10. Попаданий: ' +IntToStr(p)+'.');
EraseFace(fx,fy);
Label1.Visible := True;
Button1.Visible := True;
end;
end;

procedure TForm1.PaintFace(x,y: integer);
begin
Canvas.Pen.Color := clBlack;
Canvas.Brush.Color := clYellow;
Canvas.Ellipse(x,y,x+30,Y+30);
Canvas.Ellipse(x+9,y+10,x+11,y+13);
Canvas.Ellipse(x+19,y+10,x+21,y+13);
Canvas.Arc(x+4,y+4,x+26,y+26,x,y+20,x+30,y+20);
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
EraseFace(fx,fy);
fx:= Random(ClientWidth-30);
fy:= Random(ClientHeight-30);
PaintFace(fx,fy);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Label1.Visible := False;
Button1.Visible := False;
Timer1.Enabled := True;
n:=0;
p:=0;
end;

procedure TForm1.EraseFace(x,y: integer);
begin
Canvas.Pen.Color := clBtnFace;
Canvas.Brush.Color := clBtnFace;
Canvas.Ellipse(x,y,x+30,y+30);
end;

end.
