var express = require("express");
var router = express.Router();
var burger = require("../models/burger.js");

router.get("/", function (req, res) {
  burger.selectAll(function (burgerData) {
    var bgrObject = {
      burger_data: burgerData
    };
    res.render("index", bgrObject);
  });
});

router.post("/createBurger", function (req, res) {
  burger.insertOne(req.body.burger_name, function (result) {
    console.log(result);
    res.redirect("/");
  });
});

router.put("/:id", function (req, res) {
  burger.updateOne(req.params.id, function (result) {
    console.log(result);
    res.sendStatus(200);
  });
});

module.exports = router;
