# imports.
import mysql.connector

# Connector.
mydb = mysql.connector.connect(host="localhost", user="vasilhs", password="bill", database ="BloodDonors")
mycursor = mydb.cursor()

