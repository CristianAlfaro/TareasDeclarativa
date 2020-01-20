%hombres
hombre(cristian).
hombre(raul).
hombre(ethan).
hombre(emilio).
hombre(kevin).
hombre(gerardo).

%mujeres
mujer(delmi).
mujer(gabriela).
mujer(rebeca).
mujer(ariela).
mujer(michelle).
mujer(vilma).

%casados
casado(gerardo).
casado(vilma).
casado(gabriela).
casado(emilio).
casado(ariela).

%aman

ama(cristian,delmi).
ama(delmi,cristian).
ama(rebeca,cristian).
ama(rebeca,ethan).
ama(ethan,rebeca).
ama(ariela,emilio).
ama(emilio,gabriela).
ama(kevin,gabriela).
ama(kevin,delmi).
ama(michelle,ethan).
ama(ethan,michelle).
ama(vilma,gerardo).
ama(gerardo,vilma).

%quienes se pueden casar

se_pueden_casar(Casamentero1, Casamentero2):-
    ((hombre(Casamentero1) , mujer(Casamentero2)) ; (mujer(Casamentero1) , hombre(Casamentero2))),
    (\+casado(Casamentero1)) , (\+casado(Casamentero2)),
    ama(Casamentero1,Casamentero2) , ama(Casamentero2,Casamentero1).   