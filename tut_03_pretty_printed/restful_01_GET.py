from flask import Flask, jsonify, request 
#import objects from the Flask module

NOTES = """
In the tutorial, he modifies the port to 8080. We wil not. We'll stick to the
default port of 5000.

In our returnOne function we call the parameter name_to_find, to reduce 
ambigutity between the paramete ruse din the url and the name of the dictionary
key itself. In fact, the ditionary key was called "name", but I will nnow change
it as well to something else "kname" (i.e. key name + using kn for the n sound)

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

# onyl works with get requests
@app.route("/lang", methods=["GET"])
def returnAll():
    # does not need to be wrapped in another dictionary
    # return jsonify(prog_languages)
    # the way it;s done int he tutorial
    return jsonify({"outer_dictiionary_key" : prog_languages})

# here we ill search by name and return the dictionary there
@app.route("/lang/<string:name_to_find>", methods=["GET"])
def returnOne(name_to_find):
    found_names = [kn for kn in prog_languages if kn["kname"] == name_to_find]
    # we return the entire dict for that programming language
        # not the 0th item like in the tutorial.
    #return jsonify({"outer_return_result_key": found_names})
    # my version, wouth outer dictionary
    return jsonify(found_names)

if __name__ == "__main__":
    app.run(debug=True)