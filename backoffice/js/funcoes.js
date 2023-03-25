function teste(){
    setTimeout(verifyText, 500);
    return false;
}

function verifyText(){
    var textarea=document.getElementById("texto");

    if(textarea.value.length == 0){
        alert("Por favor introduza uma descrição!");
    }
    else{
        document.getElementById("formulario").onsubmit();
    }
}

