﻿unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Menus;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    WebBrowser1: TWebBrowser;
    Label5: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    MainMenu1: TMainMenu;
    GoTo1: TMenuItem;
    Window1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure LODYe(k1: real; k2: real;a1: real; a2: real;a3: real; w: real;q: real; d:real);
    procedure GoTo1Click(Sender: TObject);
    procedure Window1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
 a: array[1..5] of real;
  D: real;
  x: array[1..2] of real;
  k:array[1..2] of real;
  e:array[1..3] of string;
  z,q,w:real;
  lew,prw:string;


implementation

{$R *.dfm}
 uses unit1;
procedure TForm3.FormCreate(Sender: TObject);
begin
Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure TForm3.GoTo1Click(Sender: TObject);
begin
form1.show;
form3.hide;
end;

procedure TForm3.LODYe(k1: real; k2: real;a1: real; a2: real;a3: real; w: real; q: real; d:real);
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
      lew:='y=C<sub>1</sub>e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'x</sup>+C<sub>2</sub>e<sup>'+FloatToStrF(k2, ffGeneral, 3,3)+'x</sup>';


      end else
      if D=0 then begin
      lew:='y= e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'</sup>(C<sub>1</sub>x+C<sub>3</sub>)';
      end else begin
      lew:='y=e<sup>'+FloatToStrF(k1, ffGeneral, 3, 3)+'x</sup>(Ccos'+FloatToStrF(k2, ffGeneral, 3, 3)+'x+Csin'+FloatToStrF(k2, ffGeneral, 3, 3)+'x)';
      end;
      MyStrings.Add(lew);

      //специальная правая часть
      MyStrings.Add('<br><br>Решение специальной правой части:<br>');
      if (k1<>q)and (k2<>q) then
      begin
      MyStrings.Add('Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup><br>');
      MyStrings.Add(FloatToStrF(q, ffGeneral, 3, 3)+'Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup><br>');
      MyStrings.Add(FloatToStrF(q*q, ffGeneral, 3, 3)+'Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup><br><br>');
      MyStrings.Add('Общий вид с правой частью:<br>');
      MyStrings.Add(FloatToStrF(q*q*a1, ffGeneral, 3, 3)+'Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>+'+FloatToStrF(q*a2, ffGeneral, 3, 3)+'Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>+'+edit3.text+'Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>='+FloatToStrF(w, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'</sup>');
      z:=w/(q*q*a1+q*a2+a3);
      MyStrings.Add('A='+FloatToStrF(z, ffGeneral, 3, 3));
      MyStrings.Add('<br><br>Ответ правой части:<br>');
      MyStrings.Add('x='+FloatToStrF(z, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>');
      prw:=FloatToStrF(z, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>';
      end;

      // специальная правая часть где только один корень совпадает
      if  (D<>0) and ((k1=q)or (k2=q)) then
      begin
      MyStrings.Add('Axe<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup><br>');
      e[1]:='x';
      MyStrings.Add('Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>(1+'+FloatToStrF(q, ffGeneral, 3, 3)+'x)<br>');
      e[2]:='(1+'+FloatToStrF(q, ffGeneral, 3, 3)+'x)';
      MyStrings.Add('Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>('+FloatToStrF(2*q, ffGeneral, 3, 3)+'+'+FloatToStrF(sqr(q), ffGeneral, 3, 3)+'x)<br>');
      e[3]:='('+FloatToStrF(2*q, ffGeneral, 3, 3)+'+'+FloatToStrF(sqr(q), ffGeneral, 3, 3)+'x)';
      MyStrings.Add('<br>Общий вид с правой частью:<br>');
      MyStrings.Add('Ae<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>('+FloatToStrF(a[1], ffGeneral, 3, 3)+e[3]+'+'+FloatToStrF(a[2], ffGeneral, 3, 3)+e[2]+'+'+FloatToStrF(a[3], ffGeneral, 3, 3)+e[1]+'='+FloatToStrF(w, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'</sup>');
      z:=w/((a[1]*2*q)+a[2]);
      MyStrings.Add('<br>A='+FloatToStrF(z, ffGeneral, 3, 3));
      MyStrings.Add('<br><br>Ответ правой части:<br>');
      MyStrings.Add('y='+FloatToStrF(z, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>');
      prw:=FloatToStrF(z, ffGeneral, 3, 3)+'xe<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>';
      end;

       //специальная часть где совпадает два корня
      if (k1=q)and (k2=q) then
      begin
      MyStrings.Add('Ax<sup>2</sup>e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup><br>');
      e[1]:='x<sup>2</sup>';
      MyStrings.Add('Ax<sup>2</sup>e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>(2x+'+FloatToStrF(q, ffGeneral, 3, 3)+'x<sup>2</sup>)<br>');
      e[2]:='(2x+'+FloatToStrF(q, ffGeneral, 3, 3)+'x<sup>2</sup>';
      MyStrings.Add('Ax<sup>2</sup>e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>('+FloatToStrF(sqr(q), ffGeneral, 3, 3)+'<sup>x</sup>+'+FloatToStrF(4*q, ffGeneral, 3, 3)+'x+2)<br>');
      e[3]:='('+FloatToStrF(sqr(q), ffGeneral, 3, 3)+'x<sup>2</sup>+'+FloatToStrF(4*q, ffGeneral, 3, 3)+'x+2)';
      MyStrings.Add('<br>Общий вид с правой частью:<br>');
      MyStrings.Add('Ax<sup>2</sup>e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>('+FloatToStrF(a[1], ffGeneral, 3, 3)+e[3]+'+'+FloatToStrF(a[2], ffGeneral, 3, 3)+e[2]+')+'+FloatToStrF(a[3], ffGeneral, 3, 3)+e[1]+')='+FloatToStrF(w, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'</sup><br>');
      z:=w/2;
      MyStrings.Add('<br>A='+FloatToStrF(z, ffGeneral, 3, 3));
      MyStrings.Add('<br><br>Ответ правой части:<br>');
      MyStrings.Add('y='+FloatToStrF(z, ffGeneral, 3, 3)+'e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>');
      prw:=FloatToStrF(z, ffGeneral, 3, 3)+'x<sup>2</sup>e<sup>'+FloatToStrF(q, ffGeneral, 3, 3)+'x</sup>';
      end;


      MyStrings.Add('<br><br>Ответ дифференциального уравнения 2-го порядка:<br>');
      MyStrings.Add(lew+'+'+prw);
    MyStrings.SaveToFile('myfile.html');

  WebBrowser1.Navigate('file://' + GetCurrentDir + '\myfile.html');
  finally
    MyStrings.Free;
  end;
end;



procedure TForm3.Window1Click(Sender: TObject);
begin
halt;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  MyStrings: TStringList;
begin
a[1] := StrToFloat(Edit1.Text);
a[2] := StrToFloat(Edit2.Text);
a[3] := StrToFloat(Edit3.Text);
a[4] := StrToFloat(Edit4.Text);
a[5] := StrToFloat(Edit5.Text);
d:= sqr(a[2])-(4*a[1]*a[3]);
if d>=0 then
begin
k[1] := (-a[2]-sqrt(d))/(2*a[1]);
k[2] := (-a[2]+sqrt(d))/(2*a[1]);
 end else begin
k[1] := (-a[2])/(2*a[1]);
k[2] := sqrt(abs(d))/(2*a[1]);
w:=a[4];
q:=a[5];
end;
Form3.LODYe(k[1], k[2],a[1],a[2],a[3], a[4],a[5],d);

end;
end.
