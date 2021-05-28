# imports.
import mysql.connector

# Connector.
mydb = mysql.connector.connect(host="localhost", user="vasilhs", password="bill", database ="BloodDonors")
mycursor = mydb.cursor()

mycursor.execute("Create database BloodDonors")
mycursor.execute("show databases")
