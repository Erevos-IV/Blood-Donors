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
print("1- View all the donors")
print("2- View all the employees")

# User will choose what he wants to see.
input = str(input("Select a number: "))

if input == '1':
     print("All Donors")
     PrintDonors()


elif input == '2':
    print("All employees:")
    PrintEmployees()

else:
    print("Exiting...")


