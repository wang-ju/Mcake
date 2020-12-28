//引入express
const express=require('express');
//使用express创建路由器对象
const router=express.Router();
//引用连接池模块
const pool=require('../pool.js');

//1.轮播图
//往路由器对象中添加路由
router.get('/banner',(req,res)=>{
    pool.query(`select * from Banners`,(err,result)=>{
        if(err) throw err;
        res.json(result)
    })
})


router.get('/new',(req,res)=>{
    pool.query('select * from Mcakes where isNew = 1',(err,result)=>{
        if (err) throw err;
        res.json(result);
    })
})

router.get('/Seasonal',(req,res)=>{
    pool.query(`select * from Mcakes where isSeasonal = 1`,(err,result)=>{
        if (err) throw err;
        res.json(result)
    })
})

router.get('/Lovely',(req,res)=>{
    pool.query(`select * from Mcakes where isLovely = 1`,(err,result)=>{
        if (err) throw err;
        res.json(result)
    })
})


module.exports=router;