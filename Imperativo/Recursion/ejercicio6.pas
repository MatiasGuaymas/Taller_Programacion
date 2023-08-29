{ EJERCICIO 6
6.- Realizar un programa que lea números y que utilice un módulo recursivo que escriba el
equivalente en binario de un número decimal. El programa termina cuando el usuario ingresa
el número 0 (cero).
Ayuda: Analizando las posibilidades encontramos que: Binario (N) es N si el valor es menor a 2.
¿Cómo obtenemos los dígitos que componen al número? ¿Cómo achicamos el número para la
próxima llamada recursiva? Ejemplo: si se ingresa 23, el programa debe mostrar: 10111.
}

program seis;

procedure conversionBinario (dig: integer); // CONSULTAR POR QUE ME QUEDA UN 0 DE MAS
var
  resultado: integer;
begin
  resultado:=0;
  if(dig<>0) then begin
    resultado := dig mod 2;
    conversionBinario(dig div 2);
  end;
  write(resultado);
end;

procedure LeerNumeros;
var
    num:integer;
begin
    num:=random(11);
    while num <> 0 do
    begin
        WriteLn('Numero: ', num);
        conversionBinario(num);
        WriteLn();
        num:=random(11);
    end;    
end;
begin
    Randomize;
    LeerNumeros;
end.
