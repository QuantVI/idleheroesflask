# https://www.youtube.com/watch?v=MwZwr5Tvyxo
# Python Flask Tutorial: Full- Featured Web App Part 1- Getting Started

NOTES = """
Using the app.run(debug=True) is easier to use when we want to run
this script directly. However, if we are a going to import this script,
we would not used __main__, but instead the name of the module.
(imported to? or this file?)
"""

from flask import Flask
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
def hello():
    return "<h1>Something else besides hello world.</h1>"

@app.route("/vince_example")
def goodbye():
    return "<i>A line other than hello world.</i>"

# two routes can be handled by the same function as well
@app.route("/about")
@app.route("/not_about")
def about():
    return "<u>The about page.</u>"
# both /about and /not_about will run the about() function


# only works when script run directly
#   >>> python flaskblog.py
if __name__ == "__main__":
    app.run(debug=True)
