<?php
require 'config.php';

if (isset($_POST['inserir_registro'])) {
    $cpf = mysqli_real_escape_string($conexao, $_POST['cpf']);
    $nome = mysqli_real_escape_string($conexao, $_POST['nome']);
    $datanasc = mysqli_real_escape_string($conexao, $_POST['datanasc']);
    $telefone = mysqli_real_escape_string($conexao, $_POST['telefone']);
    $email = mysqli_real_escape_string($conexao, $_POST['email']);
    $estado = mysqli_real_escape_string($conexao, $_POST['estado']);
    $cidade = mysqli_real_escape_string($conexao, $_POST['cidade']);
    $genero = mysqli_real_escape_string($conexao, $_POST['genero']);

    $instrucao = "INSERT INTO cliente (cpf, nome, datanasc, telefone, email, estado, cidade, genero) VALUES ('$cpf', '$nome', '$datanasc', '$telefone', '$email', '$estado', '$cidade', '$genero')";
    
    $resultado = mysqli_query($conexao, $instrucao);

    if ($resultado) {
        echo "Registro cadastrado com sucesso!";
    } else {
        echo "Registro não cadastrado";
    }
    echo "<br><br> <a href='index.html'> Voltar </a>";
}

if (isset($_POST['alterar_registro'])) {
    $cpf = mysqli_real_escape_string($conexao, $_POST['cpf']);
    $nome = mysqli_real_escape_string($conexao, $_POST['nome']);
    $datanasc = mysqli_real_escape_string($conexao, $_POST['datanasc']);
    $telefone = mysqli_real_escape_string($conexao, $_POST['telefone']);
    $email = mysqli_real_escape_string($conexao, $_POST['email']);
    $estado = mysqli_real_escape_string($conexao, $_POST['estado']);
    $cidade = mysqli_real_escape_string($conexao, $_POST['cidade']);
    $genero = mysqli_real_escape_string($conexao, $_POST['genero']);

    $instrucao = "UPDATE cliente SET cpf='$cpf', nome='$nome', datanasc='$datanasc', telefone='$telefone', email='$email', estado='$estado', cidade='$cidade', genero='$genero' WHERE cpf='$cpf'";
    
    $resultado = mysqli_query($conexao, $instrucao);

    if ($resultado) {
        echo "Registro alterado com sucesso";
    } else {
        echo "Registro não alterado";
    }
    echo "<br><br> <a href='alterar.php'> Voltar </a>";
}

if (isset($_POST['excluir_registro'])) {
    $cpf = mysqli_real_escape_string($conexao, $_POST['cpf']);

    $instrucao = "DELETE FROM cliente WHERE cpf='$cpf'";
    
    $resultado = mysqli_query($conexao, $instrucao);

    if ($resultado) {
        echo "Registro excluído com sucesso";
    } else {
        echo "Não foi possível excluir o registro";
    }
    echo "<br><br> <a href='excluir.php'> Voltar </a>";
}
?>
