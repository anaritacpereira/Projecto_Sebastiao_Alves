<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once("../funcoes/funcoes.php");

if(!verificarLogado()){
    header("Location: ../login.php");
    exit();
}


$form = isset($_GET["imagem"]) && isset($_GET["texto_grande"]);

if ($form){
    $imagem = $_GET["imagem"];
    $texto_grande = $_GET["texto_grande"];
    iduSQL("UPDATE autor SET imagem = '$imagem', texto_grande = '$texto_grande'");
             
     
}

$autor = selectSQLUnico("SELECT * FROM autor");


?>


<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Backoffice</title>
    <!-- CSS BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- CSS LOCAL -->
    <link rel="stylesheet" href="../../css/estilo.css">
    <<script src="../../js/funcoes.js"></script>

</head>
<body class="container-fluid">
    <header>
            <div class="row caixas mt-3">
                <div class="col-12 text-center titulo p-3 mt-4 mb-3">BACKOFFICE</div>
                <nav class="col-12 navbar navbar-expand-lg">
                        <div class="collapse navbar-collapse justify-content-center">
                            <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="inicio.php">INICIO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="carousel.php">CAROUSEL</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="home.php">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu active" aria-current="page" href="autor.php">AUTOR</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="livros.php">LIVROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="destaques.php">DESTAQUES</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="imprensa.php">IMPRENSA</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu " aria-current="page" href="contactos.php">CONTACTOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="redes.php">REDES</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="logoff.php">SAIR</a>
                            </li>
                            </ul>
                        </div>
                </nav>
            </div>
    </header>

            <br><br>
    <main>
           
        <?php if ($form):?>
           
                <div class="row caixas">
                    <div class="col-12 bv_titulo p-4">
                        EDITADO COM SUCESSO!
                        <br><br>
                        <a href="autor.php">
                            <button>VOLTAR</button>
                        </a>
                    </div>
                </div>
                <br><br>
           
            <?php else: ?>
                <div class="row caixas d-flex justify-content-center">
                        <h3>BACKOFFICE AUTOR</h3>
                        <br><br>
                        <br><br>
                        <h5>Imagem do Autor da página AUTOR</h5>
                        <br>
                        <img src="<?= $autor["imagem"]; ?>" id="imagem_home">
                        <br><br>
                        <hr>
                        <br><br>
                        <h5>Texto sobre o Autor</h5>
                        <br>
                        <p><?= $autor["texto_grande"]; ?></p>
                        <br><br>
                        <hr>
                        <br><br>
                        <br><br>
                        <form action="autor_saida.php">
                            <button>EDITAR</button>
                        </form>
                </div>
    
            <?php endif; ?>

            <br><br>
            
    </main>

    <footer class="text-center">
        ANA RITA PEREIRA © 2023
    </footer>

<!-- JS BOOTSTRAP -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>
</html>