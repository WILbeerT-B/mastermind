# mastermind

Project: Mastermind - TOP Ruby Course

GOAL: 

Build a Mastermind game from the command line where you have 12 turns to guess the secret code, starting with you guessing the computer’s random code.

ABOUT:

How the game is played:

The computer is the codemaker which randomly picks 4 colours out of 8 colours to make the code.

The 8 colours are:

RED
ORANGE
YELLOW
GREEN
WHITE
BLUE
INDIGO
VIOLET

And you, the codebreaker has to guess the code within 12 turns. The codemaker has to provide a feedback to the codebreaker in each turn, using a red scale from 1 to 4(R) to indicate any guess colours in both correct colour and correct position, and a white scale from 1 to 4(W) to indicate any guess colours in correct colour but wrong position.

e.g. The codemaker picked RED GREEN BLUE YELLOW(RGBY) as the secret code and the codebreaker guessed WHITE ORANGE GREEN YELLOW(WOGY) in the 1st turn. Since the codebreaker got 2 correct colours GREEN and YELLOW(GY) but only 1 correct position YELLOW(Y) in this turn, the codemaker would give 1R1W as the feedback.

The objective of the game is to guess the exact positions of the colors in the computer's sequence.

A game will end once the codebreaker either successfully breaks the code or fails to break the code within 12 turns.