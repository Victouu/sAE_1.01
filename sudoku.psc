programme sudoku c'est

fonction verification0()
//verifie si il y a des 0 dans la grille de sudoku.
retourne verif0


procédure affichegrille() 
//affiche la grille de sudoku

procédure menu()
//affiche le menu et retourne le choix de l'utilisateur

fonction verificationSupp()
//verifie que la validité des coordonnées et que la case selectionner n'est pas une valeur de la grille de base    
retourne verifsupp

fonction verificationCoordonnées()
//verifie que les coordonnes sont dans l'intervalle A-I en ordonnes et l'intervalle 1-9 en abscisse
retourne verifC

fonction verificationValeur()
//verifie que la valeur est dans l'intervalle 1-9 et que la valeur n'est pas deja presente dans la ligne/colonne et carre de 3x3
retourne verifV

procédure ajoutValeur() 
//ajout de la valeur dans la grille de sudoku

procédure suppValeur()
//supprime une valeur


debut
coordonnées chaine(5);
valeur entier;
choixmenu entier;
verifC entier;
verif0 entier;
verifv entier;
verifSupp entier;

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

            si (verifV == 1)
                ajoutvaleur(entE valeur, sortE verifV);
            sinon si (verifV == 0)
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
finfaire

écrireEcran("fin du sudoku !!!"\n);

fin