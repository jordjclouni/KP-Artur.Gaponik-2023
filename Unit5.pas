unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    Edit1: TMenuItem;
    procedure Edit1Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Edit1Click(Sender: TObject);
begin
form5.close;
end;



procedure TForm5.FormCreate(Sender: TObject);
begin
  form5.color:=cLwhite;
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;

end;

end.
