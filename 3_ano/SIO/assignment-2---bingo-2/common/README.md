# Common module #
> This module is used to performe any actions that involve cryptography and autentication. For cryptography it is able to create an assymetric key witch will be used to sign messages and verify that same signature. It can also encrypt and decrypt messages. For autentication we have methods that allow us to sign and authenticate a message using the citizen card.

## Communication protocol ##

Used by the player, caller and playing area in order to communicate. The protocol and some other methods that are needed to communicate throught sockets
can be found in `protocol.py`.

Be table bellow has a brief explanation of all the types of messages available.

| msg_id | description                                                  | data                                   | send by            |
|--------|--------------------------------------------------------------|----------------------------------------|--------------------|
| 0      | authentication                                               | user_type(0-caller,1-player), nickname | players and caller |
| 1      | new player - used to disseminate the info about a new player | sequence_number, nickname              | playing area       |
| 2      | update status of the game                                    | status(0-not started,1-started), N     | caller             |
| 4      | deck dissemination                                           | deck, touched_by(list of seq's)        | players            |
| 5      | winner dissemination                                         | winner(array of dicts sorted by score) | players and caller |
| 6      | key exchange                                                 | key, iv                                | players and caller |
| 7      | cheater detection                                            | seq_cheater                            | players and caller |
| 11     | request                                                      | request("player_list","log")           | players and caller |
| 12     | request response                                             | requested("player_list","log"), data   | playing area       |

## Cryptography ##

In order to support the cryptographic needs throughout the game, a set of methods are available in `crypto.py`.

### Methods list ###

- ` gen_rsa_assymmetric_keys ` 
  - generates a rsa assymetric key pair
  - @return keypair : `RSAPrivateKey`

- ` signature_rsa `
  - signs a given message using PSS(for padding) and SHA-256 
  - @attribute RSA private key : `RSAPrivateKey`
  - @attribute message : `str`
  - @return signature : `bytes`

- ` verify_signature `
  - verifys a given signature
  - @attribute RSA public key : `RSAPublicKey`
  - @attribute message : `str`
 
- ` CBC_encrypt `
  - encrypts a given message
  - @attribute key : `bytes`
  - @attribute iv : `bytes`
  - @attribute value
  - @return cipher : `str`
 
- ` CBC_decrypt `
  - decrypts a given message
  - @attribute key : `bytes`
  - @attribute iv : `bytes`
  - @attribute value
  - @return clearText : `bytes`

## Authentication ##

In order to support authentication, two methods are available in `authentication.py`.

### Methods list ###

- ` sign_message ` 
  - signs a given message with the citizen card private key
  - gets citizen card certificate
  - @attribute message : `str`
  - @return signature_str : `str`, cert : `str`

- ` verify_signature_auth `
  - verifies signature in the authentication process
  - @attribute challenge : `str`
  - @attribute signature_str : `str`
  - @attribute cert : `str`
  - @return check : `boolean` 

## Utils ##

Some methods that are usefull throughout the game by different entities, available in `utils.py`.

### Methods list ###

- ` validate_card `
  - validates a given card
  - @attribute card : `list`
  - @attribute n : `int`
  - @return check : `boolean`
