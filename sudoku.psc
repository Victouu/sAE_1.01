programme sudoku c'est

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

tant qu'il y a des case a 0 faire
    affichegrille();
    menu();
    lireClavier(choixmenu);
    si choixmenu == 1 //ajout valeur
        écrireEcran("Séléctionner une case");
        lireClavier(coordonnées);
        si verifC == 1 //les coordonnées sont valide
            écrireEcran("valeur ?");
            lireClavier(valeur);
            si verifV == 1
                ajoutvaleur(valeur);
            fin si
            affichegrille();   


        sinon si verifC == 0 //coordonnées non valide
            écrireEcran("erreur: veuiller entrer des coordonnées valide.");
        finsi


    

    sinon si menu == 2 //supprimer une valeur
        écrireEcran("Séléctionner une case");
        lireClavier(coordonnées);
        si verifSupp == 1 
            suppValeur(coordonnées);
        
        sinon si verifSupp == 0 
            écrireEcran("impossible de supprimer une valeur de la grille de base");
        fin si
        
                



    




    sinon si menu == 3 //arreter la partie 
    fin si 
finfaire










fin