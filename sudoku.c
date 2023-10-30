#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define N 9

// Grille Sudoku de base
int grilleBase[N][N] = {
    {0, 0, 7, 5, 9, 0, 0, 4, 0},
    {0, 0, 0, 0, 7, 0, 0, 1, 2},
    {4, 0, 0, 0, 0, 1, 0, 0, 5},
    {9, 7, 0, 0, 0, 0, 1, 3, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 8, 1, 0, 0, 0, 0, 7, 4},
    {8, 0, 0, 4, 0, 0, 0, 0, 7},
    {2, 6, 0, 0, 1, 0, 0, 0, 0},
    {0, 4, 0, 0, 6, 9, 2, 0, 0}};

// Fonction pour afficher la grille Sudoku
void afficherSudoku(int grid[N][N])
{
    printf("    1   2   3   4   5   6   7   8   9\n");
    for (int row = 0; row < N; row++)
    {
        if (row % 3 == 0 && row != 0)
        {
            printf("  +---+---+---+---+---+---+---+---+---+\n");
        }
        printf("%c |", 'A' + row);
        for (int col = 0; col < N; col++)
        {
            if (col % 3 == 0)
            {
                printf(" ");
            }
            if (grid[row][col] == 0)
            {
                printf(" [ ]");
            }
            else
            {
                printf(" %d ", grid[row][col]);
            }
        }
        printf(" |\n");
    }
}

// Fonction pour vérifier si une valeur est valide dans une cellule
bool estValide(int grid[N][N], int row, int col, int num)
{
    // Vérifier la ligne et la colonne
    for (int i = 0; i < N; i++)
    {
        if (grid[row][i] == num || grid[i][col] == num)
        {
            return false;
        }
    }

    // Vérifier la région 3x3
    int startRow = row - row % 3;
    int startCol = col - col % 3;
    for (int i = startRow; i < startRow + 3; i++)
    {
        for (int j = startCol; j < startCol + 3; j++)
        {
            if (grid[i][j] == num)
            {
                return false;
            }
        }
    }

    return true;
}

int main()
{
    int grid[N][N];                         // Grille du Sudoku
    memcpy(grid, grilleBase, sizeof(grid)); // Copier la grille de base

    printf("Saisissez les chiffres du Sudoku en utilisant les coordonnees (par exemple, A1, B3, etc.).\n");
    printf("Pour effacer une valeur, saisissez '0'.\n");
    char coord[3];
    int num;

    while (1)
    {
        printf("\n");
        afficherSudoku(grid);
        printf("Coordonnees (ou 'Q' pour quitter) : ");
        scanf("%s", coord);

        if (coord[0] == 'Q' || coord[0] == 'q')
        {
            break;
        }
        else if (coord[0] >= 'A' && coord[0] <= 'I' && coord[1] >= '1' && coord[1] <= '9')
        {
            num = coord[1] - '0';
            int col = coord[0] - 'A';
            int row = num - 1;
            if (grilleBase[row][col] == 0)
            {
                printf("Valeur (1-9) : ");
                scanf("%d", &num);
                if (num >= 1 && num <= 9 && estValide(grid, row, col, num))
                {
                    grid[row][col] = num;
                }
                else
                {
                    printf("Valeur invalide ou déjà présente dans la ligne, colonne ou région.\n");
                }
            }
            else
            {
                printf("Vous ne pouvez pas modifier les valeurs de la grille de base.\n");
            }
        }
        else
        {
            printf("Coordonnees invalides.\n");
        }
    }

    return 0;
}
