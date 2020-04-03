# https://www.youtube.com/watch?v=MwZwr5Tvyxo
# Python Flask Tutorial: Full- Featured Web App Part 1- Getting Started

from flask import Flask
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
def hello():
    return "Something other than hello world."

@app.route("/")
def goodbye():
    return "Something other than hello world."

# In the Windows command line use
# $>    set FLASK_APP=flakblog.py
# so that you can type the following command to run the app
# $>    flask run
# if using the GitBack command line in Windows, use "export"
# as below for the Max terminal.


# In the Mac terminal use
# $>    export FLASK_APP=flakblog.oy
# so that you can type the following command to run the app
# $>    flask run

# Alternatively, you can type
# $>    python flaskblog.py
# ah. this line doesn't work if we don't hae it in debug mode
# and if we don't set what to do whn python runs __main__

if __name__ == "__main__":
    app.run(debug=True)
