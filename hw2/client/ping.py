from flask import Flask
app = Flask(__name__)

import requests

@app.route('/')
def hello_ping():
    return 'Hello, from client!'

@app.route('/client')
def do_ping():
    try:
        response = requests.get('http://127.0.0.1:1234/pong')
    except requests.exceptions.RequestException as e:
        print('\n Cannot reach the pong service.')
        return 'Ping ...\n'

    return 'Ping ... ' + response.text + ' \n'

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 5000, debug = True)