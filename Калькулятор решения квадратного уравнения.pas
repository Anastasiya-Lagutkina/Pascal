unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
var a,b,c,d,x1,x2:real; s1,s2:string;
begin
s1:='нет решения'; s2:='нет решения';
if(Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') then
begin
  showmessage('можно решать');
  a:= strtofloat(edit1.Text); b:=strtofloat(edit2.Text); c:=strtofloat(edit3.Text);
  d:=b*b-4*a*c; edit4.Text:=floattostr(d);
  if ((a+b)=0) or (d<0)  then showmessage ('нет ни одного решения')
  else begin
    if a=0 then begin  x1:=-1*c/b; s1:=floattostr(x1); end;
    if (a<>0) and (d=0) then begin x1:=-1*b/(2*a); s1:=floattostr(x1); end;
    if (a<>0) and (d>0) then begin x1:=(sqrt(d)-b)/(2*a); s1:=floattostr(x1);
    x2:=(-1*sqrt(d)-b)/(2*a); s2:=floattostr(x2); end;
end;
 edit5.Text:=s1; edit6.Text:=s2;
end
else showmessage('нет данных для решения');
end;

end.
