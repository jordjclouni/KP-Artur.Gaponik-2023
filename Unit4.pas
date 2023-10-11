unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.Menus;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    WebBrowser1: TWebBrowser;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    MainMenu1: TMainMenu;
    GoTo1: TMenuItem;
    Window1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure LODY4n(k1: real; k2: real;a1: real; a2: real;a3: real;m1: real;m2: real;m3: real;m4: real;m5: real; d:real);
    procedure GoTo1Click(Sender: TObject);
    procedure Window1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a: array[1..3] of real;
  D: real;
  x: array[1..2] of real;
  k:array[1..2] of real;
  c:array[1..2] of string;
  m:array[1..5] of real;
  o:array[1..5] of real;
  o1:array[1..5] of string;
  lew,prw:string;
implementation
 uses unit1;
{$R *.dfm}





procedure TForm4.FormCreate(Sender: TObject);
begin
Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure TForm4.GoTo1Click(Sender: TObject);
begin
form1.show;
form4.close;
end;

procedure TForm4.LODY4n(k1: real; k2: real;a1: real; a2: real;a3: real; m1: real;m2: real;m3: real;m4: real;m5: real; d:real);
var
  MyStrings: TStringList;
begin
  MyStrings := TStringList.Create;
  try

    MyStrings.Add('Решение дифференциального уравнения второго порядка<br>');
    MyStrings.Add('Составляем характеристическое уравнение вида: <br>');
    MyStrings.Add(edit1.text+'x<sup>2</sup>+'+edit2.text+'x+'+edit3.text+'=0 <br> <br>');
    MyStrings.Add('Ищем дискриминант из полученного квадратного уравнения: <br>');
    MyStrings.Add('D='+edit2.text+'<sup>2</sup>-4*'+edit1.text+'*'+edit3.text +'='+FloatToStrF(d, ffGeneral, 3, 3)+'<br> <br>');
    MyStrings.Add('Корни квадратного уравнения:<br>');

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

       if D>0 then begin
      lew:='y=C<sub>1</sub>e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'x</sup>+C<sub>2</sub>e<sup>'+FloatToStrF(k2, ffGeneral, 3,3)+'x</sup>';


      end else
      if D=0 then begin
      lew:='y= e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'</sup>(C<sub>1</sub>x+C<sub>3</sub>)';
      end else begin
      lew:='y=e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'x</sup>(Ccos'+FloatToStrF(k2, ffGeneral, 3, 3)+'x+Csin'+FloatToStrF(k2, ffGeneral, 3, 3)+'x)';
      end;

      //решение правой части
      MyStrings.Add('<br><br>Решение многочлена:<br>');
      MyStrings.Add('y='+FloatToStrF(m1, ffGeneral, 3, 3)+'x<sup>4</sup>+'+FloatToStrF(m2, ffGeneral, 3, 3)+'x<sup>3</sup>+'+FloatToStrF(m3, ffGeneral, 3, 3)+'x<sup>2</sup>+');
      MyStrings.Add(FloatToStrF(m4, ffGeneral, 3, 3)+'x+'+FloatToStrF(m5, ffGeneral, 3, 3));
      MyStrings.Add('<br><br>Нам нужно ее решить через нахождение производных:<br>');
      MyStrings.Add('y=Ax<sup>4</sup>+Bx<sup>3</sup>+Cx<sup>2</sup>+Dx+E');
      MyStrings.Add('<br>y`=4Ax<sup>3</sup>+3Bx<sup>2</sup>+2Cx+D');
      MyStrings.Add('<br>y``=12Ax<sup>2</sup>+6Bx+2Cx');
      MyStrings.Add('<br><br>После того как мы проинтегрировали, подставляем в правую часть:<br>');
      MyStrings.Add(FloatToStrF(a1, ffGeneral, 3, 3)+'(12Ax<sup>2</sup>+6Bx+2Cx)+'+FloatToStrF(a2, ffGeneral, 3, 3)+'(4Ax<sup>3</sup>+3Bx<sup>2</sup>+2Cx+D)+'+FloatToStrF(a3, ffGeneral, 3, 3)+'(Ax<sup>4</sup>+Bx<sup>3</sup>+Cx<sup>2</sup>+Dx+C)=<br>');
      MyStrings.Add('='+FloatToStrF(m1, ffGeneral, 3, 3)+'x<sup>4</sup>+'+FloatToStrF(m2, ffGeneral, 3, 3)+'x<sup>3</sup>+'+FloatToStrF(m3, ffGeneral, 3, 3)+'x<sup>2</sup>+'+FloatToStrF(m4, ffGeneral, 3, 3)+'x+'+FloatToStrF(m5, ffGeneral, 3, 3));
      MyStrings.Add('<br><br>Выносим переменные с одинаковыми степенями:<br>');
      MyStrings.Add(FloatToStrF(a3, ffGeneral, 3, 3)+'Ax<sup>4</sup>='+FloatToStrF(m1, ffGeneral, 3, 3)+'x<sup>4</sup><br>');
      o[1]:=m1/a3;
      MyStrings.Add(FloatToStrF(a2*4, ffGeneral, 3, 3)+'Ax<sup>3</sup>+'+FloatToStrF(a3, ffGeneral, 3, 3)+'Bx<sup>3</sup>='+FloatToStrF(m2, ffGeneral, 3, 3)+'x<sup>3</sup><br>');
      o[2]:=(m2-4*a2*o[1])/a[3];
      MyStrings.Add(FloatToStrF(a1*12, ffGeneral, 3, 3)+'Ax<sup>2</sup>+'+FloatToStrF(a2*3, ffGeneral, 3, 3)+'Bx<sup>2</sup>+'+FloatToStrF(a3, ffGeneral, 3, 3)+'Cx<sup>2</sup>='+FloatToStrF(m3, ffGeneral, 3, 3)+'x<sup>2</sup><br>');
      o[3]:=(m3-12*a1*o[1]-3*a2*o[2])/a[3];
      MyStrings.Add(FloatToStrF(a1*6, ffGeneral, 3, 3)+'Bx+'+FloatToStrF(a2*2, ffGeneral, 3, 3)+'Cx+'+FloatToStrF(a3, ffGeneral, 3, 3)+'Dx='+FloatToStrF(m4, ffGeneral, 3, 3)+'x<br>');
      o[4]:=(m4-6*a1*o[2]-2*a2*o[3])/a[3];
      MyStrings.Add(FloatToStrF(a1*2, ffGeneral, 3, 3)+'C+'+FloatToStrF(a2, ffGeneral, 3, 3)+'D+'+FloatToStrF(a3, ffGeneral, 3, 3)+'E='+FloatToStrF(m5, ffGeneral, 3, 3)+'<br>');
      o[5]:=(m5-2*a1*o[3]-a2*o[4])/a[3];

      MyStrings.Add('<br>Убираем степени и решаем простую систему:<br>');
      MyStrings.Add(FloatToStrF(a3, ffGeneral, 3, 3)+'A='+FloatToStrF(m1, ffGeneral, 3, 3)+'<br>');
      MyStrings.Add(FloatToStrF(a2*4, ffGeneral, 3, 3)+'A+'+FloatToStrF(a3, ffGeneral, 3, 3)+'B='+FloatToStrF(m2, ffGeneral, 3, 3)+'<br>');
      MyStrings.Add(FloatToStrF(a1*12, ffGeneral, 3, 3)+'A+'+FloatToStrF(a2*3, ffGeneral, 3, 3)+'B+'+FloatToStrF(a3, ffGeneral, 3, 3)+'C='+FloatToStrF(m3, ffGeneral, 3, 3)+'<br>');
      MyStrings.Add(FloatToStrF(a1*6, ffGeneral, 3, 3)+'B+'+FloatToStrF(a2*2, ffGeneral, 3, 3)+'C+'+FloatToStrF(a3, ffGeneral, 3, 3)+'D='+FloatToStrF(m4, ffGeneral, 3, 3)+'<br>');
      MyStrings.Add(FloatToStrF(a1*2, ffGeneral, 3, 3)+'C+'+FloatToStrF(a2, ffGeneral, 3, 3)+'D+'+FloatToStrF(a3, ffGeneral, 3, 3)+'E='+FloatToStrF(m5, ffGeneral, 3, 3)+'<br>');

      MyStrings.Add('<br>Ответ системы:<br>');
      MyStrings.Add('A='+FloatToStrF(o[1], ffGeneral, 3, 3)+'<br>');
      MyStrings.Add('B='+FloatToStrF(o[2], ffGeneral, 3, 3)+'<br>');
      MyStrings.Add('C='+FloatToStrF(o[3], ffGeneral, 3, 3)+'<br>');
      MyStrings.Add('D='+FloatToStrF(o[4], ffGeneral, 3, 3)+'<br>');
      MyStrings.Add('E='+FloatToStrF(o[5], ffGeneral, 3, 3)+'<br>');

      if o[1]=0 then o1[1]:='' else o1[1]:='+'+FloatToStrF(o[1], ffGeneral, 3, 3)+'x<sup>4</sup>';
      if o[2]=0 then o1[2]:='' else o1[2]:='+'+FloatToStrF(o[2], ffGeneral, 3, 3)+'x<sup>3</sup>';
      if o[3]=0 then o1[3]:='' else o1[3]:='+'+FloatToStrF(o[3], ffGeneral, 3, 3)+'x<sup>2</sup>';
      if o[4]=0 then o1[4]:='' else o1[4]:='+'+FloatToStrF(o[4], ffGeneral, 3, 3)+'x';
      if o[5]=0 then o1[5]:='' else o1[5]:='+'+FloatToStrF(o[5], ffGeneral, 3, 3);

      prw:=o1[1]+o1[2]+o1[3]+o1[4]+o1[5];
      MyStrings.Add('<br>Ответ дифференциального уравнения 2-го порядка с многочленом 4-степени:<br>');
      MyStrings.Add(lew+prw);
    MyStrings.SaveToFile('myfile.html');

  WebBrowser1.Navigate('file://' + GetCurrentDir + '\myfile.html');
  finally
    MyStrings.Free;
  end;
end;




procedure TForm4.Window1Click(Sender: TObject);
begin
halt;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
a[1] := StrToFloat(Edit1.Text);
a[2] := StrToFloat(Edit2.Text);
a[3] := StrToFloat(Edit3.Text);
m[1] := StrToFloat(Edit4.Text);
m[2] := StrToFloat(Edit5.Text);
m[3] := StrToFloat(Edit6.Text);
m[4] := StrToFloat(Edit7.Text);
m[5] := StrToFloat(Edit8.Text);
d:= sqr(a[2])-(4*a[1]*a[3]);
if d>=0 then
begin
k[1] := (-a[2]-sqrt(d))/(2*a[1]);
k[2] := (-a[2]+sqrt(d))/(2*a[1]);
 end else begin
k[1] := (-a[2])/(2*a[1]);
k[2] := sqrt(abs(d))/(2*a[1]);
end;
Form4.LODY4n(k[1],k[2],a[1],a[2],a[3],m[1],m[2],m[3],m[4],m[5], d);
end;

end.
