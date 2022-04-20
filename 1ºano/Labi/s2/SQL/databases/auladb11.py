import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    contactos = 0;

    result = db.execute("SELECT firstname FROM contacts")
    for row in result:
        print(row)
        contactos= contactos+1

    print(repr(contactos) + " contactos")
    db.close()

main(sys.argv)