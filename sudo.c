#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define TAILLE 9

typedef int tGrille[TAILLE][TAILLE];

void chargerGrille(tGrille g)
{
    char nomFichier[30];
    FILE *f;
    printf("Nom du fichier ? ");
    scanf("%s", nomFichier);
    f = fopen(nomFichier, "rb");
    if (f == NULL)
    {
        printf("\n ERREUR sur le fichier %s\n", nomFichier);
    }
    else
    {
        fread(g, sizeof(int), TAILLE * TAILLE, f);
    }
    fclose(f);
}

void afficherGrille(tGrille grille1)
{
    int col, ligne;
    int nb = 1;

    printf("      1  2  3   4  5  6   7  8  9\n");
    printf("    +---------+---------+---------+\n");

    for (ligne = 0; ligne < TAILLE; ligne++)
    {
        if (ligne == 3 || ligne == 6 || ligne == 9)
        {
            printf("    +---------+---------+---------+\n");
        }

        printf("%d   |", nb);

        for (col = 0; col < TAILLE; col++)
        {
            if (col == 3 || col == 6)
            {
                printf("|");
            }

            if (grille1[ligne][col] == 0)
            {
                printf(" . ");
            }

            else
            {
                printf(" %d ", grille1[ligne][col]);
            }
        }
        printf("|\n");
        nb++;
    }
    printf("    +---------+---------+---------+\n");
}

void saisir()
{
}

int main()
{
    tGrille grille1;
    int numLigne, numColonne, valeur;

    chargerGrille(grille1);

    afficherGrille(grille1);
    return 0;
}