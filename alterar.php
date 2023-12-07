
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <title>Cliente</title>
</head>

<body>
    <a href="index.html"> Cadastro </a> - <a href="listar.php"> Listar </a> - <a href="alterar.php">Alterar </a> - <a href="excluir.php"> Excluir </a> <br>
    <hr>
    <form name="listagem" method="post" action="#">
        Selecione um cpf:
        <select name="lista" ><br /><br />
            <option value="" data-default disabled selected></option>
            <?php
                include('config.php');

                $resultado = mysqli_query($conexao,"select * from cliente");
                while ($linha = mysqli_fetch_array ($resultado)) {   
                    ?>
                        <option value="<?php echo $linha['cpf'] ?>"> <?php echo $linha['cpf'] ?></option>
                    <?php 
                } 
            ?>
        </select>
        <button type="submit">Buscar</button> <br><br>
     </form>

    <br><br>
    <hr>
    <?php
        //condição que verifica se houve alguma submissão do formulário
        if (!$_POST) {
            echo "Nenhum registro selecionado";
        }else{
            $instrucao = "select * from cliente where cpf like '".$_POST['lista']."'"; 
            $resultado = mysqli_query($conexao, $instrucao);

            while ($linha = mysqli_fetch_array ($resultado)) {   
            ?>
                <form action="bd_acoes.php" method="POST">
                    CPF:
                    <input type="text" name="cpf" value="<?php echo $linha['cpf']?>"> 
                    Nome:
                    <input type="text" name="nome" value="<?php echo $linha['nome'] ?>" >
                    DataNasc:
                    <input type="text" name="datanasc" value="<?php echo $linha['datanasc'] ?>" >
                    Telefone:
                    <input type="text" name="telefone" value="<?php echo $linha['telefone'] ?>" >
                    Email:
                    <input type="text" name="email" value="<?php echo $linha['email'] ?>" >
                    Estado:
                    <input type="text" name="estado" value="<?php echo $linha['estado'] ?>" >
                    Cidade:
                    <input type="text" name="cidade" value="<?php echo $linha['cidade'] ?>" >
                    Genero:
                    <input type="text" name="genero" value="<?php echo $linha['genero'] ?>" >
                    
                    <button type="submit" name="alterar_registro" > Alterar</button> <br><br>

                 </form>
            <?php
            }
        } 
        mysqli_close($conexao); 
    ?>
</body>
</html>