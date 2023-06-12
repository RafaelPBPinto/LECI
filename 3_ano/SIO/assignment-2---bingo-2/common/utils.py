def validate_card(card, n):
    return False if len(card) != int(n/4) or len(card) != len(set(card)) else True

def error(sock, id, msg): #this function can be used to act in case of something went wrong(cheater detected, etc)
    if id == 'c': #cheater
        pass
    elif id == 'f': #functional issue (something odd has happened)
        pass

