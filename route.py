from app.controllers.aplication import Aplication
from bottle import Bottle, route, run, request, static_file
from bottle import redirect, template, response
# pyright: reportCallIssue=false
app = Bottle()
ctl = Aplication()

@app.route("/")
def index():
    return ctl.render("index")

@app.route('/static/<filepath:path>')
def serve_static(filepath):
    return static_file(filepath, root='./app/static')


if __name__ == '__main__':
    run(app, host='0.0.0.0', port=8080, debug=True)