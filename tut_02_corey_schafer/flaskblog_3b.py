# https://www.youtube.com/watch?v=QnDWIZuWYW0
# Python Flask Tutorial: Full- Featured Web App Part 2

NOTES = """
We could put html into string, but that's not a good way to do it.

The templates directory/folder within the same folder that this file sits
allows use to have separate html for our routes.

We will now render html templates. Thus we import render_template

We will also try out template inheritance.

"""
# fake representation of a blogpost
my_posts = [
    {
        "author" : "Tite (Noriaki), Kubo",
        "title" : "Blog Post I - Bleach",
        "content" : "Ichirin no Hana!",
        "date_posted" : "April 04 2020"
    },
    {
        "author" : "Kishimoto, Masashi",
        "title" : "Blog Post II - Naruto",
        "content" : "Minato vs Tobi Theme",
        "date_posted" : "April 04 2020"
    }
]


from flask import Flask, render_template
# instantiate Flask application
app = Flask(__name__)


@app.route("/")
@app.route("/home")
def hello():
    """whatever varibale name we use as the argument name here we pass in,
    we will have access to that variable in out template.

    It will be equal to the my_posts data.

    The templatig engine that Flask uses is called Jina2, and it allows 
    us to write code within our templates (e.g eith the HTML)

    """
    return render_template("home02.html", posts=my_posts)

@app.route("/about")
@app.route("/not_about")
# we change the about page to pass in a title
def about():
    return render_template("about.html", title="~~About~~")

if __name__ == "__main__":
    app.run(debug=True)
