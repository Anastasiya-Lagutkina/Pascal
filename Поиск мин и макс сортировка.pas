unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    StringGrid1: TStringGrid;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  m:array[1..20] of integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var k:integer;
begin
Randomize;
for k:=1 to 20 do
 begin
m[k]:=random(90)+1;
form1.StringGrid1.Cells[0,k]:=inttostr(k);
form1.StringGrid1.Cells[1,k]:=inttostr(m[k]);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,k:integer;
begin
a:=strtoint(form1.Edit1.Text);
b:=strtoint(form1.Edit2.Text);
form1.StringGrid1.Cells[2,0]:='F';
for k:=1 to 20 do
begin
 if (m[k]>=a) and (m[k]<=b) then form1.StringGrid1.Cells[2,k]:=inttostr(m[k]);
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,k:integer;
begin
b:=m[1];
for k:=2 to 20 do
if m[k]>b then b:=m[k];
  showmessage ('max='+inttostr(b));
end;

procedure TForm1.Button4Click(Sender: TObject);
  var a,b,k:integer;
begin
 b:=m[1];
for k:=2 to 20 do
if m[k]<b then b:=m[k];
  showmessage ('min='+inttostr(b));
end;

procedure TForm1.Button5Click(Sender: TObject);
var b,k,p:integer;
begin
for p:=1 to 20 do
begin
b:=m[p];
for k:=p+1 to 20 do
 if m[k]<b then
 begin b:=m[k]; m[k]:=m[p];m[p]:=b; end;
 form1.StringGrid1.Cells[2,p]:=inttostr (m[p]);
 showmessage ('нашли'+inttostr(p)+'-й элемент');
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var k,p,s:integer;
begin
for p:=1 to 20 do
  begin
    for k:=1 to 20 do 
      if m[k]>m[k+1] then
      begin
        s:=m[k];
        m[k]:=m[k+1];
        m[k+1]:=s;
      end;
  end;
 for p:=1 to 20 do
 begin
   form1.StringGrid1.Cells[2,p]:=inttostr(m[p]);
   showmessage ('нашли'+inttostr(p)+'-й элемент');
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 form1.StringGrid1.Cells[0,0]:='#';
 form1.StringGrid1.Cells[1,0]:='M';
end;

end.
