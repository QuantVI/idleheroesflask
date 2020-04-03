# https://www.youtube.com/watch?v=MwZwr5Tvyxo
# Python Flask Tutorial: Full- Featured Web App Part 1- Getting Started

NOTES = """

"""

from flask import Flask
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
def hello():
    return "<h1>Something else besides hello world.</h1>"

@app.route("/wtf")
def goodbye():
    return "<i>A line other than hello world.</i>"

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

# by running in debug mode, we don't have to restart he server
# every time we make a change.

#if __name__ == "__main__":
#    app.run(debug=True)

# alternatively in the command line we cen used this

# Mac (or on WIndows with Git Bash)  !!!!!!!!!!!!!!!
# export FLASK_DEBUG=1

# Windows
# set FLASK_DEBUG=1