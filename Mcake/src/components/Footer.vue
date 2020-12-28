<template>
  <div id="footer">
    <div class="footer" style="display: block;">
        <div class="footer-cont">
            <div class="footer-top clear">
                <div class="footer-left">
                    <img src="../assets/img/logo1.png" alt="">
                    <div class="left-p">
                        <p>订购热线：4006-678-678（8:00 - 20:00)</p>
                        <p>客服邮箱：cs@mcake.com</p>
                        <p>地址：上海市普陀区同普路1130弄3号楼</p>
                        <p class="gov-p">
                            <router-link to=''>食品生产许可证：SC12431010700121</router-link>
                        </p>
                    </div>
                </div>
                <div class="footer-right">
                    <div class="right-top clear">
                        <div class="about">
                            <h3>关于我们</h3>
                            <p><router-link to="">企业介绍</router-link></p>
                            <p><router-link to="">媒体合作</router-link></p>
                            <p><router-link to="">招贤纳士</router-link></p>
                            <p><router-link to="">呼叫中心</router-link></p>
                        </div>
                        <div class="help">
                            <h3>帮助我们</h3>
                            <p><router-link to="">投诉与建议</router-link></p>
                            <p><router-link to="">会员权益</router-link></p>
                            <p><router-link to="">购物指南</router-link></p>
                            <p><router-link to="">支付类</router-link></p>
                            <p><router-link to="">订单相关</router-link></p>
                            <p><router-link to="">配送服务</router-link></p>
                        </div>
                        <div class="find">
                            <h3>发现</h3>
                            <p><router-link to="">公告</router-link></p>
                        </div>
                        <div class="icon">
                            <router-link to="" target="_blank">
                                <img title="关注微博" alt="新浪微博" class="weibo" src="../assets/img/weibo.png">
                            </router-link>
                            <img title="关注公众号" alt="微信公众号" class="weixin" src="../assets/img/weixin.png">
                            <img class="ewm" src="../assets/img/erw.jpg" style="display: none;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="right-bot clear">
                    <div class="bot-p1">
                        <p>上海卡法电子商务有限公司</p>
                        <p>地址：上海市普陀区同普路1130弄3号楼</p>
                        <p>洽谈电话：021-52691591</p>
                        <p class="gov-p"><router-link to="" target="_blank">社会信用代码：913101070678091460</router-link></p>
                        <p class="gov-p"><router-link to="" target="_blank">食品经营许可证：JY13101070034251</router-link></p>
                    </div>
                    <div class="bot-p2">
                        <p>上海卡法电子商务有限公司北京分公司</p>
                        <p>地址：北京市朝阳区东四环中路82号3座16层1908</p>
                        <p>洽谈电话：010-52088262</p>
                        <p class="gov-p"><router-link to="" target="_blank">社会信用代码：911101053484280752</router-link></p>
                        <p class="gov-p"><router-link to="" target="_blank">食品经营许可证：JY11105212634724</router-link></p>
                    </div>
                    <div class="bot-p3">
                        <p>上海卡法电子商务有限公司杭州分公司</p>
                        <p>地址：杭州市拱墅区中环大厦607室</p>
                        <p>洽谈电话：0571-28103688</p>
                        <p class="gov-p"><router-link to="" target="_blank">社会信用代码：913301060920344424</router-link></p>
                        <p class="gov-p"><router-link to="" target="_blank">食品经营许可证：JY13301050141226</router-link></p>
                    </div>
                </div>
                <p class="copyright">Copyright © 2012-2020 上海卡法电子商务有限公司 版权所有
                      l <router-link to="" target="_blank">沪ICP备12022075号</router-link>
                      l <router-link to="" target="_blank">沪公网安备31010702005582号</router-link></p>
            </div>
        </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
*{
    margin: 0;padding: 0;
}

.footer {
    width: 100%;
    padding-bottom: 30px;
    background: #000;
}

.footer-cont {
    width: 1280px;
    padding-top: 70px;
    margin: 0 auto;
}

.clear:after {
    content: '.';
    display: block;
    height: 0;
    visibility: hidden;
    clear: both;
}

.footer-left {
    width: 283px;
    /* padding-left: 100px; */
    /* height: 530px; */
    float: left;
}

.footer-right {
    width: 800px;
    /* height: 530px; */
    margin-left: 20px;
    float: left;
    margin-left: 160px;
}

.left-p {
    margin-bottom: 100px;
    margin-top: 26px;
}

.left-p p {
    font-size: 12px;
    color:#9c9c9c;
    margin-bottom: 6px;
}

.gov-p a{
    color:#9c9c9c;
    text-decoration: none;
}

.right-top div {
    float: left;
}

.right-top p {
    margin-bottom: 8px;
}

.right-top a {
    font-size: 12px;
    color: #9c9c9c;
    margin-bottom: 8px;
    text-decoration: none;
}

.right-top h3 {
    font-size: 16px;
    color: #ebebeb;
    margin-bottom: 20px;
    font-weight: 400;
}

.help {
    margin-right: 58px;
    margin-left: 58px;
}

.icon{
    float: left;
    width: 360px;
    /* height: 285px; */
    text-align: right;
    margin-left: 76px;
    position: relative;
}

.right-bot div {
    float: left;
}

.right-bot {
    width: 1250px;
    margin: 50px auto 50px;
}

.right-bot .bot-p2 {
    margin-left: 265px;
    margin-right: 265px;
}

.right-bot p {
    font-size: 12px;
    color: #9c9c9c;
    margin-bottom: 6px;
}

.gov-p a {
    color: #9c9c9c;
    text-decoration: none;
}

.copyright {
    font-size: 12px;
    color: #9c9c9c;
    text-align: center;
}

.copyright a {
    color: #9c9c9c;
    text-decoration: none;
}

.weibo {
    cursor: pointer;
    margin-right: 18px;
}

.ewm:hover {
    /* display: none; */
    width: 150px;
    height: 150px;
    position: absolute;
    right: 0px;
    top: 50px;
}
</style>