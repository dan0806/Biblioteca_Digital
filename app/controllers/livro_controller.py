from bottle import template, redirect, request
from app.models.repositorio_livros import RepositorioLivros
# pyright: reportAttributeAccessIssue=false

class LivroController():

    def __init__(self):
        self.repository = RepositorioLivros()

        self.pages = {
            "livros": self.livros,
            "novo_livro": self.novo_livro,
            "editar_livro": self.editar_livro
        }

    def livros(self, id=None):
        livros = self.repository.listar_todos()

        return template(
            "app/views/html/livros",
            livros=livros
        )

    def novo_livro(self, id=None):
        return template("app/views/html/criar_livro")

    def criar_livro(self):
        titulo = request.forms.get("titulo")
        autor = request.forms.get("autor")
        ano = request.forms.get("ano")
        genero = request.forms.get("genero")

        self.repository.criar_livro(
            titulo,
            autor,
            ano,
            genero
        )

        redirect("/livros")

    def editar_livro(self, id):

        livro = self.repository.procurar_id(int(id))

        return template(
            "app/views/html/editar_livro",
            livro=livro
        )

    def atualizar_livro(self, id):

        titulo = request.forms.get("titulo")
        autor = request.forms.get("autor")
        ano = request.forms.get("ano")
        genero = request.forms.get("genero")

        self.repository.atualizar(
            int(id),
            titulo,
            autor,
            ano,
            genero
        )

        redirect("/livros")

    def remover_livro(self, id):

        self.repository.remover(int(id))

        redirect("/livros")