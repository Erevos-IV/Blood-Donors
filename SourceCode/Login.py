Credentials = {'Vasilhs':'VG10111', 'Admin2021':'Billaros'}

# This function will take the credentials from above.
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
