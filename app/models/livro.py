class Livro():
    def __init__(self, id, titulo, autor, ano, genero):
        self.id = id
        self.titulo = titulo
        self.autor = autor
        self.ano = ano
        self.genero = genero

    def to_dict(self):
        return {
            "id": self.id,
            "titulo": self.titulo,
            "autor": self.autor,
            "ano": self.ano,
            "genero": self.genero
        }
    
    @classmethod
    def from_dict(cls, data):
        return cls (
            id=data["id"],
            titulo=data["titulo"],
            autor=data["autor"],
            ano=data["ano"],
            genero=data["genero"]
        )