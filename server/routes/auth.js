
const express = require("express");

//Initialization
const authRouter = express.Router();

authRouter.get('./user',(req,res)=>{
    res.json({"msg":"rivaan"});
});

module.exports = authRouter;


