function fazerScroll(){
    if(pagina != "home"){
        document.getElementById("#main").scrollIntoView();
    }
    
}

function abrir(){
    setTimeout(abrirLivros, 500);
}

function abrirLivros(){
    $("#menu-dropdown").dropdown("toggle");
}


function verMais(){
    document.querySelector("#texto_grande").classList.remove("d-none");
    document.querySelector("#texto_grande").classList.remove("d-sm-none");
    document.querySelector("#texto_pequeno").classList.add("d-sm-none");
    document.querySelector("#texto_pequeno").classList.add("d-none");
    document.querySelector("#vermais").classList.add("d-none");
}

function mudarMenu(){
    let botao=document.querySelector("#botao");
    botao.classList.toggle("aberto");
}