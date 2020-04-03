# https://www.youtube.com/watch?v=MwZwr5Tvyxo
# Python Flask Tutorial: Full- Featured Web App Part 2

NOTES = """
We could put html into string, but that's not a good way to do it.

The templates directory/folder within the same folder that this file sits
allows use to have separate html for our routes.
"""

from flask import Flask
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
@app.route("/home")
def hello():
    return "<h1>Something else besides hello world.</h1>"

@app.route("/about")
@app.route("/not_about")
def about():
    return "<u>The about page.</u>"

if __name__ == "__main__":
    app.run(debug=True)
