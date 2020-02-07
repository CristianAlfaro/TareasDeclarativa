duplicar([],[]):-!.
duplicar([Cab|Col],[Cab,Cab|New]):-
    duplicar(Col,New),!.