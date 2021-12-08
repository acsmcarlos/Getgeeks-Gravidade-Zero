

def factory_new_user():
    
    return {
        "name":"Clint Barton",
        "email": "barton@shield.com",
        "password": "123456"
    }



def factory_user_session(target):

    name = 'Kate Bishop'
    email = 'kate@hotmail.com'
    password = '123456'

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }

    return data[target]