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

def TodayAppointments():

    mycursor.callproc('PrintTodayAppointments')
    for result in mycursor.stored_results():
        print(result.fetchall())




# MENU #
print("-"*40)
print("Welcome To The Donation System")
print("-"*40)
print("1- View all the donors")
print("2- View all the employees")
print("3- View all upcoming Appointments")
print("4- View all the donations per donor")
print("5- View all the appointments for today")

# User will choose what he wants to see.
Start = True
while Start:

    choose = int(input("Select a number: "))

    if choose == 1:
         print("All Donors")
         PrintDonors()


    elif choose == 2:
        print("All employees:")
        PrintEmployees()

    elif choose == 3:
        print("Upcoming Appointments")
        PrintUpcomingAppointments()

    elif choose == 4:
        print("Donations Per Donor")
        DonationsPerDonor()

    elif choose == 5:
        print("All the appointments for today")
        TodayAppointments()

    else:
        print("Exiting...")
        Start = False


