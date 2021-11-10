<?php
    session_start();

    define('HOST', '127.0.0.1');
    define('USUARIO','root');
    define('SENHA', '');
    define('DB','animadots');
    $conexao = mysqli_connect(HOST, USUARIO, SENHA, DB) or die('Não foi possível conectar.');
    $usuario = mysqli_real_escape_string($conexao, $_POST['login']);
    $senha = mysqli_real_escape_string($conexao, $_POST['senha']);
    $query = "select * from professoresacesso where login = '{$usuario}' and senha = md5('{$senha}')";
    $resultado = mysqli_query($conexao, $query);
    $row = mysqli_num_rows($resultado);
    if ($row == 1) {
        $_SESSION["logado"] = TRUE;
        $_SESSION["user"] = $_POST["login"];
        header("Location: ../index.html?a=success");
    }
    else {
        header("Location: login.php?erro=dados-incorretos");
    }
?>