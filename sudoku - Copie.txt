programme sudoku c'est

fonction verification0(sortF verif0)
//verifie si il y a des 0 dans la grille de sudoku.
retourne verif0

procédure affichegrille() 
//affiche la grille de sudoku

procédure menu()
//affiche le menu avec les choix possibles.

fonction verificationSupp(entF coordoonées,  sortF verifSupp)
//verifie que la validité des coordonnées et que la case selectionner n'est pas une valeur de la grille de base    
retourne verifsupp

fonction verificationCoordonnées(entF coordoonées, sortF verifC)
//verifie que les coordonnes sont dans l'intervalle A-I en ordonnes et l'intervalle 1-9 en abscisse
retourne verifC

fonction verificationValeur(entF valeur, sortF verifV)
//verifie que la valeur est dans l'intervalle 1-9 et que la valeur n'est pas deja presente dans la ligne/colonne et carre de 3x3
retourne verifV

procédure ajoutValeur(entF valeur) 
//ajout de la valeur dans la grille de sudoku

procédure suppValeur(entF coordonnées)
//supprime une valeur


debut
//variables
coordonnées chaine(5);
valeur entier;
choixmenu entier;
verifC booléen;
verif0 booléen;
verifv booléen;
verifSupp booléen;

verification0(sortE verif0);
tant que (verif0 == 0)faire
    affichegrille();
    menu();
    lireClavier(choixmenu);
    si (choixmenu == 1) //ajout valeur
        écrireEcran("Séléctionner une case");
        lireClavier(coordonnées);
        verificationCoordonnées(entE coordonnées, sortE verifC);

        si (verifC == 1) //les coordonnées sont valide
            écrireEcran("valeur ?");
            lireClavier(valeur);
            verificationValeur(entE valeur, sortE verifV)

            si (verifV == 1) //la valeur est valide
                ajoutvaleur(entE valeur);
            sinon si (verifV == 0)//la valeur est invalide
                écrireEcran("valeur invalide: reessayer en verifiant ques la valeur est bien comprise entre 1 et 9 et que la valeur n'est pas deja presente dans la ligne/colonne");
            fin si
            affichegrille();   


        sinon si (verifC == 0) //coordonnées non valide
            écrireEcran("erreur: veuiller entrer des coordonnées valide.");
        finsi

    sinon si (menu == 2) //supprimer une valeur
        écrireEcran("Séléctionner une case");
        lireClavier(coordonnées);
        verificationSupp(sortE verifSupp);
        si (verifSupp == 1) 
            suppValeur(entE coordonnées);

        
        sinon si (verifSupp == 0)
            écrireEcran("impossible de supprimer une valeur de la grille de base");
        fin si
        affichegrille();\

    sinon (si menu == 3) //arreter la partie 
        fin
    fin si 
    verification0(sortE verif0);
finfaire

écrireEcran("fin de partie !"\n);

fin