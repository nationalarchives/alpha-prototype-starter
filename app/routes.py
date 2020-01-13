from app import app
from flask import render_template

@app.route('/frontendproto/')
def home():
    return render_template('home.html', title="Alpha prototype starter")


@app.route('/frontendproto/down/the/path')
def home2():
    return render_template('home.html', title="Another page (check static routes)")

# Housekeeping routes
@app.route('/ping')
def ping():
    return 'OK', 200


@app.route('/')
def root():
    return 'You should not be here. The base route is /frontendproto'