
var express = require("express");
var router = express.Router();

var livroController = require("../controllers/livroControllers");

router.post("/", function (req, res) {
    livroController.cadastrar(req, res);
});
router.get("/ultimas/:idAquario", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});



module.exports = router;