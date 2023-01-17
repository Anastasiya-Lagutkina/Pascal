unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    MainMenu1: TMainMenu;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
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
var s,s1:string; k,n:integer;
begin
s1:=edit1.Text;
n:=memo1.Lines.Count;
memo2.Lines.Clear;
for k := 1 to n do
  begin
  s:=memo1.Lines[k-1];
  if pos(s1,s)>0 then memo2.Lines.Add(s);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var s,s1,s2:string; t,m,k,n:integer;
begin
s1:=edit1.Text;
s2:=edit2.Text;
n:=memo1.Lines.Count;
memo2.Lines.Clear;
for k := 1 to n do
 begin
 s:=memo1.Lines[k-1];
  if pos(s1,s)>0 then
  begin
    t:=pos(s1,s);
    m:=length(s1);
    delete(s,t,m);
    insert(s2,s,t);
    memo2.Lines.Add(s);
  end;
 end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
OpenDialog1.Execute;
if OpenDialog1.FileName<>'' then
begin
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
SaveDialog1.Execute;
if SaveDialog1.FileName<>'' then
begin
 Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form1.Edit1.Text:='';
form1.Edit2.Text:='';
form1.Memo1.Text:='';
form1.Memo2.Text:='';
end;

procedure TForm1.N6Click(Sender: TObject);
begin
SaveDialog1.Execute;
if SaveDialog1.FileName<>'' then
begin
 Memo2.Lines.SaveToFile(SaveDialog1.FileName);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Edit1.Text:='';
form1.Edit2.Text:='';
form1.Memo1.Text:='';
form1.Memo2.Text:='';
end;

end.
