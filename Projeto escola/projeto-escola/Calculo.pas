unit Calculo;


interface
uses SysUtils, Classes;
type
 TCalculo = class(TObject)
 public
  function calcular(nota1, nota2, nota3, nota4 : Double): Double; virtual; abstract;
end;

TCalculoMedia = class(TCalculo)
public
  function calcular(nota1, nota2, nota3, nota4 : Double): Double; override;
end;
TCalculoMaior = class(TCalculo)
  function calcular(nota1, nota2, nota3, nota4 : Double): Double; override;
end;

TCalculoMenor = class(TCalculo)
  function calcular(nota1, nota2, nota3, nota4 : Double): Double; override;
end;


implementation
function TCalculoMedia.calcular(nota1, nota2, nota3, nota4 : Double): Double;
var teste : Double;
begin
   Result := ((nota1+nota2+nota3+nota4)/4);
end;

function TCalculoMaior.calcular(nota1, nota2, nota3, nota4 : Double): Double;
var
  notaMaior : Double;
begin
  notaMaior := nota1;

  if notaMaior < nota2  then
   notaMaior := nota2;
  if notaMaior < nota3 then
   notaMaior := nota3;
  if notaMaior < nota4 then
   notaMaior := nota4;

   Result := notaMaior;
end;

function TCalculoMenor.calcular(nota1, nota2, nota3, nota4 : Double): Double;
var
  notaMenor : Double;
begin
    notaMenor := nota1;

  if  notaMenor > nota2  then
    notaMenor := nota2;
  if  notaMenor > nota3 then
    notaMenor := nota3;
  if  notaMenor > nota4 then
    notaMenor := nota4;

   Result :=  notaMenor;
end;

end.



