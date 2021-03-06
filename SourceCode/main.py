# imports.
import mysql.connector

# Connector.

mydb = mysql.connector.connect(host="localhost", user="vasilhs", password="bill", database ="BloodDonors", buffered=True)
mycursor = mydb.cursor()

Credentials = {'Vasilhs':'VG10111', 'Admin2021':'Billaros'}
def loginUser():

    username = input('Enter username: ')
    password = input('Enter password: ')

    if username in Credentials:
        if password==Credentials[username]:
            print('Login Successful')
            pass
        else:
            print('Username or password is wrong, try again!')
            loginUser()

    else:
        print('Username or password is wrong, try again!')
        loginUser()

# Printing all donors in the database.
def PrintDonors():
    try:
         mycursor.callproc('PrintDonors')
         for result in mycursor.stored_results():
             print(result.fetchall())

    except Exception as error:
        print(f"OOPS {error}")

def PrintEmployees():
    try:
        mycursor.callproc('PrintEmployees')
        for result in mycursor.stored_results():
            print(result.fetchall())

    except Exception as error:
        print(f"OOPS {error}")

def PrintUpcomingAppointments():
    try:
        mycursor.callproc('PrintUpcomingAppointments')
        for result in mycursor.stored_results():
            print(result.fetchall())

    except Exception as error:
        print(f"OOPS {error}")

def DonationsPerDonor():
    try:

        mycursor.callproc('DonationsPerDonor')
        for result in mycursor.stored_results():
            print(result.fetchall())

    except Exception as error:
        print(f"OOPS {error}")

def TodayAppointments():
    try:
        mycursor.callproc('PrintTodayAppointments')
        for result in mycursor.stored_results():
            print(result.fetchall())

    except Exception as error:
        print(error)

def SearchDonorByAMKA(amka):
    try:
        amk= (amka,)
        mycursor.callproc('DonorsByAMKA', amk)
        for result in mycursor.stored_results():
            print(result.fetchall())
    except:
        print("Error, Please check the function")

def SeeNewInserts():

    try:
        mycursor.execute("Select * FROM employeeChanges")
        result = mycursor.fetchall()
        for res in result:
            print(f"{res} \n")

    except Exception as ex:
        print(ex)

def Menu():
    # MENU #
    print("-"*40)
    print("Welcome To The Donation System")
    print("-"*40)
    print("1- View all the donors")
    print("2- View all the employees")
    print("3- View all upcoming Appointments")
    print("4- View all the donations per donor")
    print("5- View all the appointments for today")
    print("6- Search donors by AMKA")
    print("7- See any changes in Employees")

# Login page #
loginUser()

# Menu #
Menu()

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

    elif choose == 6:
        amka = input("Give me the AMKA: ")
        SearchDonorByAMKA(amka)

    elif choose == 7:
        SeeNewInserts()

    else:
        print("Exiting...")
        Start = False

