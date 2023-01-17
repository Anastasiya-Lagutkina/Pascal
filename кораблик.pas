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
Image1.Canvas.Pen.Width:= 2;
Image1.Canvas.Pen.Color:=clBlue;
Image1.Canvas.MoveTo(100,100);
Image1.Canvas. LineTo(75,85);
Image1.Canvas.LineTo(100,70);
Image1.Canvas.lineTo(100,125);
Image1.Canvas.Pen.Color:= clBlack;
Image1.Canvas.lineTo(75,125);
Image1.Canvas.lineTo(90,175);
Image1.Canvas.lineTo(300,175);
Image1.Canvas.lineTo(325,125);
Image1.Canvas.lineTo(100,125);
Image1.Canvas.Brush.Color:= clGreen;
Image1.Canvas. Rectangle(125,100,275,125);
Image1.Canvas. Brush.Color:= clPurple;
Image1.Canvas. Rectangle(150,80,250,100);
Image1.Canvas. Brush.Color:= clYellow;
Image1.Canvas. Rectangle(175,50,200,80);
end;
end.



