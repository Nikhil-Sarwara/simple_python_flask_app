from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    # Get the name of the container host for fun
    hostname = os.uname()[1]
    return f'<h1>Hello from your Dev Container!</h1><p>Running on container host: {hostname}</p>'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
