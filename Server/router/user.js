//引入express
const express=require('express');
//使用express创建路由器对象
const router=express.Router();
//引用连接池模块
const pool=require('../pool.js');
//引入md5密码加密
// const MD5 = require('MD5') 

//1.用户注册（post  /res）
//往路由器对象中添加路由
router.post('/res',(req,res)=>{
	let obj = req.body;
	// console.log(req);
	if (!obj.uname) {
		res.send({code:'400',msg:'用户名不能为空'});
		return
	}
	var sql = "INSERT INTO user SET ?"
	pool.query(sql,[obj],(err,result)=>{
		if (err) { throw err; }
		//affectedRows受影响的行数 
		if(result.affectedRows > 0){
			res.json({code:'200',msg:'注册成功'})
		}else{
			res.json({code:'400',msg:'用户名已存在'})
		}
	})
});

//2.用户登录(post /login)
router.post('/login',(req,res)=>{
	var uname=req.body.userName	
	var upwd=req.body.password
	// console.log(req.body)
	// console.log(upwd)
	// console.log(uname)
	var sql="select uid from user where uname=? and upwd=?";
	pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
		// console.log(result)
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
	// res.send(`登录成功`)
});

module.exports=router;