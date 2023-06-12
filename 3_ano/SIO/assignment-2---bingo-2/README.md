# Project 2 - Bingo Game #
Diogo Matos (102848, dftm@ua.pt), Tiago Santos (89356, tiago.r.santos@ua.pt), Nuno Vidal (98600,nunovidal@ua.pt), Rafael Pinto (103379, rafaelpbpinto@ua.pt)

## Description ##
Implementation of a robust protocol for handling a distributed game. The implemented game is Bingo. Implementation consists of a server (caller) and multiple clients (players) and a playing area where every entity converges.

## How to test ##

If the machine has Gnome terminal installed, it is possible to run everything (playing area, caller and a given number of players) in different tabs easier just by running the `test.sh` script:

```
sh test.sh [number of players]
```

Nevertheless if you wish to run each program one by one:

```
cd playing_area
python3 playing_area_sock.py [port number] # run playing area
cd ../player
python3 player_sock.py [port number] -c # run caller
python player_sock.py [port number] # run player
```

## Game pipeline ##

Simplified pipeline of the game: 

1. The Playing Area(PA) is opened with a given size (number of players);
2. The Caller sends a authentication request to the PA (the caller doesn't need to be the first to enter the game, it can be a normal Player);
3. The PA replys with a challenge (32 random alphabetical bytes);
4. A pop-up is shown to the Caller in order to input the authentication pin of his PTID card, in order to sign the challenge. Then the answer to the challenge (signature and certificate) is sended back to the PA;
5. The answer is verified by the PA and if everything matches the Caller is accepted. A message with some basic information about the new entity is always broadcasted by the PA;
6. Every time a caller or player joins the game sucessfully, it sends a request to the PA asking for the information about the players that are already in the game;
7. The caller is asked for a N (length of the deck), then sends it to pa that will store it and broadcast it the number because it will be needed by everyone in order to generate and/or check both the deck and the cards;
8. All the players join the game following the same authentication method as described before and endeing with the player list request (point 6);
9. Both the PA and the Caller detect that the PA is full. The PA doesn't accept more players and the Caller precedes with the game;
10. The Caller sends a game status message, informing that the game has begun;
11. The Caller created the deck (N numbers between 0 and N), shuffles it and encrypts each number with a symetric key, and then sends it to the PA in order to be broadcasted;
12. In order, starting from the first player until the player that last joined the game, each player shuffles the deck and encrypts each number with a  symetric key;
13. Each players creats is card and sends it to the PA. Every player and the caller verifys every card;
14. Each players sends the symetric key used to encrypt the deck to the PA in order to be broadcasted;
15. The caller computes the winner, however every player also computes it and sends to the caller, then the caller decides who is trustworthy based on the results the players got;
16. The caller sends the final score to the PA in order to be broadcasted;
17. Finally, both the caller and players can ask for log stored by the playing and leave the game.

## Cheating ##

Both the caller and the player have option to cheat.

The Caller has a 10% chance of cheating when creating the deck, where he will create a deck with an incorrect amount of numbers. The player that is able to detect that will tell all other players, and everyone will leave the game.

The player has 2 cheating possibilites, the first one, is when is time to decide the winner, the players will send their version of the scoreboard allowing the caller to see each player honesty of the results matches with the caller's result. If it doen't match, the caller disqualifies the player.

Other possibility is the player trying to forge a signature with an incorrect key, on the shuffling deck process, there is also a 10% chance the player will generate other key and try to sign the message with it. This time is the playing area that disqualifies the player, because, the only purpose of the playing area is to redirect messages and to verify signatures as a neutral ground, so the only authority the playing area has in the game is the signatures validity.
