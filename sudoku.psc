programme sudoku c'est

procédure affichegrille() 
//affiche la grille de sudoku

procédure menu()
//affiche le menu et retourne le choix de l'utilisateur


fonction verificationCoordonnées()
//verifie que les coordonnes sont dans l'intervalle A-I en ordonnes et l'intervalle 1-9 en abscisse
retourne verifC

fonction verificationValeur()
//verifie que la valeur est dans l'intervalle 1-9 et que la valeur n'est pas deja presente dans la ligne/colonne et carre de 3x3
retourne verifV

procédure ajoutvaleur() 
//ajout de la valeur dans la grille de sudoku


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
        si verifC == 1
            écrireEcran("valeur ?");
            lireClavier(valeur);
            si verifV == 1
                ajoutvaleur(valeur);
            fin si
            affichegrille();   


        sinon si verifC == 0
            écrireEcran("erreur: veuiller entrer des coordonnées valide.");
        finsi



    sinon si menu == 2 //supprimer une valeur




    sinon si menu == 3 //arreter la partie 
finfaire














fin