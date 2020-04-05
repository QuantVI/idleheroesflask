# this will run/return in json format
from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/")
def hello():
    return jsonify({"about": "Hello World!"})

if __name__=="__main__":
    app.run(debug=True)


info = """
the route word turns thefunction below it into a URI.
"""
