from app.controllers.aplication import Aplication
from app.controllers.livro_controller import LivroController
from bottle import Bottle, route, run, request, static_file
from bottle import redirect, template, response
# pyright: reportCallIssue=false
app = Bottle()
ctl = Aplication()
livro = LivroController()

@app.route("/")
def index():
    return ctl.render("index")

@app.route('/static/<filepath:path>')
def serve_static(filepath):
    return static_file(filepath, root='./app/static')

@app.route("/livros")
def livros():
    return livro.livros()

@app.route("/livros/novo")
def novo_livro():
    return livro.novo_livro()

@app.post("/livros/criar")
def criar_livro():
    return livro.criar_livro()

@app.route("/livros/editar/<id>")
def editar_livro(id):
    return livro.editar_livro(id)

@app.post("/livros/atualizar/<id>")
def atualizar_livro(id):
    return livro.atualizar_livro(id)

@app.route("/livros/remover/<id>")
def remover_livro(id):
    return livro.remover_livro(id)

if __name__ == '__main__':
    run(app, host='0.0.0.0', port=8080, debug=True)