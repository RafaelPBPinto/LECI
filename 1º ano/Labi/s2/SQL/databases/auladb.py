import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])

    result = db.execute("SELECT * FROM contacts")
    for row in result:
        print(row)
        
    db.close()

main(sys.argv)