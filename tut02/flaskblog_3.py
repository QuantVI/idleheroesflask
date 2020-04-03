# https://www.youtube.com/watch?v=QnDWIZuWYW0
# Python Flask Tutorial: Full- Featured Web App Part 2

NOTES = """
We could put html into string, but that's not a good way to do it.

The templates directory/folder within the same folder that this file sits
allows use to have separate html for our routes.

We wil not render html templates. Thus we import render_template
"""

from flask import Flask, render_template
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
@app.route("/home")
def hello():
    return render_template("home.html")

@app.route("/about")
@app.route("/not_about")
def about():
    return render_template("about.html")

if __name__ == "__main__":
    app.run(debug=True)
