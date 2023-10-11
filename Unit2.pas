unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ComCtrls, MSHTML, ActiveX, Vcl.Menus;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    StatusBar1: TStatusBar;
    WebBrowser1: TWebBrowser;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    GoTo1: TMenuItem;
    Window1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure LODY(k1: real; k2: real; d:real);
    procedure GoTo1Click(Sender: TObject);
    procedure Window1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
 a: array[1..3] of real;
  D: real;
  x: array[1..2] of real;
  k:array[1..2] of real;
  c:array[1..2] of string;

  bm: Tbitmap;
implementation
 uses unit1;
{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin
Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure TForm2.GoTo1Click(Sender: TObject);
begin
form1.show;
form2.hide;
end;

procedure TForm2.LODY(k1: real; k2: real; d:real);
var
  MyStrings: TStringList;
begin
  MyStrings := TStringList.Create;//создаем список строк
  try
    //заполняем stringlist строками для записи в строках исполльзуем html код
    MyStrings.Add('Решение дифференциального уравнения второго порядка<br>');
    MyStrings.Add('Составляем характеристическое уравнение вида: <br>');
    MyStrings.Add(edit1.text+'x<sup>2</sup>+'+edit2.text+'x+'+edit3.text+'=0 <br> <br>');
    MyStrings.Add('Ищем дискриминант из полученного квадратного уравнения: <br>');
    MyStrings.Add('D='+edit2.text+'<sup>2</sup>-4*'+edit1.text+'*'+edit3.text +'='+FloatToStrF(d, ffGeneral, 3, 3)+'<br> <br>');
    MyStrings.Add('Корни квадратного уравнения:<br>');

    //работаем с правой частью
    if D>0 then
      begin
      MyStrings.Add('x<sub>1</sub>= ' + FloatToStrF(k1, ffGeneral, 3,3) + '<br>');
      MyStrings.Add('x<sub>2</sub>= ' + FloatToStrF(k2, ffGeneral, 3, 3) + '<br><br>');
      end else
    if D=0 then
      begin
      MyStrings.Add('x<sub>1</sub>,x<sub>2</sub> = ' + FloatToStrF(k1, ffGeneral, 3, 3) + '<br><br>');
      end else
    begin
      MyStrings.Add('x' + '<sub>1</sub>' + ' = ' + FloatToStrF(k1, ffGeneral, 3, 3) +'+'+FloatToStrF(k2, ffGeneral, 3, 3)+'i<br>');
      MyStrings.Add('x' + '<sub>1</sub>' + ' = ' + FloatToStrF(k1, ffGeneral, 3, 3) +'-'+FloatToStrF(k2, ffGeneral, 3, 3)+'i<br><br>');
      end;

    MyStrings.Add('Общее решение ЛДУ:<br>');
      if D>0 then begin

      MyStrings.Add('y=C<sub>1</sub>e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'x</sup>+C<sub>2</sub>e<sup>'+FloatToStrF(k2, ffGeneral, 3,3)+'x</sup>')
      end else
      if D=0 then begin
      MyStrings.Add('y= e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'</sup>(C<sub>1</sub>x+C<sub>2</sub>)')
      end else begin
      MyStrings.Add('y=e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'</sup>(C<sub>1</sub>cos'+FloatToStrF(k2, ffGeneral, 3, 3));
      MyStrings.Add('x+C<sub>2</sub>sin'+FloatToStrF(k2, ffGeneral, 3, 3)+'x)');
      end;

    MyStrings.SaveToFile('myfile.html');

  WebBrowser1.Navigate('file://' + GetCurrentDir + '\myfile.html');
  finally
    MyStrings.Free;
  end;
end;

procedure TForm2.Window1Click(Sender: TObject);
begin
halt;
end;

procedure TForm2.Button1Click(Sender: TObject);//при нажатии на кнопку считаются корни и дискриминант и помещаются в процедуру
begin
a[1] := StrToFloat(Edit1.Text);//заносим введенные элементы массива
a[2] := StrToFloat(Edit2.Text);
a[3] := StrToFloat(Edit3.Text);
d:= sqr(a[2])-(4*a[1]*a[3]);
if d>=0 then
begin
k[1] := (-a[2]-sqrt(d))/(2*a[1]);
k[2] := (-a[2]+sqrt(d))/(2*a[1]);
 end else begin
k[1] := (-a[2])/(2*a[1]);
k[2] := sqrt(abs(d))/(2*a[1]);
end;
Form2.LODY(k[1], k[2], d);//вызов процедуры
end;

end.
