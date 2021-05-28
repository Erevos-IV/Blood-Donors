# imports.
import mysql.connector

# Connector.
mydb = mysql.connector.connect(host="localhost", user="vasilhs", password="bill", database ="BloodDonors", buffered=True)
mycursor = mydb.cursor()


# Printing all donors in the database.
def PrintDonors():

     mycursor.callproc('PrintDonors')
     for result in mycursor.stored_results():
         print(result.fetchall())

def PrintEmployees():

    mycursor.callproc('PrintEmployees')
    for result in mycursor.stored_results():
        print(result.fetchall())

# MENU #

# User will choose what he wants to see.
input = int(input("Select a number: "))
if input == 1:
    PrintDonors()

if input == 2:
    PrintEmployees()
