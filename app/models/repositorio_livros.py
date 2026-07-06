import json
import os
from app.models.livro import Livro

class RepositorioLivros():
    def __init__(self):
        self.file_path = "app/data/livros.json"

        os.makedirs("app/data", exist_ok=True)
        if not os.path.exists(self.file_path):
            with open(self.file_path, "w", encoding="utf-8") as file:
                json.dump([], file, ensure_ascii=False, indent=4)

    def _carregar(self):
        with open(self.file_path, "r", encoding="utf-8") as file:
            data = json.load(file)
        return [Livro.from_dict(livro) for livro in data]
    
    def _salvar(self, livros):
        with open(self.file_path, "w", encoding="utf-8") as file:
            json.dump(
                [livro.to_dict() for livro in livros],
                file,
                ensure_ascii=False,
                indent=4
            )

    def listar_todos(self):
        return self._carregar()
    
    def procurar_id(self, id):
        livros = self._carregar()

        for livro in livros:
            if livro.id == id:
                return livro
        
        return None
    
    def criar_livro(self, titulo, autor, ano, genero):
        livros = self._carregar()

        if livros:
            novo_id = max(livro.id for livro in livros)+1
        else:
            novo_id = 1
        
        novo_livro = Livro(novo_id, titulo, autor, ano, genero)
        livros.append(novo_livro)
        self._salvar(livros)

        return novo_livro
    
    def atualizar(self, id, titulo, autor, ano, genero):
        livros = self._carregar()

        for livro in livros:
            if livro.id == id:
                livro.titulo = titulo
                livro.autor = autor
                livro.ano = ano
                livro.genero = genero

                self._salvar(livros)
                return True
        return False
    
    def remover(self, id):
        livros = self._carregar()
        for livro in livros:
            if livro.id == id:
                livros.remove(livro)
                self._salvar(livros)
                return True
        return False