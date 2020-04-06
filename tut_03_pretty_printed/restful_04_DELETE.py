from flask import Flask, jsonify, request 
#import objects from the Flask module

NOTES = """


"""

prog_languages = [
    {"kname": "Python"},
    {"kname": "Ruby"},
    {"kname": "JavaScript"},
    {"kname": "F#"},
    {"kname": "C++"},
    {"kname": "VBA"},
    {"kname": "Scheme"}
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
    user_sent_this = {"kname" : request.json["kname"]}
    prog_languages.append(user_sent_this)
    return jsonify(prog_languages)

# we assume one dict passed via PUT, and only one matc in prog_languages
@app.route("/lang/<string:name_to_mod>", methods=["PUT"])
def editOne(name_to_mod):
    found_names = [kn for kn in prog_languages if kn["kname"] == name_to_mod]
    found_names[0]["kname"] = request.json["kname"]
        # modfies the value for this key in prog_languages "by reference"
    # return dict of what the new entry should be
    return jsonify({"kname" : found_names[0]["kname"]})

@app.route("/lang/<string:name_to_del>", methods=["DELETE"])
def removeOne(name_to_del):
    found_names = [kn for kn in prog_languages if kn["kname"] == name_to_del]

    prog_languages.remove(found_names[0])

    return jsonify(prog_languages)


if __name__ == "__main__":
    app.run(debug=True)