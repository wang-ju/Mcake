//引入express
const express=require('express');
//使用express创建路由器对象
const router=express.Router();
//引用连接池模块
const pool=require('../pool.js');

//1.详情页
//往路由器对象中添加路由
router.get('/DetailPage',(req,res)=>{
    let cid = req.query.cid;
    pool.query(`select * from Mcakes where cid = ${cid}`,(err,result)=>{
        if(err) throw err;
        res.json(result)
        // console.log(result)
    })
})

// 2.搜索页面
router.get('/Select',(req,res)=>{
    let keyword = req.query.keyword;
    console.log(`select * from Mcakes where title like '%${keyword}%'`)
    pool.query(`select * from Mcakes where title like '%${keyword}%'`,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.json(result) 
    })
})

// 3.购物车页面
router.get('/cart',(req,res) => {
    let id = req.query.id;
    console.log(id)
    pool.query(`select * from Mcakes where cid = ${id}`,(err,result) => {
        if(err) throw err;
        res.json(result);
        // console.log(result)
    })
})



module.exports=router;