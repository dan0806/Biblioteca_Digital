const botao = document.getElementById("btnSaibaMais");
const sobre = document.getElementById("sobre");

botao.addEventListener("click", function () {

    sobre.scrollIntoView({
        behavior: "smooth"
    });

    sobre.classList.add("highlight");

    setTimeout(function () {
        sobre.classList.remove("highlight");
    }, 2000);

});