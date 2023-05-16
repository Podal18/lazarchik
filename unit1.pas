unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  n: integer;
begin
  n:=StrToInt(Edit1.Text);
  if n<0 then
  ShowMessage ('Число отрицательное');
  if n>0 then
  MessageDlg ('Число положительное', mtError, [mbOk, mbCancel], 0);
  if n=0 then
  MessageDlg (':/', mtWarning, [mbOk], 0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  case Key of
  #13 : Button1.SetFocus ;
  end;
  end;

end.

