<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Livro</title>

    <link rel="stylesheet" href="/static/css/style.css">
</head>

<body>
    <header class="hero">
        <h1>Novo Livro</h1>
        <p>Cadastre um novo livro no acervo da Biblioteca Digital.</p>
    </header>

    <main class="container">
        <div class="card">
            <form action="/livros/criar" method="post" accept-charset="utf-8">
                <div>
                    <label for="titulo">Título</label>
                    <input
                        type="text"
                        id="titulo"
                        name="titulo"
                        placeholder="Digite o título do livro"
                        required>
                </div>

                <div>
                    <label for="autor">Autor</label>
                    <input
                        type="text"
                        id="autor"
                        name="autor"
                        placeholder="Digite o nome do autor"
                        required>
                </div>

                <div>
                    <label for="ano">Ano de Publicação</label>
                    <input
                        type="number"
                        id="ano"
                        name="ano"
                        min="0"
                        max="2100"
                        placeholder="Ex.: 2024"
                        required>
                </div>

                <div>
                    <label for="genero">Gênero</label>
                    <input
                        type="text"
                        id="genero"
                        name="genero"
                        placeholder="Ex.: Romance"
                        required>
                </div>

                <div class="toolbar">

                    <a href="/livros" class="btn-voltar">
                        Cancelar
                    </a>

                    <button type="submit">
                        Salvar Livro
                    </button>

                </div>
            </form>
        </div>
    </main>
    <script src="/static/js/script.js"></script>
</body>
</html>