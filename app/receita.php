<?php

<html>
    <head>
        <title>Receita - <?php echo $nome; ?></title>
    </head>
    <body>
        <?php if($adm): ?>
            <table width="40%">
                <thead>
                    <tr style="font-weight: bold">
                        <td>Data</td>
                        <td>Descrição</td>
                        <td>Valor</td>
                        <td>Categoria</td>
                        <td>Conta</td>
                    </tr>                
                </thead>
                <tbody>
                    <?php
                        $query = $conexao->prepare("SELECT data_transacoes, descricao_transacoes, valor_transacoes, id_categoria, id_conta FROM transacoes WHERE tipo_transacoes='c';");
                        $query->execute();
                
                        $users = $query->fetchAll(PDO::FETCH_ASSOC);

                        for($i = 0; $i < sizeof($users); $i++):
                            $usuarioAtual = $users[$i];
                    ?>
                    <tr>
                        <td><?php echo $usuarioAtual["data_transacoes"]; ?></td>
                        <td><?php echo $usuarioAtual["descricao_transacoes"]; ?></td>
                        <td><?php echo $usuarioAtual["valor_transacoes"]; ?></td>
                        <td><?php echo $usuarioAtual["id_categoria"]; ?></td>
                        <td><?php echo $usuarioAtual["id_conta"]; ?></td>
                    </tr>
                    <?php endfor; ?>
                </tbody>            
            </table>
        <?php endif; ?>

        <a href="acoes/logout.php">Sair</a>
    </body>
</html>