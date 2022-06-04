// var usuarioModel = require("../models/usuarioModel");
var livroModel = require("../models/livroModel");


function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var nomeLivro = req.body.nomeLivroServer;
    var dataLancamento = req.body.ataLancamentoServer;
    var nomeAutor = req.body.nomeAutorServer;
    var editora = req.body.editoraServer;

    var fkUsuario = req.body.fkUsuarioServer;
    var fkLivro = req.body.fkLivroServer;
    var qtdPaginas = req.body.qtdPaginasServer;
    var dataEntrada = req.body.dataEntradaServer;


    // Faça as validações dos valores


    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    livroModel.cadastrar_principal(nomeLivro, dataLancamento, nomeAutor, editora, fkUsuario, fkLivro,qtdPaginas, dataEntrada )
        .then(
            function (resultado) {
                usuarioModel.cadastrar_usuariolivro(fkUsuario, fkLivro, qtdPaginas, dataEntrada)
                .then(
                    function (resultado) {
                        res.json(resultado)
                    }
                ).catch(
                    function (erro) {
                        console.log(erro);
                        console.log(
                            "\nHouve um erro ao realizar o cadastro! Erro: ",
                            erro.sqlMessage
                        );
                        res.status(500).json(erro.sqlMessage);
                    }
                );
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao realizar o cadastro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );
        
}


module.exports = {
    cadastrar
}