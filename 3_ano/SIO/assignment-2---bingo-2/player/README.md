# Player module #
> The player is able to sign in to the game and communicate with the caller. It is able to encrypt and decrypt its deck (including its number) and create its card.The player can also choose to diplay de list of current player as well as its menu at the end of the game.

## Player Module usage ##
```
python3 player_sock.py port_number [-c for caller] [hostname]
```
The caller uses this file to open the connection too, but the caller methods are located in the caller folder in caller.py file, for the player they are located in this folder, in the player.py file.

### Methods list ###

- ` msg_handler ` 
  - Receives the messages coming from the socket connection and decides which methods to use

- ` new_player_handler `
  - Stores receive new player info though message with id 1
  - @attribute Dict with message fields: `dict`

- ` request_players_lst `
  - Requests players list to the playing area
 
- ` encrypt_deck `
  - Iterates deck, and encrypts each number with the symmetric key.
  - @attribute deck : `list`
  - @return Encrypted Deck : `list`
 
- ` request_answer_handler `
  - Handles Playing area responses to their requests (Ex: players list)
  - @attribute Data : `dict`

- ` create_card `
  - Creates player card

- ` winner `
  - Calculates each player score based on their card to decide the winner
  - @return Sorted Player Scores : `list`


- ` decrypt_deck_number `
  - decrypts given deck position to reveal original number
  - @attribute index on deck : `int`
  - @return Deck Number in "index" position : `int`

- ` decrypt_deck `
  - decrypts entire deck
  - @return Decrypted deck : `list`

- ` show_final_menu `
  - Show menu at end of the game

- ` auth `
  - Makes player authentication
  - @attribute Player Socket : `sock`
  - @attribute nick (Player nickname) : `str`
  - @return Player sequence number : `int`
