from flask import Flask

app = Flask(__name__)

@app.route('/view/<id>')
def view_product(id):
    return "View %s" % id

@app.route('/buy/<id>')
def buy_product(id):
    return "Buy %s" % id