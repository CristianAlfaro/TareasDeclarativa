  
%factorial(x) = x * factorial(x-1)
%Hechos:
factorial(0, 1).

%Clausulas:

calcularFactorial(X):-
  factorial(X, Respuesta),
  writeln(Respuesta),!.

factorial(X, N):-
  is(Y, -(X, 1) ),
  factorial(Y, Res),
  is(N, *(X, Res) ), ! .
  
  
  
sumatoria(K, Acumulador):-
    % Cuerpo de la sumatoria
    <(K, 50),
    factorial(K, RespuestaFactorial),
    is(Resultado, /(1, RespuestaFactorial)),
    is(NuevoAcumulador, +(Resultado, Acumulador)),
    is(NuevoK, +(K, 1)),
  sumatoria(NuevoK, NuevoAcumulador),!.
  
sumatoria(K, Acumulador):-
      writeln(Acumulador),!.

 
  