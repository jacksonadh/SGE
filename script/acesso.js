$(function(){
    $("button#btn-entrar").on("click", function(e){
        e.preventDefault();
        var campoEmail = $("form#formulario-login #email").val();
        var campoSenha = $("form#formulario-login #senha").val();
        $.ajax({
            url: "acoes/login.php",
            type: "POST",
            data: {
                email: campoEmail,
                senha: campoSenha
            },
            sucess: function(retorno){
                retorno = JSON.parse(retorno);
                if(retorno["erro"]){
                    $("div#mensagem").html(retorno["mensagem"]);
                }else{

                }
                console.log(retorno);
            }
        })
    })
});