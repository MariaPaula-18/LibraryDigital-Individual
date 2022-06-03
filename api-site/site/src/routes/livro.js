
var express = require("express");
var router = express.Router();

var livroController = require("../controllers/livroController");

router.post("/", function (req, res) {
    livroController.cadastrar(req, res);
});



module.exports = router;