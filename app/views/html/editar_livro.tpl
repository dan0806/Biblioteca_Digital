<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Livro</title>

    <link rel="stylesheet" href="/static/css/style.css">
</head>

<body>
    <header class="hero">
        <h1>Editar Livro</h1>
        <p>Atualize as informações do livro selecionado.</p>
    </header>

    <main class="container">
        <div class="card">
            <form action="/livros/atualizar/{{livro.id}}" method="post">
                <div>
                    <label for="titulo">Título</label>
                    <input
                        type="text"
                        id="titulo"
                        name="titulo"
                        value="{{livro.titulo}}"
                        required>
                </div>

                <div>
                    <label for="autor">Autor</label>
                    <input
                        type="text"
                        id="autor"
                        name="autor"
                        value="{{livro.autor}}"
                        required>
                </div>

                <div>
                    <label for="ano">Ano de Publicação</label>
                    <input
                        type="number"
                        id="ano"
                        name="ano"
                        value="{{livro.ano}}"
                        min="0"
                        max="2100"
                        required>
                </div>

                <div>
                    <label for="genero">Gênero</label>
                    <input
                        type="text"
                        id="genero"
                        name="genero"
                        value="{{livro.genero}}"
                        required>
                </div>

                <div class="toolbar">

                    <a href="/livros" class="btn-voltar">
                        Cancelar
                    </a>

                    <button type="submit">
                        Salvar Alterações
                    </button>
                </div>
            </form>
        </div>
    </main>
    <script src="/static/js/script.js"></script>
</body>
</html>