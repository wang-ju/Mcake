#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS Mcake;
#创建新的数据库，并设置存储的编码
CREATE DATABASE Mcake CHARSET=UTF8;
#进入数据库
USE Mcake;

#创建用户表
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(20) UNIQUE,
  upwd  VARCHAR(20)
);
#插入数据
#一次性插入多条数据，使用NULL会避开主键约束，变为0
INSERT INTO user VALUES(1,'yubaibai','123456');

#轮播图表
CREATE TABLE Banners(
  banner VARCHAR(100),
  Url VARCHAR(100)
);

#tag黄按钮表
CREATE TABLE Tag(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(10)
);

#创建保存数据的表
CREATE TABLE Mcakes(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  e_title VARCHAR(100),
  price DECIMAL(7,2) DEFAULT 299,  #99999.99
  -- tag VARCHAR(100),  #黄按钮
  spec VARCHAR(64) NOT NULL,  #重量
  countpeople INT NOT NULL,  #适合多少人吃
  taste VARCHAR(10),   #口味基底
  texture VARCHAR(20),  #口感
  flavor  VARCHAR(20),  #口味
  sweet INT,  #甜度
  size VARCHAR(30),    #尺寸
  cake_img_small VARCHAR(200),  #小图
  cake_img VARCHAR(200),        #大图
  shelfTime DATE,       #上线时间
  isOnsale BOOL,        #是否在线销售
  isNew BOOL DEFAULT false,  #是否新品
  isSeasonal BOOL DEFAULT false,  #是否本季
  isLovely BOOL DEFAULT false,  #是否萌系
  video VARCHAR(200), #视频
  detail VARCHAR(200) #详情页图片
  -- detail text
);


#插入轮播数据
INSERT INTO Banners VALUES('public/img/lunbo/new1.png','#');
INSERT INTO Banners VALUES('public/img/lunbo/new2.jpg','#');
INSERT INTO Banners VALUES('public/img/lunbo/new3.jpg','#');


#插入黄按钮数据
INSERT INTO Tag VALUES("1",'慕斯');
INSERT INTO Tag VALUES("2",'巧克力');
INSERT INTO Tag VALUES("3",'水果');
INSERT INTO Tag VALUES("4",'奶油');
INSERT INTO Tag VALUES("5",'芝士');


#插入数据蛋糕数据
INSERT INTO Mcakes VALUES(1,'Finn的蘑菇星球 ','La planète champignon de Finn',298.00,'1.5磅(681g)','适合2-3人食','Whipping Cream','绵软细腻','
奶油/巧克力',2,'SIZE:17cm*14cm','public/img/new REC/mogu-s.jpg','public/img/new REC/mogu-l.jpg',NULL,1,1,0,0,null,'public/img/new REC/mogu.jpg');
INSERT INTO Mcakes VALUES(2,'甜愿·生日蛋糕','Souhaiter Un Joyeux Anniversai',298.00,'1.7磅(772g)','适合4-7人食','Mousse','绵软细腻','
巧克力/干果',2,'SIZE:15cm*13cm(直径*高）','public/img/new REC/tianyuan-s.jpg','public/img/new REC/tianyuan-l.jpg',NULL,1,1,0,0,'public/video/tianyuan.mp4','public/img/new REC/tianyuan.jpg');
INSERT INTO Mcakes VALUES(3,'男友力','Charmes masculins',198.00,'1磅(454g)','适合2-3人食','Whipping Cream','绵软细腻','
奶油/巧克力',2,'SIZE:14.5cm*9.8cm(直径*高)','public/img/new REC/boy-s.jpg','public/img/new REC/boy-l.jpg',NULL,1,1,0,0,null,'public/img/new REC/boy.jpg');

INSERT INTO Mcakes VALUES(4,'胖达乐园','Panda Paradise',298.00,'2磅(908g)','适合4-7人食','Mousse','甜而不腻','
水果/巧克力',2,'SIZE:18cm*8.5cm（直径*高）','public/img/seasonal/panda1-s.jpg','public/img/seasonal/panda1-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(5,'摩登茶道','Le Thé',298.00,'1磅(454g)','适合2-3人食','Mousse','入口即化','
绿茶/巧克力',1,'SIZE:16cm*10cm*4.8cm','public/img/seasonal/lv-s.jpg','public/img/seasonal/lv-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(6,'鲜莓印雪','Fraise-Chantilly',198.00,'1磅(454g)','适合2-3人食','Whipping Cream','绵软细腻','
奶油/水果',2,'SIZE:14cm*7.0cm','public/img/seasonal/stawberr-s.jpg','public/img/seasonal/stawberr-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(7,'花漾·年华 ','Floraison',298.00,'2磅(908g)','适合4-7人食','Mousse','入口即化','
水果/芝士',2,'SIZE:15cm*9cm(直径*高度)','public/img/seasonal/flower-s.jpg','public/img/seasonal/flower-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(8,'榴莲雪塔','Tarte au durian',318.00,'2磅(908g)','适合4-7人食','Whipping Cream','绵软细腻','
奶油/水果',1,'SIZE:20cm*8cm','public/img/seasonal/liulan-s.jpg','public/img/seasonal/liulan-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(9,'杏桃初恋',NULL,298.00,'1.5磅(681g)','适合2-3人食','Whipping Cream','绵软细腻','
奶油/水果',2,'SIZE:17cm*14cm','public/img/seasonal/pic-s.jpg','public/img/seasonal/pic-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(10,'阳光心芒 ','Le Soleil',298.00,'2磅(908g)','适合4-7人食','Mousse','入口即化','
水果',1,'SIZE:23cm*14cm*5cm','public/img/seasonal/manguo-s.jpg','public/img/seasonal/manguo-l.jpg',NULL,1,0,1,0,null,'public/img/new REC/boy.jpg');

INSERT INTO Mcakes VALUES(11,'黛西的旅行','Voyage de Daisy',218.00,'1.5磅(681g)','适合2-3人食','Cheese','绵软细腻',
'海盐/酸奶/芝士',1,'SIZE:16cm*7.5cm','public/img/lovely/daic-s.jpg','public/img/lovely/daic-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(12,'爱丽丝花境','Jardin dAlice',298.00,'1.5磅(681g)','适合2-3人食','Whipping Cream','入口即化','
奶油/水果',1,'SIZE:15cm*8.2cm','public/img/lovely/Alice-s.jpg','public/img/lovely/Alice-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(13,'尼诺 ','Nino',298.00,'标准款(908g)','适合4-7人食','Cheese','入口即化','
芝士',1,'SIZE:高度约4.5cm（2磅）','public/img/lovely/nino-s.jpg','public/img/lovely/nino-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(14,'安逸兔 ','lapin détendu',318.00,'2.5磅(1.14kg)','适合4-7人食','Whipping Cream','绵软细腻','
芝士/奶油/酸乳',2,'SIZE:21cm*5.5cm','public/img/lovely/tutu-s.jpg','public/img/lovely/tutu-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(15,'鼠嘟嘟','Rat Tutu',298.00,'2磅(908g)','适合4-7人食','Mousse','入口即化','
芝士',1,'SIZE:24cm*15cm*4.5cm','public/img/lovely/dudu-s.jpg','public/img/lovely/dudu-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(16,'Finn的蘑菇星球','La planète champignon de Finn',298.00,'1.5磅(681g)','适合2-3人食','Whipping Cream','绵软细腻','
奶油/巧克力',2,'SIZE:17cm*14cm','public/img/lovely/mogu-s.jpg','public/img/lovely/mogu-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
INSERT INTO Mcakes VALUES(17,'胖达乐园','Panda Paradise',298.00,'2磅(908g)','适合4-7人食','Mousse','甜而不腻','
水果/巧克力',2,'SIZE:18cm*8.5cm（直径*高）','public/img/lovely/panda2-s.jpg','public/img/lovely/panda2-l.jpg',NULL,1,0,0,1,null,'public/img/new REC/boy.jpg');
