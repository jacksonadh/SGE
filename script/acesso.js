$(function(){
      $("button#btn-entrar").on("click", function(e){
        e.preventDefault();
        var campoEmail = $("form#formulario-login #inputEmail").val();
        var campoSenha = $("form#formulario-login #inputPassword").val();
        if(campoEmail.trim() == "" || campoSenha.trim() == ""){
            $("div#mensagem").html("Preencha todos os campos.");
        }else{
            $.ajax({
                url: "acoes/login.php",
                type: "POST",
                data: {
                    email: campoEmail,
                    senha: campoSenha
                },
                success: function(retorno){
                    retorno = JSON.parse(retorno);

                    if(retorno["erro"]){
                        $("div#mensagem").html(retorno["mensagem"]);
                    }else{
                        window.location = "dashboard.php";
                    }           
                },
                error: function(){
                    $("div#mensagem").html(retorno["Ocorreu um erro durante a solicitação"]);
                }
            });
        }
     });
    
});