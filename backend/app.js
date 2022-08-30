const express = require('express');
const mongoose = require('mongoose');
require('dotenv').config();
const bodyparser =require('body-parser')
const app = express();

//Import Route
const lessonsRoute =  require('./routes/lessons')

//middleware
app.use(bodyparser.json())
app.use('/lessons',lessonsRoute);

//routes
app.get('/',(req,res)=>{
    res.send('Home')
})


//Database connection

const uri =process.env.ATLAS_URI;
// mongoose.connect(uri)
// const connection = mongoose.connection;
// connection.once('open',()=>{
//     console.log("mongoDb success")
// })

mongoose.connect(uri,()=>console.log('db worked'))



//listening to server on port 3000
app.listen(3000)