from flask import Flask
app = Flask(__name__)
@app.route('/')
def homepage():
    return "<p> You are on the right page! </p> <br/> Good job! "
@app.route('/sum/<n1>/<n2>')
def sum(n1, n2):
    return str ( int(n1) + int (n2))
app.run(host='0.0.0.0')
