const express = require('express');

const router = express.Router();
const Lesson = require('../models/Lesson')


//GET ALL LESSONS
router.get('/',async(req,res)=>{
   try {
        const lessons = await Lesson.find();
        res.json(lessons);
   } catch (err) {
    res.json({message:err})
   }
});


//Delete Lesson
  router.delete('/:lessonId',(req,res)=>{
    
    try {

       const removedLesson= Lesson.remove({_id: req.params.lessonId});
       res.json(removedLesson)
        
    } catch (err) {
        res.json({message:err})
        
    }
  });




//SUBMIT LESSON
router.post('/',(async (req,res)=>{

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
   
}));

//Get Specific lesson
router.get('/:lessonId',async(req,res)=>{
   
    try {
        const lesson = await Lesson.findById(req.params.lessonId);
        res.json(lesson);
    } catch (error) {
        
    }
   

  });


//UPDATE SPECIFIC LESSON
router.patch('/:lessonId',async(req,res)=>{
    try {
        const updatedPost= await Lesson.updateOne(
            {_id:req.params.lessonId},
            {$set:{title:req.body.title}}
            
            );

            res.json(updatedPost);
    } catch (error) {
        
    }

})  


module.exports= router;
