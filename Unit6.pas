unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TForm6 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
 uses unit1;
{$R *.dfm}




procedure TForm6.FormCreate(Sender: TObject);
begin
Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
  Timer1.Enabled := True; // запуск таймера
end;


procedure TForm6.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled := False; // остановка таймера

  try
    Form1.Show;
  finally
    Form6.hide;
  end;

end;

end.
