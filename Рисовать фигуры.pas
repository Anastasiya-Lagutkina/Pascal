unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TForm2 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    ColorDialog1: TColorDialog;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  x1,y1,x2,y2,kod,d,ra,m:integer;
  r:real;
  q:array[1..100] of TPoint;
  cw:TColor;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
ColorDialog1.Execute;
cw:=ColorDialog1.Color;
Image1.Canvas.Pen.Color:=cw;
end;

procedure TForm2.FormClick(Sender: TObject);
var k:integer;
begin
if RadioGroup1.ItemIndex=0 then
case RadioGroup2.ItemIndex of
5: begin for k:=m+1 to 100 do q[k]:=q[m]; Image1.Canvas.Polyline(q); end;
6: begin for k:=m+1 to 100 do q[k]:=q[1]; Image1.Canvas.Polyline(q); end;
end;
m:=0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.Image1.Canvas.Brush.Color:=clWhite;
form2.Image1.Canvas.Pen.Color:=clRed;
kod:=0; d:=20; m:=0;
end;
procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if RadioGroup1.ItemIndex=0 then
case RadioGroup2.ItemIndex of
0: begin Image1.Canvas.MoveTo (X,Y); kod:=1; end;
1: begin x1:=X; y1:=Y; kod:=1; end;
2: begin x1:=X; y1:=Y; kod:=1; end;
3: begin x1:=X; y1:=Y; kod:=1; end;
4: begin x1:=X; y1:=Y; kod:=1; end;
5: begin m:=m+1; q[m] .X:=X; q[m] .Y:=Y; Image1.Canvas.Ellipse(X-5,Y-5,X+5,Y+5); end;
6: begin m:=m+1; q[m] .X:=X; q[m] .Y:=Y; Image1.Canvas.Ellipse(X-5,Y-5,X+5,Y+5); end;
end;
if RadioGroup1.ItemIndex=1 then kod:=1;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if (RadioGroup1.ItemIndex=0) and (kod=1) then
case RadioGroup2.ItemIndex of
0: begin Image1.Canvas.LineTo(X,Y); end;
1: begin Image1.Canvas.Pen.Color:=clWhite;
         Image1.Canvas.MoveTo(X1,Y1); Image1.Canvas.LineTo(X2,Y2);
         Image1.Canvas.Pen.Color:=cw;
         Image1.Canvas.MoveTo(X1,Y1); Image1.Canvas.LineTo(X,Y);
         x2:=X; y2:=Y; end;
end;
if (RadioGroup1.ItemIndex=1) and (kod=1) then
begin
Image1.Canvas.Pen.Color:=clWhite; d:=strtoint(Edit1.Text);
Image1.Canvas.Rectangle(x,y,x+d,y+d);
end;
end;

procedure TForm2.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image1.Canvas.Pen.Color:=cw;
if (RadioGroup1.ItemIndex=0) and (kod=1) then
case RadioGroup2.ItemIndex of
1: begin x2:=X; y2:=Y; end;
2: begin x2:=X; y2:=Y; Image1.Canvas.Ellipse(X1,Y1,X2,Y2); end;
3: begin x2:=X; y2:=Y; Image1.Canvas.Rectangle(X1,Y1,X2,Y2); end;
4: begin x2:=X; y2:=Y; r:=sqrt(sqr(x2-x1) + sqr(y2-y1)); ra:=round(r);
Image1.Canvas.Ellipse(X1-ra,Y1-ra,X1+ra,Y1+ra); end;
end;
kod:=0;
end;

end.
