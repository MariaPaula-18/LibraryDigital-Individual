
var express = require("express");
var router = express.Router();

var livroController = require("../controllers/livroControllers");

router.post("/", function (req, res) {
    livroController.cadastrar(req, res);
});



module.exports = router;