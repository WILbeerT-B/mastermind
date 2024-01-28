# mastermind

Project: Mastermind - TOP Ruby Course


ABOUT:

How the game is played:

The computer is the codemaker which randomly picks a pattern of 4 pegs in different colours out of 8 colours (including red, green, blue, yellow, orange, pink, black and white) to make the code, while you, the codebreaker has to guess the code within 12 turns. The codemaker has to provide a feedback to the codebreaker in each turn, using a red scale from 1 to 4(R) to indicate any pegs in both correct colour and correct position, and a white scale from 1 to 4(W) to indicate any pegs in correct colour but wrong position.

e.g. The codemaker picked red green blue yellow(RGBY) as the secret code and the codebreaker guessed white orange green yellow(WOGY) in the 1st turn. Since the codebreaker got 2 correct colours green and yellow(GY) but only 1 correct position yellow(Y) in this turn, the codemaker would give 1R1W as the feedback.

The objective of the game is to guess the exact positions of the colors in the computer's sequence.
A game will end once the codebreaker either successfully breaks the code or fails to break the code within 12 turns.


GOAL: Build a Mastermind game from the command line where you have 12 turns to guess the secret code, starting with you guessing the computer’s random code.