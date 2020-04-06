from flask import Flask, jsonify, request 
#import objects from the Flask module

NOTES = """
We use the same /lang/ enpoint for the POST method, but just change the method.
By changeing the method we can define a new function for that method on the endpoint.
The functin will have a different behavior.

We will add to our list of programmign languages.

In the addOne() function, we expect thet the user will POST a dictionary of the
same sturcture. It will be a one key dictionary with the kname key, and a
programming lanugage as the value. As such, we can ask for the "kname" of this
passed in information in the addOne() function - since we know/expect that key
to be one of the keys.

It would be simpler to use a Chrom add=in to sen the post request  but the Postman
tabbed addon had issues. I was forced to download the separate POSTMAN application,
which sent the request without issues.

In POSTMAN we want these settings

    Method: POST
    URL: 127.0.0.1:5000/lang (or use localhost:5000/lang)
    [x] Body [x] raw [v] JSON (application/json)

    in the body area

    {"kname" : "some programming language. e.g. Java}

POST tned to be used for "inserting" data.
PUT is used for "updating" data


"""

prog_languages = [
    {"kname": "Python"},
    {"kname": "Ruby"},
    {"kname": "JavaScript"},
    {"kname": "F#"}
]



app = Flask(__name__) # define app using Flask

@app.route("/", methods=["GET"])
def starter_message():
    return jsonify({"starter_message": "It works."})

@app.route("/lang", methods=["GET"])
def returnAll():
    return jsonify({"outer_dictiionary_key" : prog_languages})

@app.route("/lang/<string:name_to_find>", methods=["GET"])
def returnOne(name_to_find):
    found_names = [kn for kn in prog_languages if kn["kname"] == name_to_find]
    return jsonify(found_names)

@app.route("/lang", methods=["POST"])
def addOne():
    # we extract the information "POST"ed by the user
    user_sent_this = {"kname" : request.json["kname"]}

    prog_languages.append(user_sent_this)

    return jsonify(prog_languages)



if __name__ == "__main__":
    app.run(debug=True)