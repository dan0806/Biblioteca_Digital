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
        <p>Gerencie seu acervo de livros de forma simples e organizada.</p>

        <div class="hero-buttons">
            <a href="/livros" class="btn">
                Acessar Biblioteca
            </a>

            <button id="btnSaibaMais">
                Saiba mais
            </button>
        </div>
    </header>

    <main class="container">
        <section class="card" id="sobre">
            <h2>Sobre o Projeto</h2>
            <p>
                Este sistema foi desenvolvido utilizando a arquitetura BMVC.
                Nesta versão é possível cadastrar, editar, listar e remover livros,
                demonstrando um CRUD completo utilizando Python, Bottle e armazenamento
                em arquivo JSON.
            </p>
        </section>

        <section class="card">

            <h2>Funcionalidades</h2>

            <div class="features">
                <div class="feature">
                    <h3>Cadastro</h3>
                    <p>Adicione novos livros ao acervo.</p>
                </div>

                <div class="feature">
                    <h3>Edição</h3>
                    <p>Atualize as informações dos livros cadastrados.</p>
                </div>

                <div class="feature">
                    <h3>Remoção</h3>
                    <p>Exclua livros do sistema quando necessário.</p>
                </div>
            </div>
        </section>
        <section class="card">
            <h2>Tecnologias</h2>
            <ul>
                <li>Python</li>
                <li>Bottle</li>
                <li>HTML</li>
                <li>CSS</li>
                <li>JavaScript</li>
                <li>JSON</li>
            </ul>

        </section>

    </main>

    <footer>
        <p>Projeto BMVC • Engenharia de Software</p>
    </footer>

    <script src="/static/js/script.js"></script>
</body>
</html>