# imports.
import mysql.connector

# Connector.
import mysqlx

mydb = mysql.connector.connect(host="localhost", user="vasilhs", password="bill", database ="BloodDonors", buffered=True)
mycursor = mydb.cursor()


# Printing all donors in the database.
def PrintDonors():

     mycursor.callproc('PrintDonors')
     for result in mycursor.stored_results():
        print(result.fetchall())

input = int(input("Select a number: "))
if input == 1:
    PrintDonors()

