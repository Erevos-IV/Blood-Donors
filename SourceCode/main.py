# Will soon split the source code in smaller parts.

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

def PrintUpcomingAppointments():

    mycursor.callproc('PrintUpcomingAppointments')
    for result in mycursor.stored_results():
        print(result.fetchall())

def DonationsPerDonor():
    mycursor.callproc('DonationsPerDonor')
    for result in mycursor.stored_results():
        print(result.fetchall())

# MENU #
print("1- View all the donors")
print("2- View all the employees")
print("3- View all upcoming Appointments")
print("4- View all the donations per donor")
# User will choose what he wants to see.
input = str(input("Select a number: "))

if input == '1':
     print("All Donors")
     PrintDonors()

elif input == '2':
    print("All employees:")
    PrintEmployees()

elif input == '3':
    print("Upcoming Appointments")
    PrintUpcomingAppointments()

elif input == '4':
    print("Donations Per Donor")
    DonationsPerDonor()
else:
    print("Exiting...")




