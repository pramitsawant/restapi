class User():
    def __init__(self):
        self.conn = sqlite3.connect('rest_test.db')
    
    def register(username,email,password):
        c = conn.cursor()
        c.execute("INSERT INTO user (name,password,email,created) VALUES ('"+username+"','"+password+"','"+email+"','2006-01-05')")
        conn.commit()
        
    def get_user(username,password):
        sql = "SELECT * FROM user where name='"+username+"' and password = '"+password+"'"
        c = conn.cursor()
        user =  c.execute(sql).fetchall()
        if len(user) == 1:
            return True,user
        else:
            return True,user

class Merchant():
    def __init__(self):
        pass
    
    def register(self):
        pass
        
class Brand():
    def __init__(self):
        pass
    
    def create(self):
        pass
        
    def assign(self):
        pass

class Outlet():
    def __init__(self):
        pass
    
    def create(self):
        pass
        
    def assign(self):
        pass

class Offer():
    def __init__(self):
        pass
    
    def create(self):
        pass
        
    def edit(self):
        pass

    def checkExpiry(self):
        pass
    
    def viewedby(self):
        pass

    def likedby(self):
        pass

    def redeemedby(self):
        pass

class OffersFilter():
    def __init__(self):
        pass
    
    def by(self):
        pass
        
