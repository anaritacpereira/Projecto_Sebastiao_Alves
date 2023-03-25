<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once("../funcoes/funcoes.php");

if(!verificarLogado()){
    header("Location: ../login.php");
    exit();
}


$form = isset($_GET["accao"]);
if ($form){
        $accao=$_GET["accao"];
        switch($accao){
            case "novo":
                $titulo = $_GET["titulo"];
                $observacao = $_GET["observacao"];
                $imagem = $_GET["imagem"];
                $texto = $_GET["texto"];
                iduSQL("INSERT INTO livros (titulo, observacao,imagem, texto) VALUES ('$titulo', '$observacao','$imagem', '$texto')");
                break;
            case "apagar":
                $id = $_GET["id"];
                iduSQL("DELETE FROM livros WHERE id=$id");
                break;
            case "editar":
                $id = $_GET["id"];
                $titulo = $_GET["titulo"];
                $observacao = $_GET["observacao"];
                $imagem = $_GET["imagem"];
                $texto = $_GET["texto"];
                iduSQL("UPDATE livros SET titulo = '$titulo', observacao = '$observacao', imagem= '$imagem', texto = '$texto' WHERE id = $id");
                break;
            }
        }

$livros = selectSQL("SELECT * FROM livros");


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
                                <a class="nav-link menu" aria-current="page" href="autor.php">AUTOR</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu active" aria-current="page" href="livros.php">LIVROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="destaques.php">DESTAQUES</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="imprensa.php">IMPRENSA</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="contactos.php">CONTACTOS</a>
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
                        EDITADO/APAGADO/INSERIDO COM SUCESSO!
                        <br><br>
                        <a href="livros.php">
                            <button>VOLTAR</button>
                        </a>
                    </div>
                </div>
                <br><br>
           
            <?php else: ?>
                <div class="row caixas">
                        <h3>BACKOFFICE LIVROS</h3>
                        <br><br>
                        <br><br>
                        <table class="mx-auto w-100 pb-5 mb-5">
                            <tr>
                                <th>IMAGEM</th>
                                <th>TITULO</th>
                                <th>OBSERVAÇÃO</th>
                                <th>TEXTO</th>
                                <th>DATA ACTUALIZAÇÃO</th>
                                <th>ACÇÕES</th>
                            </tr>
                            <?php foreach($livros as $l): ?>

                                <tr>
                                    <td><img src="<?= $l["imagem"]; ?>" style="width: 100px"></td>
                                    <td><?= $l["titulo"]; ?></td>
                                    <td><?= $l["observacao"]; ?></td>
                                    <td><?= $l["texto"]; ?></td>
                                    <td><?= $_SESSION["nome"]; ?> (<?= $_SESSION["data_ultimo_acesso"]; ?>)</td>
                                    
                                    <td>
                                        <form action="livros_saida.php">
                                            <input type="hidden" name="accao" value="editar">
                                            <button name="id" value="<?= $l["id"];?>">Editar</button>
                                        </form>
                                        <br><br>
                                        <form action="">
                                            <input type="hidden" name="accao" value="apagar">
                                            <button name="id" value="<?= $l["id"];?>">Apagar</button>
                                        </form>
                                    </td>
                                </tr>

                            <?php endforeach; ?>
                        </table>
                        <form action="novo_livro.php">
                            <input type="hidden" name="accao" value="novo">
                            <button name="id" value="<?= $l["id"];?>" style="width: 100px">Novo</button>
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