from mysql import connector

def DB_connect():
    try:
        db = connector.connect(user='ratezone_userAdmin', password='ratezone@123', database='ratezoneDB', autocommit=True)
    except connector.Error as err:
        if err.errno == connector.errorcode.ER_ACCESS_DENIED_ERROR:
            print('Something is wrong with the username or password')
        elif err.errno == connector.errorcode.ER_BAD_DB_ERROR:
            print('Database does not exist')
        else:
            print(err)

    cursor = db.cursor(dictionary=True)

    return db, cursor
