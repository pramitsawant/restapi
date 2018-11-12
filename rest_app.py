from flask import Flask,jsonify,request
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)


tasks = [
    {
        'id': 1,
        'title': u'Buy groceries',
        'description': u'Milk, Cheese, Pizza, Fruit, Tylenol', 
        'done': False
    },
    {
        'id': 2,
        'title': u'Learn Python',
        'description': u'Need to find a good Python tutorial on the web', 
        'done': False
    }
]
_offers = ["discount","cashback","flatoff"]

class offers_location(Resource):
    def get(self,location):
        return jsonify(tasks)

class offers_category(Resource):
    def get(self,category):
        return jsonify(tasks)

class offers_filter(Resource):
    def get(self,category):
        return jsonify(tasks)

class offer(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class user(Resource):
    ##SELECT login
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE update
    def post(self,name):
        print(request.form['data'])
        pass
    #INSERT  Register
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE delete
    def delete(self,name):
        pass

class brand(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class outlet(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class merchant(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class offer_views(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class offer_likes(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

class offer_redeem(Resource):
    ##SELECT
    def get(self, name):
        return jsonify(tasks[name])
    ##UPDATE
    def post(self,name):
        print(request.form['data'])
        pass
    ##INSERT
    def put(self,name):
        print(request.form['data'])
        pass
    ##DELETE
    def delete(self,name):
        pass

api.add_resource(user, '/api/user/<int:name>', endpoint = 'user')
api.add_resource(offer, '/api/offer/<int:name>', endpoint = 'offer')
api.add_resource(brand, '/api/brand/<int:name>', endpoint = 'brand')
api.add_resource(outlet, '/api/outlet/<int:name>', endpoint = 'outlet')
api.add_resource(merchant, '/api/merchant/<int:name>', endpoint = 'merchant')
api.add_resource(offer_views, '/api/views/<int:name>', endpoint = 'offer_views')
api.add_resource(offer_likes, '/api/likes/<int:name>', endpoint = 'offer_likes')
api.add_resource(offer_redeem, '/api/redeem/<int:name>', endpoint = 'offer_redeem')
api.add_resource(offers_filter, '/api/offers/filter/<string:query>', endpoint = 'offers_filter')
api.add_resource(offers_location, '/api/offers/location/<string:location>', endpoint = 'offers_location')
api.add_resource(offers_category, '/api/offers/category/<string:category>', endpoint = 'offers_category')

if __name__ == '__main__':
    app.run(debug=True)