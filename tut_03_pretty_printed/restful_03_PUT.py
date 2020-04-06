from flask import Flask, jsonify, request 
#import objects from the Flask module

NOTES = """
POST tned to be used for "inserting" data.
PUT is used for "updating" data


found_names[0]["kname"] = request.json["kname"]
    Not fond of this statement, but due to Pytho beig by reference
    found_names[0] refers to something in our prog_lamguages external variable
    If w echange it, we also change what's in prog_languages.
    I woulf prefer to just modify prog_languages directly, since we already
    used prog_languages inthe list comprehension, and didn't pass prog_languages in
    as a variable.

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

# we assume one dict passed via PUT, and only one matc in prog_languages
@app.route("/lang/<string:name_to_mod>", methods=["PUT"])
def editOne(name_to_mod):
    # this is a list of dictionaries, but in our case will contain 1 dict only
    found_names = [kn for kn in prog_languages if kn["kname"] == name_to_mod]
    # the data sent with the PUT is what to change the prog_language value to
    
    # tutorial way
    found_names[0]["kname"] = request.json["kname"]
        # modfies the value for this key in prog_languages "by reference"

    
    # return dict of what the new entry should be
    return jsonify({"kname" : found_names[0]["kname"]})

if __name__ == "__main__":
    app.run(debug=True)