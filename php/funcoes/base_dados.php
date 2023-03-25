<?php

$base_dados = [
    "host" => "localhost",
    "usuario" => "root",
    "senha" => "",
    "nome" => "sebastiao"
];

function selectSQL($sql){
    global $base_dados;

    $conexao = mysqli_connect($base_dados["host"], $base_dados["usuario"], $base_dados["senha"], $base_dados["nome"]);
    $consulta = mysqli_query($conexao, $sql);
    $resultado = mysqli_fetch_all($consulta, MYSQLI_ASSOC);

    mysqli_close($conexao);

    return $resultado;
}

function selectSQLUnico($sql){
    global $base_dados;

    $conexao = mysqli_connect($base_dados["host"], $base_dados["usuario"], $base_dados["senha"], $base_dados["nome"]);
    $consulta = mysqli_query($conexao, $sql);
    $resultado = mysqli_fetch_assoc($consulta);

    mysqli_close($conexao);

    return $resultado;
}

function iduSQL($sql){
    global $base_dados;

    $conexao = mysqli_connect($base_dados["host"], $base_dados["usuario"], $base_dados["senha"], $base_dados["nome"]);
    $consulta = mysqli_query($conexao, $sql);

    mysqli_close($conexao);

    return $consulta;
}

?>