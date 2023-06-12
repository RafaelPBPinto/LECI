# Playing Area module #
> The playing area records all messages exchanged and actions executed. It will handle all the new player and caller connections and every requests made by the users. It is responsible for the correct flow of the game and makes sure that the players and the caller receive the necesary information of the game.

## Playing Area Module usage ##
> python3 playing_area_sock.py port_number must be used to open a connection for the players and the callers to join


### Methods list ###

- ` msg_handler ` 
  - Receives the messages coming from the socket connection and decides which methods to use

- ` new_connection_handler `
  - Handles the new player and caller connections

- ` request_handler `
  - Handles requests made by the players
 
- ` echo_broadcast `
  - Sends message to every connected player except the one requesting to send the message
  - @attribute data : `dict`
  - @attribute e (sender seq number) : `int`
 
- ` player_shuffle `
  - Which time a deck is return sends to the next player in queue to shuffle till everyone shuffled the deck
  - @attribute Data : `dict`

- ` player_shuffle_queue `
  - Manages player queue to shuffle the deck

- ` log `
  - Logs every message that reaches the playing area to a log file
