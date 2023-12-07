<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <title>Cliente</title>
</head>

<body>
       <a href="index.html"> Cadastro </a> - <a href="listar.php"> Listar </a> - <a href="alterar.php">Alterar </a> - <a href="excluir.php"> Excluir </a> <br>
       <hr>
       <?php
              include('config.php');

              $resultado = mysqli_query($conexao,"select * from cliente");

              echo "\n";
              //Enquanto existir linhas resultantes da consulta realizada, serão exibidos os dados no navegador, acessando os
              //respectivos campos da tabela 
              while ($linha = mysqli_fetch_array ($resultado)) {
                     echo $linha["cpf"] . "<br>"; 
                     echo $linha["nome"] . "<br>";
                     echo $linha["datanasc"] . "<br>";
                     echo $linha["telefone"] . "<br>";
                     echo $linha["email"] . "<br>";
                     echo $linha["estado"] . "<br>";
                     echo $linha["cidade"] . "<br>";
                     echo $linha["genero"] . "<br>";




                     echo "<hr>\n";
              }
              echo "\n";
              mysqli_close($conexao);
       ?>
</body>
</html>

