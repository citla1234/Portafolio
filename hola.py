from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("portafolio.html")

if __name__== '__main__':
    app.run('0.0.0.0', 5000, debug=True)