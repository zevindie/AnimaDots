 <?php
	// include 'conexao.php';
 ?>
 <!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AnimaDots</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../css/styleLogin.css">
</head>
<body>
	<div class="container">
		<div class="img">
            <img src="../imagens/logo.png" alt=""/>
        </div>
            <div class="conteudo-login">
				<form class="form" action="validaLogin.php" method="post" id="form" name="form">
                    <h2>Bem-vindo!</h2>
                    <div class="login">
                        <i class="fas fa-user"></i>
                        <input type="text" name="login" id="login" placeholder="Login">
                    </div>
                    <div class="senha">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Senha" name="senha_funcionario">
                    </div>
                    <button type="submit" value="acessar">Acessar</button>
                </form>
            </div>
			<?php
				if(isset($_GET['erro'])){
					$erro=$_GET['erro'];
					if($erro=="dados-incorretos"){
						echo '<p class="msg-erro"><strong>Dados incorretos.</strong></p>';
					}
				}
			?>
			</form>
	</div>

	<script src="#"></script>
</body>
</html>