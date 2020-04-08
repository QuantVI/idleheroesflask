# https://www.youtube.com/watch?v=QnDWIZuWYW0
# Python Flask Tutorial: Full- Featured Web App Part 2
	# by Corey Schafer

# stopped around 22:27 minutes, after adding bootstrap.

NOTES = """
We could put html into string, but that's not a good way to do it.

The templates directory/folder within the same folder that this file sits
allows use to have separate html for our routes.

We will now render html templates. Thus we import render_template

We will also try out template inheritance.

We go here https://getbootstrap.com/docs/4.4/getting-started/introduction/

     to the area called "Starter Template"

to grab some information from bootsrap. Bootstrap is served via CDN.
(content delivery network)
This means nothing to install. We just include some code js css etc into our
layout.html, and all ote rpages inheritign form layout wil also have
Bootstrap stuff applied to them.

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


from flask import Flask, render_template, url_for
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
    return render_template("home.html", posts=my_posts)

@app.route("/about")
@app.route("/not_about")
# we change the about page to pass in a title
def about():
    return render_template("about.html", title="ABOUT")

if __name__ == "__main__":
    app.run(debug=True)
