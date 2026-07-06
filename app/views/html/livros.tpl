<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca Digital</title>
    <link rel="stylesheet" href="/static/css/style.css">
</head>

<body>
    <header class="hero">
        <h1>Biblioteca Digital</h1>
        <p>Gerenciamento de livros</p>
    </header>
    
    <main class="container">
        
        <div class="toolbar">
            <h2>Acervo</h2>
            <a href="/livros/novo" class="btn">
                Novo Livro
            </a>
            <a href="/" class="btn-voltar">Voltar</a>
        </div>
        % if len(livros) == 0:

            <div class="card">
                <h3>Nenhum livro cadastrado.</h3>
                <p>
                    Clique em <strong>Novo Livro</strong> para adicionar o primeiro livro ao sistema.
                </p>
            </div>
        % else:

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Ano</th>
                    <th>Gênero</th>
                    <th>Ações</th>
                </tr>
            </thead>

            <tbody>
                % for livro in livros:

                <tr>
                    <td>{{livro.id}}</td>
                    <td>{{livro.titulo}}</td>
                    <td>{{livro.autor}}</td>
                    <td>{{livro.ano}}</td>
                    <td>{{livro.genero}}</td>
                    <td>
                        <a class="btn-editar"
                           href="/livros/editar/{{livro.id}}">
                            Editar
                        </a>

                        <a class="btn-remover"
                           href="/livros/remover/{{livro.id}}">
                            Remover
                        </a>
                    </td>
                </tr>
                % end
            </tbody>
        </table>
        % end
    </main>

    <script src="/static/js/script.js"></script>
</body>
</html>