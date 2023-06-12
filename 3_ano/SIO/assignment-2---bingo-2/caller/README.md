# Caller module #
> The caller module coordinates the evolution of the game. It validates the player cards. It creates and shuffles the decks that will be assigned to each player. It can detect if other players cheat and if so the caller module can disqualify them. The caller module signs the data from all users and signs the decks before the game.

## Caller Module usage ##
This folder contains the methods for the caller, but for the caller to be connected to the game must run player_sock.py script with the `-c` parameter,
located in the player folder.

### Methods list ###

- ` msg_handler ` 
  - Receives the messages coming from the socket connection and decides which methods to use

- ` new_player_handler `
  - Stores receive new player info though message with id 1
  - @attribute Dict with message fields: `dict`

- ` request_players_lst `
  - Requests players list to the playing area
 
- ` create_deck `
  - Creates a deck with random numbers and encrypts
  - @return Encrypted Deck : `list`

- ` show_final_menu `
  - Show menu at end of the game

- ` auth `
  - Makes caller authentication
  - @attribute Player Socket : `sock`
  - @attribute nick (Player nickname) : `str`
  - @return Player sequence number : `int`
