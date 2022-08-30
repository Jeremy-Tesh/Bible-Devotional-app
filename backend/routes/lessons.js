const express = require('express');

const router = express.Router();
const Lesson = require('../models/Lesson')

router.get('/',async(req,res)=>{
   try {
        const lessons = await Lesson.find();
        res.json(lessons);
   } catch (err) {
    res.json({message:err})
   }
});

router.post('/lessons',(async (req,res)=>{

    const lesson = new Lesson({
        title: req.body.title,
        description: req.body.description
    });


try {
    const savedLesson = await lesson.save();
   res.json(savedLesson);
    
} catch (error) {
    res.json({message:error})
}


   
    
}))


module.exports= router;
