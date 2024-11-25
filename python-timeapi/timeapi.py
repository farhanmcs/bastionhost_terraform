from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/', methods=['GET'])
def greet():
    c = datetime.now()
    return jsonify(date_time_now=f"{c}")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5432, debug=True) # run application