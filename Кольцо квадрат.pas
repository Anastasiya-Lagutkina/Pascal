unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
TKol=class
x,y,rb,rm:integer;
cl1,cl2,cl3:TColor;
bt:TBrushStyle;
procedure ris;
procedure init;
end;
  Tform1 = class(TForm)
    ColorDialog1: TColorDialog;
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    bsSolid1: TMenuItem;
    bsCross1: TMenuItem;
    bsVertical1: TMenuItem;
    bsHorizontal1: TMenuItem;
    bsDiagCross1: TMenuItem;
    bsFDiagonal1: TMenuItem;
    bsBDiagonal1: TMenuItem;
    bsClear1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure bsSolid1Click(Sender: TObject);
    procedure bsCross1Click(Sender: TObject);
    procedure bsVertical1Click(Sender: TObject);
    procedure bsHorizontal1Click(Sender: TObject);
    procedure bsDiagCross1Click(Sender: TObject);
    procedure bsFDiagonal1Click(Sender: TObject);
    procedure bsBDiagonal1Click(Sender: TObject);
    procedure bsClear1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1: Tform1;
  kol:TKol;
  cc:TColor;
  rr1,rr2:word;
  bs:TBrushStyle;
  ss:string;

implementation

{$R *.dfm}
procedure TKol.init;
begin
  cl1:=clBlack;
  cl2:=clBlack;
  cl3:=cc;
  bt:=bs;
end;
procedure TKol.ris;
begin
form1.Canvas.Brush.Style:=bt;
form1.Canvas.Brush.Color:=cl3;
form1.Canvas.Pen.Color:=cl2;
form1.Canvas.Ellipse(x-rb,y-rb,x+rb,y+rb);
form1.Canvas.Brush.Style:=bsSolid;
form1.Canvas.Brush.Color:=form1.Color;
form1.Canvas.Pen.Color:=cl1;
form1.Canvas.Ellipse(x-rm,y-rm,x+rm,y+rm);
end;

procedure Tform1.bsBDiagonal1Click(Sender: TObject);
begin
bs:=bsBDiagonal;
end;

procedure Tform1.bsClear1Click(Sender: TObject);
begin
bs:=bsClear;
end;

procedure Tform1.bsCross1Click(Sender: TObject);
begin
bs:=bsCross;
end;

procedure Tform1.bsDiagCross1Click(Sender: TObject);
begin
bs:=bsDiagCross;
end;

procedure Tform1.bsFDiagonal1Click(Sender: TObject);
begin
bs:=bsFDiagonal;
end;

procedure Tform1.bsHorizontal1Click(Sender: TObject);
begin
bs:=bsHorizontal;
end;

procedure Tform1.bsSolid1Click(Sender: TObject);
begin
bs:=bsSolid;
end;

procedure Tform1.bsVertical1Click(Sender: TObject);
begin
bs:=bsVertical;
end;

procedure Tform1.FormClick(Sender: TObject);
begin
kol.rm:=rr2;
kol.rb:=rr1;
kol.init;
end;

procedure Tform1.FormCreate(Sender: TObject);
begin
cc:=clblue;
rr1:=70; rr2:=50;
ss:='Классы и объекты пользователя';
bs:=bsSolid;
kol:=Tkol.Create;
kol.x:=200;
kol.y:=200;
form1.Image1.Canvas.Brush.Color:=cc;
form1.Image1.Canvas.Rectangle(0,0,100,100);
end;

procedure Tform1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
form1.Caption:=ss+'  x='+inttostr(x)+'  y='+inttostr(y);
end;

procedure Tform1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
kol.x:=x; kol.y:=y;
kol.ris;
end;

procedure Tform1.Image1Click(Sender: TObject);
begin
form1.ColorDialog1.Execute;
cc:=form1.ColorDialog1.Color;
form1.Image1.Canvas.Brush.Color:=cc;
form1.Image1.Canvas.Rectangle(0,0,100,100);
end;

procedure Tform1.N2Click(Sender: TObject);
begin
form1.Panel1.Visible:=true;
end;

procedure Tform1.N4Click(Sender: TObject);
begin
close();
end;

procedure Tform1.Panel1Click(Sender: TObject);
begin
panel1.Visible:=false;
end;

procedure Tform1.TrackBar1Change(Sender: TObject);
begin
rr1:=form1.TrackBar1.Position;
form1.Label1.Caption:='внешний rr1='+inttostr(rr1);
end;
procedure Tform1.TrackBar2Change(Sender: TObject);
begin
rr2:=form1.TrackBar2.Position;
if rr2>rr1 then
begin rr2:=rr1-2; form1.TrackBar2.Position:=rr2; end;
form1.Label2.Caption:='внутренний rr2='+inttostr(rr2);
end;

end.
