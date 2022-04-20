import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])

    domain = raw_input("Domínio de email? ")
    result = db.execute("SELECT * FROM firstname LIKE ? OR middlename LIKE ?",(domain,) )
    for row in result:
        print(row)

    db.close()

main(sys.argv)