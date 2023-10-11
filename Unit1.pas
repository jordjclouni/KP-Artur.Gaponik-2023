unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Menus,ShellAPI;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    GoTo1: TMenuItem;
    Window1: TMenuItem;
    Edit1: TMenuItem;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);


    procedure GoTo1Click(Sender: TObject);
    procedure Window1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses unit2,unit3,unit4,unit5;








procedure TForm1.Edit1Click(Sender: TObject);
begin
ShellExecute(0,PChar('open'),PChar('�������.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

Left := (Screen.Width - Width) div 2;
Top := (Screen.Height - Height) div 2;
end;

procedure TForm1.GoTo1Click(Sender: TObject);
begin
Form5.Memo1.Clear; //������� Memo ����� ������� ������ ������
Form5.Memo1.Lines.Add('���������������� ��������� ���� ���������� �������� (1642�1727). ������ ������ ��� ���� ����������� ��������� ������, ��� ���������� ��� ');
Form5.Memo1.Lines.Add('� ���� ��������� ��� �������� ���: ������� ������� ���������� ����������������� �����������.');
Form5.Memo1.Lines.Add('����� ����������� ������������ � ��������� �������� ������: � ��������, ������, �����, ��������, ��������� � ��.');
Form5.show;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
form4.show;
form1.hide;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
form3.show;
form1.hide;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
form2.Show;
form1.hide;
end;







procedure TForm1.Window1Click(Sender: TObject);
begin
Halt;
end;

end.
