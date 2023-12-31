{
El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el año
2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese año.
a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido
en el inciso a).
c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura finaliza al
ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos realizados durante los
meses de verano (enero, febrero y marzo) y la cantidad de casamientos realizados en los primeros 10 días de
cada mes. Nota: utilizar el módulo realizado en b) para la lectura de fecha.
}

Program ejercicio2;

Type 
  strmes = 1..12;
  strDia = 1..31;

  casamiento = Record
    anho: integer;
    mes: strmes;
    dia: strDia;
  End;

Function tridenteMes(mes: strmes): boolean;
Begin
  tridenteMes := ((mes = 1) Or (mes = 2) Or (mes = 3));
End;

Function primeros10(dia: strDia): Boolean;
Begin
  primeros10 := ((dia >= 1) And (dia <= 10));
End;

Procedure leerDatos(Var fecha: casamiento);
Begin
  Writeln('Ingrese el anho del casamiento ');
  readln(fecha.anho);
  If (fecha.anho = 2019) Then
    Begin
      Writeln('Ingrese el mes del casamiento ');
      readln(fecha.mes);
      Writeln('Ingrese el dia del casamiento ');
      readln(fecha.dia);
    End;
End;


Var 
  fecha: casamiento;
  cont3: integer;
  cont10: integer;
Begin
  cont3 := 0;
  cont10 := 0;
  leerDatos(fecha);
  While (fecha.anho = 2019) Do
    Begin
      If (tridenteMes(fecha.mes)) Then
        cont3 := cont3+1;
      If (primeros10(fecha.dia)) Then
        cont10 := cont10+1;
      leerDatos(fecha);
    End;
  Writeln('La cantidad de casamientos en los meses de verano es: ', cont3);
  Writeln('La cantidad de casamientos en los primeros 10 dias de cada mes es: ', cont10);
End.





{Segun ayudante no era por aca, lo de abajo}
{"la cantidad de casamientos realizados en los primeros 10 días de
cada mes", AcA Esta parte la pase por alto pero es implementar un case con 12 variables contadoras y despues informar}
