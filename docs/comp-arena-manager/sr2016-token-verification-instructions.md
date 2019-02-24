# SR2016 Token Verification Instructions

These are instructions for the 'check' program in comp16/token-check of git://srobo.org/arena.git

1. If the last line printed shows `Check another token? [Y/n]`, press enter on the keyboard.
1. Present the token to the webcam, holding opposite corners loosely.
1. Slowly rotate the token about the corners you are holding so that the webcam gradually sees all of the way around the token.
1. Once the webcam has seen all six sides the program should report whether the token is a pass or a fail. In the case of it failing validation it should output some information to help track down the problem.
