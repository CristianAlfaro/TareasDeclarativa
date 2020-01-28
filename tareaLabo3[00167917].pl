:- dynamic [visitado/1,camino_regreso/1].

conecta_con(calle,cochera).
conecta_con(cochera,calle).

conecta_con(cochera,sala).
conecta_con(sala,cochera).

conecta_con(sala,pasillo1).
conecta_con(pasillo1,sala).

conecta_con(pasillo1,'cuarto de estudio').
conecta_con('cuarto de estudio',pasillo1).

conecta_con(pasillo1,comedor).
conecta_con(comedor,pasillo1).

conecta_con(pasillo1,cocina).
conecta_con(cocina,pasillo1).

conecta_con(pasillo1,pasillo2).
conecta_con(pasillo2,pasillo1).

conecta_con(cocina,lavadero).
conecta_con(lavadero,cocina).

conecta_con(lavadero,jardin).
conecta_con(jardin,lavadero).

conecta_con(jardin,pasillo2).
conecta_con(pasillo2,jardin).

conecta_con(pasillo2,'cuarto de rodri').
conecta_con('cuarto de rodri',pasillo2).

conecta_con(pasillo2,'cuarto de papas').
conecta_con('cuarto de papas',pasillo2).

conecta_con(pasillo2,banio).
conecta_con(banio,pasillo2).

conecta_con(jardin,kiosko).
conecta_con(kiosko,jardin).

esta_en(flor,'cuarto de rodri').
esta_en(pelota,jardin).
esta_en(carne,cocina).


jarvis_traeme(X,LugarActual):-
    abolish(visitado, 1),
    abolish(camino_regreso, 1),
    assertz(visitado(LugarActual)),
    esta_en(X,LugarDestino),
    write_ln(LugarActual),
    ir_hacia(LugarActual,LugarDestino),
    depurar_camino,
    imprimir_camino,!.

ir_hacia(Hacia,Hacia).

ir_hacia(Desde,Hacia):-
    conecta_con(Desde,Lugar),
    \+(visitado(Lugar)),
    assertz(visitado(Lugar)),
    ir_hacia(Lugar,Hacia),
    assertz(camino_regreso(Lugar)),!.

depurar_camino():-
    visitado(X),
    \+camino_regreso(X),
    retract(visitado(X)),
    depurar_camino,!.

depurar_camino():-
    true.    

imprimir_camino():-
    forall(visitado(X), write_ln(X)),
    write_ln('EL OBJETO A SIDO ENCONTRADO, LO LLEVARE AL LUGAR ADONDE ESTAS'),
    forall(camino_regreso(Y),write_ln(Y)),
    write_ln('TAREA FINALIZADA'),!.
    
    
    
    