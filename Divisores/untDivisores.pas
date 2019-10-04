unit untDivisores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblNum1: TLabel;
    lblNum2: TLabel;
    lblResult: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    memResult: TMemo;
    procedure verNum;
    procedure FormKeyPress1(Sender: TObject; var Key: Char);
    procedure FormKeyPress2(Sender: TObject; var Key: Char);
    procedure edt1Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edt1Change(Sender: TObject);
begin
  verNum();
end;

procedure TForm1.edt2Change(Sender: TObject);
begin
  verNum();
end;

procedure TForm1.FormKeyPress1(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  key :=#0;
end;

procedure TForm1.FormKeyPress2(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  key :=#0;
end;

procedure TForm1.verNum;
var
  num1, num2:integer;
begin
  try
    num1:=strtoint(edt1.Text);
    num2:=strtoint(edt2.Text);

  if (num1 mod num2 = 0) then
    memResult.Text :='O número '+inttostr(num1)+
    ' é divisível por '+inttostr(num2)
  else
    memResult.Text:='O número '+inttostr(num1)+
    ' não é divisível por '+inttostr(num2);
  except
    if (edt1.text='') or (edt2.Text='') then
    begin
      memResult.Text:='Os dois campos acima devem ser preenchidos.';
    end;
  end;
end;

end.
