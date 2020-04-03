# https://www.youtube.com/watch?v=MwZwr5Tvyxo
# Python Flask Tutorial: Full- Featured Web App Part 1- Getting Started

from flask import Flask
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
def hello():
    return "Something else besides hello world."

@app.route("/wtf")
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

#if __name__ == "__main__":
#    app.run(debug=True)


notes = """
This creates tons of problems on Windows. One problem is that the server NEVER SHUTS DOWN
even when you use control C.

flask held onto a previous example form a prevous file where I return JSONify data of
{"about" :"Hello World"}. Literally that was yesterdaya and the think was still running despite
use CTRL+C

Since flask runs on port 5000 (i.e. 120.0.0.1:5000 or localhost:5000)

this command line command will find all processes on that port and give you the process ID (PID)

    >>> nestat -aon | findstr :5000

result is like this:

$ netstat -aon | findstr :5000
  TCP    127.0.0.1:5000         0.0.0.0:0              LISTENING       16660
  TCP    127.0.0.1:5000         127.0.0.1:57452        TIME_WAIT       0
  TCP    127.0.0.1:5000         127.0.0.1:57453        TIME_WAIT       0


Then you can kill the process (Git Bash and like Windows CMD) like this

    >>> taskkill //F //PID 16660

You need the doube forward slah for it to work. Then if you navigate back to
localhost:5000, you will get an error. This mean that process was killed.

"""