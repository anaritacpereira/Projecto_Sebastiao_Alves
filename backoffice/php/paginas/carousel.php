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
                $imagem_desktop = $_GET["imagem_desktop"];
                $imagem_mobile = $_GET["imagem_mobile"];
                $texto = $_GET["texto"];
                $saber_mais = $_GET["saber_mais"];
                iduSQL("INSERT INTO carousel (titulo, observacao, imagem_desktop, imagem_mobile, texto, saber_mais) VALUES ('$titulo', '$observacao', '$imagem_desktop', '$imagem_mobile', '$texto', '$saber_mais')");
                break;
            case "apagar":
                $id = $_GET["id"];
                iduSQL("DELETE FROM carousel WHERE id=$id");
                break;
            case "editar":
                $id = $_GET["id"];
                $titulo = $_GET["titulo"];
                $observacao = $_GET["observacao"];
                $imagem_desktop = $_GET["imagem_desktop"];
                $imagem_mobile = $_GET["imagem_mobile"];
                $texto = $_GET["texto"];
                $saber_mais = $_GET["saber_mais"];
                iduSQL("UPDATE carousel SET titulo = '$titulo', observacao = '$observacao', imagem_desktop = '$imagem_desktop', imagem_mobile = '$imagem_mobile', texto = '$texto', saber_mais = '$saber_mais' WHERE id = $id");
                break;
            }
        }

$carousel = selectSQL("SELECT * FROM carousel");


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
                                <a class="nav-link menu active" aria-current="page" href="carousel.php">CAROUSEL</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="home.php">HOME</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link menu" aria-current="page" href="autor.php">AUTOR</a>
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
                        <a href="carousel.php">
                            <button>VOLTAR</button>
                        </a>
                    </div>
                </div>
                <br><br>
           
            <?php else: ?>
                <div class="row caixas">
                        <h3>BACKOFFICE CAROUSEL</h3>
                        <br><br>
                        <br><br>
                        <table class="mx-auto w-100 pb-5 mb-5">
                            <tr>
                                <th>DESKTOP</th>
                                <th>MOBILE</th>
                                <th>TITULO</th>
                                <th>OBSERVAÇÃO</th>
                                <th>TEXTO</th>
                                <th>LINK</th>
                                <th>DATA ACTUALIZAÇÃO</th>
                                <th>ACÇÕES</th>
                            </tr>
                            <?php foreach($carousel as $c): ?>

                                <tr>
                                    <td><img src="<?= $c["imagem_desktop"]; ?>" style="width: 200px"></td>
                                    <td><img src="<?= $c["imagem_mobile"]; ?>" style="width: 100px"></td>
                                    <td><?= $c["titulo"]; ?></td>
                                    <td><?= $c["observacao"]; ?></td>
                                    <td><?= $c["texto"]; ?></td>
                                    <td><?= $c["saber_mais"]; ?></td>
                                    <td><?= $_SESSION["nome"]; ?> (<?= $_SESSION["data_ultimo_acesso"]; ?>)</td>
                                    
                                    <td>
                                        <form action="carousel_saida.php">
                                            <input type="hidden" name="accao" value="editar">
                                            <button name="id" value="<?= $c["id"];?>">Editar</button>
                                        </form>
                                        <br>
                                        <form action="">
                                            <input type="hidden" name="accao" value="apagar">
                                            <button name="id" value="<?= $c["id"];?>">Apagar</button>
                                        </form>
                                    </td>
                                </tr>

                            <?php endforeach; ?>
                        </table>
                        <form action="novo_carousel.php">
                            <input type="hidden" name="accao" value="novo">
                            <button name="id" value="<?= $c["id"];?>" style="width: 100px">Novo</button>
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