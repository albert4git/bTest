/*
 * =====================================================================================
 *
 *       Filename:  simon.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 00:15:12
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
// Program 4.13 Simple Simon
#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h> 
int main(void)
{
        char another_game = 'Y';
        const unsigned int DELAY = 1;
        bool correct = true;
        unsigned int tries = 0;
        unsigned int digits = 0;
        time_t seed = 0;
        unsigned int number = 0;
        time_t wait_start = 0;
        clock_t start_time = 0;

        unsigned int score = 0;
        unsigned int total_digits = 0;
        unsigned int game_time = 0;
        printf("\nTo play Simple Simon, ");
        printf("watch the screen for a sequence of digits.");
        printf("\nWatch carefully, as the digits are only displayed"
                        " for %u second%s ", DELAY, DELAY > 1 ? "s!" :"!");
        printf("\nThe computer will remove them, and then prompt you ");
        printf("to enter the same sequence.");
        printf("\nWhen you do, you must put spaces between the digits.\n");
        printf("\nGood Luck!\nPress Enter to play\n");
        scanf("%c", &another_game);
        // Game loop - one outer loop iteration is a complete game

        do
        {
                // Initialize game
                correct = true;
                // Indicates correct sequence entered
                tries = 0;
                // Initialize count of successful tries
                digits = 2;
                // Initial length of digit sequence
                start_time = clock();
                // Record time at start of game
                // Inner loop continues as long as sequences are entered correctly
                while(correct)
                {
                        ++tries;
                        // A new attempt
                        wait_start = clock();
                        // record start time for sequence
                        // Generate a sequence of digits and display them
                        srand(time(&seed));
                        // Initialize the random sequence
                        for(unsigned int i = 1 ; i <= digits ; ++i)
                                printf("%u ", rand() % 10);
                        // Output a random digit
                        for( ; clock() - wait_start < DELAY*CLOCKS_PER_SEC; );
                        // Wait DELAY seconds
                        // Now overwrite the digit sequence
                        printf("\r");
                        // Go to beginning of the line
                        for(unsigned int i = 1 ; i <= digits ; ++i)
                                printf(" ");
                        // Output two spaces
                        if(tries == 1)
                                // Only output message for 1st try
                                printf("\nNow you enter the sequence - don't forget"
                                                " the spaces\n");
                        else
                                printf("\r");
                        // Back to the beginning of the line

                        srand(seed);
                        // Reinitialize the random sequence
                        for(unsigned int i = 1 ; i <= digits ; ++i)
                                // Read the input sequence & check against the original
                        {
                                scanf("%u", &number);
                                // Read a digit
                                if(number != rand() % 10)
                                        // Compare with generated digit
                                {
                                        correct = false;
                                        // Incorrect entry
                                        break;
                                        // No need to check further...
                                }
                        }
                        // On every third successful try, increase the sequence length
                        if(correct && ((tries % 3) == 0))
                                ++digits;
                        printf("%s\n", correct ? "Correct!" : "Wrong!");
                }
                // Calculate and output the game score
                score = 10*(digits - ((tries % 3) == 1));
                // Points for sequence length
                total_digits = digits*(((tries % 3) == 0) ? 3 : tries % 3);
                if(digits > 2)
                        total_digits += 3*((digits - 1)*(digits - 2)/2 - 1);
                game_time = (clock() - start_time)/CLOCKS_PER_SEC - tries*DELAY;
                if(total_digits > game_time)
                        score += 10*(game_time - total_digits);
                // Add points for speed
                printf("\n\nGame time was %u seconds. Your score is %u", game_time, score);
                fflush(stdin);
                // Clear the input buffer
                // Check if new game required
                printf("\nDo you want to play again (y/n)? ");
                scanf("%c", &another_game);
        }while(toupper(another_game) == 'Y');
        return 0;
}
