from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_pong():
    return 'Hello, from server!'

@app.route('/server')
def do_pong():
    return 'Pong'

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 1234, debug = True)