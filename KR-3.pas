uses CRT;
var n:byte;
function func(var x:real):real;
begin
  var f:real;
  f:=2*power(x,3)+(-2)*power(x,2)+1*x+12;
  func:=f;
end;

function F2(x:real):real;
begin
F2:=2*x * (power(x,4)/4) + ((-2)*x) * (power(x,3)/3) +power(x,2) + 12 * x;
end;

procedure S;
begin
  println('Введите пределы интегрирования');
  var a := ReadInteger('Первая граница:');
  var b := ReadInteger('левая граница:');
  var n := ReadInteger('Количество отрезков:');
  var h:=(b-a)/n;
  var f:real;
  var x:=a+h;
  var s:real;
  for var i:=0 to n-1 do begin
    s+=func(x);
    x+=h;
  end;
  s:=s*h;
  println('Площадь:',s);
  Textcolor(2);
  Println('------------------------------------------------------');
  Textcolor(15);
  println('Для вычисления погрешности введите 2');
  println('Чтобы выйти из программы введите что нибудь (-_-)');
  readln(n);
  if n=2 then begin
  var pogr:=F2(b)- F2(a);
  writeln('Погрешность = ',abs(pogr-s)/pogr);
  Textcolor(2);
  Println('-------------------------------------------------------');
  Textcolor(15);
  end;
end;

begin
    Textcolor(2);
    Println('-----------------------------------------------------');
    Textcolor(15);
    Println('Вычисление площади фигуры, ограниченной кривой');
    println('Для вычисления площади введите 1');
    println('Чтобы выйти из программы введите что нибудь(-_-)');
    Textcolor(2);
    Println('-----------------------------------------------------');
    Textcolor(15);
    readln(n);
    if n=1 then S;
end.
