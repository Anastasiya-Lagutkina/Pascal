unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Image1.Canvas.Pen.Color:=clMaroon;
Image1.Canvas.Brush.Color:=clYellow;
Image1.Canvas.Rectangle(30,150,330,360);
Image1.Canvas.Pen.Color:=clRed;
Image1.Canvas.Brush.Color:=clBlue;
Image1.Canvas.Rectangle(210,180,300,360);
Image1.Canvas.Pen.Color:=clGreen;
Image1.Canvas.Brush.Color:=clGreen;
Image1.Canvas.Rectangle(60,180,150,270);
Image1.Canvas.MoveTo(30,150);
Image1.Canvas.Brush.Color:=clOlive;
Image1.Canvas.Brush.Style:=bsVertical;
Image1.Canvas.FloodFill(120,120,clBlack,fsSurface);
Image1.Canvas.LineTo (180,30);
Image1.Canvas.LineTo(330,150);
Image1.Canvas.Ellipse(150,90,210,120);
end;
end.
