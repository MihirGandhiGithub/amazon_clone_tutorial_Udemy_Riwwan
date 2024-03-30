//Import From Packages
const express= require("express");
const mongoose = require('mongoose');



//Import From Other File
const authRouter = require("./routes/auth");


//Initialication
const PORT=3000;
const app = express();


//Middleware
app.use(authRouter);

//Connection
mongoose.connect().then(()=>{console.log('conncetion succesfully ');}).catch(e=>{
    console.log(e);
});

//Creating an API


app.listen(PORT,"0.0.0.0",()=>{
    console.log(`connected at port ${PORT}`);
});
