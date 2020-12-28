//引入express
const express=require('express');

//引入中间件
const bodyParser=require('body-parser');

//引入md5密码加密
// const MD5 = require('MD5') 

//引入用户路由器
const Urouter=require('./router/user.js');
const Crouter=require('./router/cake.js');
const Brouter=require('./router/home.js')
//console.log(router);  成功 

//创建web服务器
const app=express();

//设置端口
app.listen(5050);
//托管静态资源到public目录
app.use('/public',express.static('./public'));

//在路由器之前，应用body-parser中间件，目的是将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
	extended:false
}));
//将用户路由器挂载，添加前缀/user
//访问方式 /user/reg
app.use('/user',Urouter);
app.use('/cake',Crouter);
app.use('/home',Brouter);

// app.use(function(req,res,next){
// 	res.setHeader('Access-Control-Allow-Origin','http://localhost:8080');
// 	next();
// })

console.log(5050)