<template>
  <div id="detailpage">
    <div class="detail-content" data-id="15435" v-for="(d,i) of DetailPage" :key="i">
      <div class="detail-big"
        :style="{'background-image': `url('${url + d.cake_img}')`}">
        </div>
      <div class="detail-box">
        <div class="detail-top">
          <div class="top-left">
            <div class="info">
              <div class="info-left title">
                <h2>
                  {{d.title}} 
                  <span class="pingjia-span">商品评价</span>
                </h2>
                <div class="right-t">
                  <span class="span02">{{d.e_title}}</span>
                  <span class="span01">提前5小时预定</span>
                  <p>
                    <span style="margin-left: 0" class="tag">慕斯</span>
                    <span class="tag">巧克力</span>
                  </p>
                </div>
                <div class="right-m">
                  <p>
                    <span class="mr" style="display: block; float: left">口味基底</span
                    ><span style="margin-left: 98px; display: block">{{d.taste}}</span>
                  </p>
                  <p>
                    <span class="mr" style="display: block; float: left">口感</span>
                    <span style="margin-left: 98px; display: block">{{d.texture}}</span>
                  </p>
                  <p>
                    <span class="mr" style="display: block; float: left">口味</span>
                    <span style="margin-left: 98px; display: block">{{d.flavor}}</span>
                  </p>
                  <p>
                    <span class="span-sweet">甜味</span>
                    <span class="span-img">
                      <img src="/static/img/dot01.png" />
                      <img src="/static/img/dot02.png" />
                      <img src="/static/img/dot02.png" />
                      <img src="/static/img/dot02.png" />
                      <img src="/static/img/dot02.png" />
                    </span>
                  </p>
                  <p class="mb fittings">标配餐具(免费)10份</p>
                  <p class="size">SIZE:15cm*13cm(直径*高）</p>
                  <p style="color: #f0250f; margin-top: 20px">
                    <i class="icon-gantanhao"></i>若不及时食用，请放置0-10℃冷藏
                  </p>
                </div>
              </div>
              <div class="clear"></div>
            </div>
            <div class="pond">
              <div class="pick-pond pond-02 pond-cur" data-id="15438">
                <p class="p1">{{d.spec}}</p>
                <p class="p2">{{d.size}}</p>
              </div>
            </div>
          </div>
          <div class="top-right">
            <div class="detail-ad">
              <div class="ad-box">
                <p><span>换购</span>| 买蛋糕可至购物车参加优惠换购</p>
              </div>
            </div>

            <div class="right-b">
              <p class="p-rmb">
                <span>￥</span><span class="span-rmb">{{d.price.toFixed(2)}}</span>
              </p>
              <p>
                <button class="add-cart" @click="add">加入购物车</button><button class="buy-now">立即订购</button>
              </p>
            </div>
          </div>
        </div>
        <div class="detail-bottom">
          <div class="description">
            <p
              style="text-align: center; margin-top: -30px; margin-bottom: 30px"
            >
              <video v-if="d.video"
                autoplay=""
                controls=""
                playsinline="true"
                poster="https://act.mcake.com/video/2020/tianyuan-load.jpg"
                preload="auto"
                :src="`${url + d.video}`"
                style="
                  border: none;
                  margin: 0 auto;
                  background: none;
                  width: 100%;
                "
                webkit-playsinline="true">
                &nbsp;
              </video>
            </p>
            <p>
              <img :src="`${url+d.detail}`" />
            </p>
          </div>
          <!-- 加购配件 -->
          <div>
            <Accessory></Accessory>
          </div>
          <!-- <div class="item-pingjia"> -->
          <!-- 商品评价
                         <h2>商品评价</h2>
                        <div class="goods-comment"><div class="pingjia-top">                     <span data-id="0" class="active" data-count="14">全部(14)</span>                     <span data-id="1" data-count="8">超好吃(8)</span>                     <span data-id="5" data-count="7">颜值爆表(7)</span>                     <span data-id="4" data-count="2">不甜腻(2)</span>                     <span data-id="3" data-count="3">细腻绵软(3)</span>                     <span data-id="2" data-count="2">给配送小哥点赞(2)</span>                 </div>                                  <div class="pingjia-con">                     <ul>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v3</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">133****6283</span><span>2020-09-30 00:14:10</span></p>                                 <p class="p2">红房子蛋糕爆好看，家人都称赞呢</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v3</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">158****4843</span><span>2020-09-27 18:23:07</span></p>                                 <p class="p2">好喜庆的红房子生日蛋糕，喜欢满意</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v4</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">171****8858</span><span>2020-09-22 14:08:18</span></p>                                 <p class="p2">孩子许愿吹蜡烛吃蛋糕好开心呢</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v5</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">139****9471</span><span>2020-09-17 09:12:30</span></p>                                 <p class="p2">梦想成真，小朋友们一起许愿过生日，有蛋糕好开心</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v5</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">170****4952</span><span>2020-09-14 09:25:26</span></p>                                 <p class="p2">漂亮红房子树林蛋糕给生日party增加了气氛</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                                  <li>                             <div class="li-img">                                 <img src="https://img.mcake.com/customer/default_user.gif?x-oss-process=image/auto-orient,1">                                 <i>v4</i>                             </div>                             <div class="li-txt">                                 <p class="p1"><span class="tel">152****6048</span><span>2020-09-10 18:24:49</span></p>                                 <p class="p2">好漂亮的红房子蛋糕哈哈</p>                                                                  <p class="p3" style="padding-top: 5px;">                                                                    </p>                                  <p class="p4" style="display:none;padding-top: 10px;">                                         <img style="width:400px;" class="big-img" src="">                                     </p>                                                              </div>                         </li>                                              </ul>                 </div>                 <div class="pageSize" id="page"><span class="active">1</span><a href="javascript:;" data-page="2">2</a><a href="javascript:;" data-page="3">3</a><a href="javascript:;" class="next">下一页</a></div></div>
                    </div>
                    
                    <script id="goods-comment-tmpl" type="text/x-jquery-tmpl">
                        <div class="pingjia-top">
                            <span data-id="0" {{if itemId===0}}class="active"{{/if}} data-count="${data.count}">全部(${data.count?data.count:0})</span>
                            <span data-id="1" {{if itemId===1}}class="active"{{/if}} data-count="${data.goodsEatCount}">超好吃(${data.goodsEatCount?data.goodsEatCount:0})</span>
                            <span data-id="5" {{if itemId===5}}class="active"{{/if}} data-count="${data.beautifulCount}">颜值爆表(${data.beautifulCount?data.beautifulCount:0})</span>
                            <span data-id="4" {{if itemId===4}}class="active"{{/if}} data-count="${data.sweetCount}">不甜腻(${data.sweetCount?data.sweetCount:0})</span>
                            <span data-id="3" {{if itemId===3}}class="active"{{/if}} data-count="${data.tasteCount}">细腻绵软(${data.tasteCount?data.tasteCount:0})</span>
                            <span data-id="2" {{if itemId===2}}class="active"{{/if}} data-count="${data.serviceCount}">给配送小哥点赞(${data.serviceCount?data.serviceCount:0})</span>
                        </div>
                        {{if typeof data.list!=='undefined'}}
                        <div class="pingjia-con">
                            <ul>
                                {{each(i,v) data.list}}
                                <li>
                                    <div class="li-img">
                                        <img src="${v.uhead}?x-oss-process=image/auto-orient,1" />
                                        <i>v${v.rid}</i>
                                    </div>
                                    <div class="li-txt">
                                        <p class="p1"><span class="tel">${v.uname}</span><span>${v.ctime}</span></p>
                                        <p class="p2">${v.content}</p>
                                        {{if v.img}}
                                        <p class="p3" style="padding-top: 5px;">
                                         {{each(i,v) v.img}}
                                            <img class="img-class" url="${v.src}" src="${v.src}?x-oss-process=image/auto-orient,1" />
                                         {{/each}}
                                         </p>
                                         <p class="p4" style="display:none;padding-top: 10px;">
                                                <img style="width:400px;" class="big-img" src="" />
                                            </p>
                                        {{/if}}
                                    </div>
                                </li>
                                {{/each}}
                            </ul>
                        </div>
                        <div class="pageSize" id="page">
                             </div>
                        {{else}}
                        <div class="nofound">暂未找到记录</div>
                        {{/if}}
                    </script> -->

          <!-- 猜你喜欢 -->
          <!--            <div class="like-items">
                        <h2>猜你喜欢</h2>
                        <div class="like-list">
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/huayangnianhua/R0329/list/1.jpg">
                                <h3>花漾·年华</h3>
                                <p><span class="price count"><i class="rmb">￥</i>298</span><img class="add-car" data-data="eyJpZCI6MTQwNjMsIm5hbWUiOiJcdTgyYjFcdTZmM2VcdTAwYjdcdTVlNzRcdTUzNGUiLCJmcmVuY2giOiJGbG9yYWlzb24iLCJwcmljZSI6Mjk4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9odWF5YW5nbmlhbmh1YVwvUjAzMjlcL2xpc3RcLzEuanBnIiwicHByaWNlIjoiMjk4LjAwIiwic2t1IjoiUjAzMjkiLCJzcGVjIjoiMlx1NzhjNSIsImxpc3QiOlt7ImlkIjoxNDA2Mywic2t1IjoiUjAzMjkiLCJhaGVhZCI6Ilx1NjNkMFx1NTI0ZDVcdTVjMGZcdTY1ZjZcdTk4ODRcdTViOWEiLCJlZGlibGUiOiI0LTdcdTRlYmFcdTk4ZGYiLCJzcGVjIjoiMlx1NzhjNSIsInByaWNlIjoiMjk4LjAwIiwic2l6ZSI6IjE1Y20qOWNtKFx1NzZmNFx1NWY4NCpcdTlhZDhcdTVlYTYpIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiOTA4ZyIsInBwcmljZSI6IjI5OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL2h1YXlhbmduaWFuaHVhXC9SMDMyOSIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX1dfQ==" src="/static/img/car.png"></p>
                            </div>
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/lukeyudongdong/T0102/list/1.jpg">
                                <h3>卢克和咚咚冰淇淋蛋糕</h3>
                                <p><span class="price count"><i class="rmb">￥</i>298</span><img class="add-car" data-data="eyJpZCI6MTE4MzQsIm5hbWUiOiJcdTUzNjJcdTUxNGJcdTU0OGNcdTU0OWFcdTU0OWFcdTUxYjBcdTZkYzdcdTZkY2JcdTg2Y2JcdTdjZDUiLCJmcmVuY2giOiJMdWtlXHUwMGEwZXRcdTAwYTBkb25kb24iLCJwcmljZSI6Mjk4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9sdWtleXVkb25nZG9uZ1wvVDAxMDJcL2xpc3RcLzEuanBnIiwicHByaWNlIjoiMjk4LjAwIiwic2t1IjoiVDAxMDIiLCJzcGVjIjoiMS41XHU3OGM1IiwibGlzdCI6W3siaWQiOjExODM0LCJza3UiOiJUMDEwMiIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjQtN1x1NGViYVx1OThkZiIsInNwZWMiOiIxLjVcdTc4YzUiLCJwcmljZSI6IjI5OC4wMCIsInNpemUiOiIyN2NtKjE3Y20qNmNtIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiNjgxZyIsInBwcmljZSI6IjI5OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL2x1a2V5dWRvbmdkb25nXC9UMDEwMiIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX1dfQ==" src="/static/img/car.png"></p>
                            </div>
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/nongqiaomiqing/R0901/list/1.jpg">
                                <h3>浓巧·迷情冰淇淋蛋糕</h3>
                                <p><span class="price count"><i class="rmb">￥</i>298</span><img class="add-car" data-data="eyJpZCI6MTIyOTksIm5hbWUiOiJcdTZkNTNcdTVkZTdcdTAwYjdcdThmZjdcdTYwYzVcdTUxYjBcdTZkYzdcdTZkY2JcdTg2Y2JcdTdjZDUiLCJmcmVuY2giOiJDaG9jbyB+IE1hcmlhZ2UiLCJwcmljZSI6Mjk4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9ub25ncWlhb21pcWluZ1wvUjA5MDFcL2xpc3RcLzEuanBnIiwicHByaWNlIjoiMjk4LjAwIiwic2t1IjoiUjA5MDIiLCJzcGVjIjoiMlx1NzhjNSIsImxpc3QiOlt7ImlkIjoxMjI5OCwic2t1IjoiUjA5MDEiLCJhaGVhZCI6Ilx1NjNkMFx1NTI0ZDVcdTVjMGZcdTY1ZjZcdTk4ODRcdTViOWEiLCJlZGlibGUiOiIyLTNcdTRlYmFcdTk4ZGYiLCJzcGVjIjoiMVx1NzhjNSIsInByaWNlIjoiMTk4LjAwIiwic2l6ZSI6IjE1Y20qNGNtIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiNDU0ZyIsInBwcmljZSI6IjE5OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL25vbmdxaWFvbWlxaW5nXC9SMDkwMSIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX0seyJpZCI6MTIyOTksInNrdSI6IlIwOTAyIiwiYWhlYWQiOiJcdTYzZDBcdTUyNGQ1XHU1YzBmXHU2NWY2XHU5ODg0XHU1YjlhIiwiZWRpYmxlIjoiNC03XHU0ZWJhXHU5OGRmIiwic3BlYyI6IjJcdTc4YzUiLCJwcmljZSI6IjI5OC4wMCIsInNpemUiOiIxN2NtKjQuM2NtIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiOTA4ZyIsInBwcmljZSI6IjI5OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL25vbmdxaWFvbWlxaW5nXC9SMDkwMSIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX1dfQ==" src="/static/img/car.png"></p>
                            </div>
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/anyitu/R0801/list/1.jpg">
                                <h3>安逸兔</h3>
                                <p><span class="price count"><i class="rmb">￥</i>318</span><img class="add-car" data-data="eyJpZCI6MTIyMzQsIm5hbWUiOiJcdTViODlcdTkwMzhcdTUxNTQiLCJmcmVuY2giOiJsYXBpbiBkXHUwMGU5dGVuZHUiLCJwcmljZSI6MzE4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9hbnlpdHVcL1IwODAxXC9saXN0XC8xLmpwZyIsInBwcmljZSI6IjMxOC4wMCIsInNrdSI6IlIwODAyIiwic3BlYyI6IjIuNVx1NzhjNSIsImxpc3QiOlt7ImlkIjoxMjIzMywic2t1IjoiUjA4MDEiLCJhaGVhZCI6Ilx1NjNkMFx1NTI0ZDVcdTVjMGZcdTY1ZjZcdTk4ODRcdTViOWEiLCJlZGlibGUiOiIyLTNcdTRlYmFcdTk4ZGYiLCJzcGVjIjoiMS41XHU3OGM1IiwicHJpY2UiOiIyMTguMDAiLCJzaXplIjoiMTZjbSo1Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiI2ODFnIiwicHByaWNlIjoiMjE4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvYW55aXR1XC9SMDgwMSIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX0seyJpZCI6MTIyMzQsInNrdSI6IlIwODAyIiwiYWhlYWQiOiJcdTYzZDBcdTUyNGQ1XHU1YzBmXHU2NWY2XHU5ODg0XHU1YjlhIiwiZWRpYmxlIjoiNC03XHU0ZWJhXHU5OGRmIiwic3BlYyI6IjIuNVx1NzhjNSIsInByaWNlIjoiMzE4LjAwIiwic2l6ZSI6IjIxY20qNS41Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiIxLjE0a2ciLCJwcHJpY2UiOiIzMTguMDAiLCJwaWMiOnsidXJsIjoiaHR0cHM6XC9cL3N0YXRpYy5tY2FrZS5jb21cL2dvb2RzXC9hbnlpdHVcL1IwODAxIiwibGlzdCI6W3siYiI6IlwvYmlnXC8xLmpwZyIsIm0iOiJcL21pZGRsZVwvMS5qcGciLCJzIjoiXC9zbWFsbFwvMS5qcGcifSx7ImIiOiJcL2JpZ1wvMi5qcGciLCJtIjoiXC9taWRkbGVcLzIuanBnIiwicyI6Ilwvc21hbGxcLzIuanBnIn0seyJiIjoiXC9iaWdcLzMuanBnIiwibSI6IlwvbWlkZGxlXC8zLmpwZyIsInMiOiJcL3NtYWxsXC8zLmpwZyJ9LHsiYiI6IlwvYmlnXC80LmpwZyIsIm0iOiJcL21pZGRsZVwvNC5qcGciLCJzIjoiXC9zbWFsbFwvNC5qcGcifV19fSx7ImlkIjoxMjY2Niwic2t1IjoiUjA4MDMiLCJhaGVhZCI6Ilx1NjNkMFx1NTI0ZDVcdTVjMGZcdTY1ZjZcdTk4ODRcdTViOWEiLCJlZGlibGUiOiI4LTEyXHU0ZWJhXHU5OGRmIiwic3BlYyI6IjMuNVx1NzhjNSIsInByaWNlIjoiNDU4LjAwIiwic2l6ZSI6IjI2LjVjbSo1LjVjbSIsImJjaWQiOjEsImJjbmFtZSI6Ilx1ODZjYlx1N2NkNSIsIndlaWdodCI6IjEuNTlrZyIsInBwcmljZSI6IjQ1OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL2FueWl0dVwvUjA4MDEiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEyNjY3LCJza3UiOiJSMDgwNSIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjEyLTIwXHU0ZWJhXHU5OGRmIiwic3BlYyI6IjUuNVx1NzhjNSIsInByaWNlIjoiNzUwLjAwIiwic2l6ZSI6IjMyLjVjbSo1LjVjbSIsImJjaWQiOjEsImJjbmFtZSI6Ilx1ODZjYlx1N2NkNSIsIndlaWdodCI6IjIuNWtnIiwicHByaWNlIjoiNzUwLjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvYW55aXR1XC9SMDgwMSIsImxpc3QiOlt7ImIiOiJcL2JpZ1wvMS5qcGciLCJtIjoiXC9taWRkbGVcLzEuanBnIiwicyI6Ilwvc21hbGxcLzEuanBnIn0seyJiIjoiXC9iaWdcLzIuanBnIiwibSI6IlwvbWlkZGxlXC8yLmpwZyIsInMiOiJcL3NtYWxsXC8yLmpwZyJ9LHsiYiI6IlwvYmlnXC8zLmpwZyIsIm0iOiJcL21pZGRsZVwvMy5qcGciLCJzIjoiXC9zbWFsbFwvMy5qcGcifSx7ImIiOiJcL2JpZ1wvNC5qcGciLCJtIjoiXC9taWRkbGVcLzQuanBnIiwicyI6Ilwvc21hbGxcLzQuanBnIn1dfX1dfQ==" src="/static/img/car.png"></p>
                            </div>
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/daixidelvxing/R1802/list/1.jpg">
                                <h3>黛西的旅行</h3>
                                <p><span class="price count"><i class="rmb">￥</i>318</span><img class="add-car" data-data="eyJpZCI6MTM1NzAsIm5hbWUiOiJcdTllZGJcdTg5N2ZcdTc2ODRcdTY1YzVcdTg4NGMiLCJmcmVuY2giOiJWb3lhZ2UgZGUgRGFpc3kiLCJwcmljZSI6MzE4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9kYWl4aWRlbHZ4aW5nXC9SMTgwMlwvbGlzdFwvMS5qcGciLCJwcHJpY2UiOiIzMTguMDAiLCJza3UiOiJSMTgwMiIsInNwZWMiOiIyLjVcdTc4YzUiLCJsaXN0IjpbeyJpZCI6MTM1NjksInNrdSI6IlIxODAxIiwiYWhlYWQiOiJcdTYzZDBcdTUyNGQ1XHU1YzBmXHU2NWY2XHU5ODg0XHU1YjlhIiwiZWRpYmxlIjoiMi0zXHU0ZWJhXHU5OGRmIiwic3BlYyI6IjEuNVx1NzhjNSIsInByaWNlIjoiMjE4LjAwIiwic2l6ZSI6IjE2Y20qNy41Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiI2ODFnIiwicHByaWNlIjoiMjE4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvZGFpeGlkZWx2eGluZ1wvUjE4MDIiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEzNTcwLCJza3UiOiJSMTgwMiIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjQtN1x1NGViYVx1OThkZiIsInNwZWMiOiIyLjVcdTc4YzUiLCJwcmljZSI6IjMxOC4wMCIsInNpemUiOiIxOWNtKjcuNWNtIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiMS4xM2tnIiwicHByaWNlIjoiMzE4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvZGFpeGlkZWx2eGluZ1wvUjE4MDIiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEzNTcxLCJza3UiOiJSMTgwMyIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjgtMTJcdTRlYmFcdTk4ZGYiLCJzcGVjIjoiMy41XHU3OGM1IiwicHJpY2UiOiI0NTguMDAiLCJzaXplIjoiMjNjbSo3LjVjbSIsImJjaWQiOjEsImJjbmFtZSI6Ilx1ODZjYlx1N2NkNSIsIndlaWdodCI6IjEuNThrZyIsInBwcmljZSI6IjQ1OC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL2RhaXhpZGVsdnhpbmdcL1IxODAyIiwibGlzdCI6W3siYiI6IlwvYmlnXC8xLmpwZyIsIm0iOiJcL21pZGRsZVwvMS5qcGciLCJzIjoiXC9zbWFsbFwvMS5qcGcifSx7ImIiOiJcL2JpZ1wvMi5qcGciLCJtIjoiXC9taWRkbGVcLzIuanBnIiwicyI6Ilwvc21hbGxcLzIuanBnIn0seyJiIjoiXC9iaWdcLzMuanBnIiwibSI6IlwvbWlkZGxlXC8zLmpwZyIsInMiOiJcL3NtYWxsXC8zLmpwZyJ9LHsiYiI6IlwvYmlnXC80LmpwZyIsIm0iOiJcL21pZGRsZVwvNC5qcGciLCJzIjoiXC9zbWFsbFwvNC5qcGcifV19fSx7ImlkIjoxMzU3Miwic2t1IjoiUjE4MDUiLCJhaGVhZCI6Ilx1NjNkMFx1NTI0ZDVcdTVjMGZcdTY1ZjZcdTk4ODRcdTViOWEiLCJlZGlibGUiOiIxMi0yMFx1NGViYVx1OThkZiIsInNwZWMiOiI1LjVcdTc4YzUiLCJwcmljZSI6Ijc1MC4wMCIsInNpemUiOiIyOS41Y20qNy41Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiIyLjVrZyIsInBwcmljZSI6Ijc1MC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL2RhaXhpZGVsdnhpbmdcL1IxODAyIiwibGlzdCI6W3siYiI6IlwvYmlnXC8xLmpwZyIsIm0iOiJcL21pZGRsZVwvMS5qcGciLCJzIjoiXC9zbWFsbFwvMS5qcGcifSx7ImIiOiJcL2JpZ1wvMi5qcGciLCJtIjoiXC9taWRkbGVcLzIuanBnIiwicyI6Ilwvc21hbGxcLzIuanBnIn0seyJiIjoiXC9iaWdcLzMuanBnIiwibSI6IlwvbWlkZGxlXC8zLmpwZyIsInMiOiJcL3NtYWxsXC8zLmpwZyJ9LHsiYiI6IlwvYmlnXC80LmpwZyIsIm0iOiJcL21pZGRsZVwvNC5qcGciLCJzIjoiXC9zbWFsbFwvNC5qcGcifV19fV19" src="/static/img/car.png"></p>
                            </div>
                                                <div class="item">
                                <img class="item-img" src="https://static.mcake.com/new_goods/manyuemeihongsirong/C0301/list/1.jpg">
                                <h3>蔓越莓红丝绒</h3>
                                <p><span class="price count"><i class="rmb">￥</i>298</span><img class="add-car" data-data="eyJpZCI6MTAxMjcsIm5hbWUiOiJcdTg1MTNcdThkOGFcdTgzOTNcdTdlYTJcdTRlMWRcdTdlZDIiLCJmcmVuY2giOiJWZWxvdXIgcm91Z2UiLCJwcmljZSI6Mjk4LCJpbWciOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvbmV3X2dvb2RzXC9tYW55dWVtZWlob25nc2lyb25nXC9DMDMwMVwvbGlzdFwvMS5qcGciLCJwcHJpY2UiOiIyOTguMDAiLCJza3UiOiJjMDMwMiIsInNwZWMiOiIyXHU3OGM1IiwibGlzdCI6W3siaWQiOjEwMTI2LCJza3UiOiJjMDMwMSIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjItM1x1NGViYVx1OThkZiIsInNwZWMiOiIxXHU3OGM1IiwicHJpY2UiOiIxOTguMDAiLCJzaXplIjoiMTZjbSo3Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiI0NTRnIiwicHByaWNlIjoiMTk4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvbWFueXVlbWVpaG9uZ3Npcm9uZ1wvQzAzMDEiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEwMTI3LCJza3UiOiJjMDMwMiIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjQtN1x1NGViYVx1OThkZiIsInNwZWMiOiIyXHU3OGM1IiwicHJpY2UiOiIyOTguMDAiLCJzaXplIjoiMjFjbSo3Y20iLCJiY2lkIjoxLCJiY25hbWUiOiJcdTg2Y2JcdTdjZDUiLCJ3ZWlnaHQiOiI5MDhnIiwicHByaWNlIjoiMjk4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvbWFueXVlbWVpaG9uZ3Npcm9uZ1wvQzAzMDEiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEwMTI4LCJza3UiOiJjMDMwMyIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjgtMTJcdTRlYmFcdTk4ZGYiLCJzcGVjIjoiM1x1NzhjNSIsInByaWNlIjoiNDI4LjAwIiwic2l6ZSI6IjI2Y20qN2NtIiwiYmNpZCI6MSwiYmNuYW1lIjoiXHU4NmNiXHU3Y2Q1Iiwid2VpZ2h0IjoiMS4zNmtnIiwicHByaWNlIjoiNDI4LjAwIiwicGljIjp7InVybCI6Imh0dHBzOlwvXC9zdGF0aWMubWNha2UuY29tXC9nb29kc1wvbWFueXVlbWVpaG9uZ3Npcm9uZ1wvQzAzMDEiLCJsaXN0IjpbeyJiIjoiXC9iaWdcLzEuanBnIiwibSI6IlwvbWlkZGxlXC8xLmpwZyIsInMiOiJcL3NtYWxsXC8xLmpwZyJ9LHsiYiI6IlwvYmlnXC8yLmpwZyIsIm0iOiJcL21pZGRsZVwvMi5qcGciLCJzIjoiXC9zbWFsbFwvMi5qcGcifSx7ImIiOiJcL2JpZ1wvMy5qcGciLCJtIjoiXC9taWRkbGVcLzMuanBnIiwicyI6Ilwvc21hbGxcLzMuanBnIn0seyJiIjoiXC9iaWdcLzQuanBnIiwibSI6IlwvbWlkZGxlXC80LmpwZyIsInMiOiJcL3NtYWxsXC80LmpwZyJ9XX19LHsiaWQiOjEwMTI5LCJza3UiOiJjMDMwNSIsImFoZWFkIjoiXHU2M2QwXHU1MjRkNVx1NWMwZlx1NjVmNlx1OTg4NFx1NWI5YSIsImVkaWJsZSI6IjEyLTIwXHU0ZWJhXHU5OGRmIiwic3BlYyI6IjVcdTc4YzUiLCJwcmljZSI6IjcyOC4wMCIsInNpemUiOiIzMmNtKjdjbSIsImJjaWQiOjEsImJjbmFtZSI6Ilx1ODZjYlx1N2NkNSIsIndlaWdodCI6IjIuMjdrZyIsInBwcmljZSI6IjcyOC4wMCIsInBpYyI6eyJ1cmwiOiJodHRwczpcL1wvc3RhdGljLm1jYWtlLmNvbVwvZ29vZHNcL21hbnl1ZW1laWhvbmdzaXJvbmdcL0MwMzAxIiwibGlzdCI6W3siYiI6IlwvYmlnXC8xLmpwZyIsIm0iOiJcL21pZGRsZVwvMS5qcGciLCJzIjoiXC9zbWFsbFwvMS5qcGcifSx7ImIiOiJcL2JpZ1wvMi5qcGciLCJtIjoiXC9taWRkbGVcLzIuanBnIiwicyI6Ilwvc21hbGxcLzIuanBnIn0seyJiIjoiXC9iaWdcLzMuanBnIiwibSI6IlwvbWlkZGxlXC8zLmpwZyIsInMiOiJcL3NtYWxsXC8zLmpwZyJ9LHsiYiI6IlwvYmlnXC80LmpwZyIsIm0iOiJcL21pZGRsZVwvNC5qcGciLCJzIjoiXC9zbWFsbFwvNC5qcGcifV19fV19" src="/static/img/car.png"></p>
                            </div>
                                            </div>
                    </div>-->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Accessory from  '../components/Accessory'

export default {
    data(){
        return {
            DetailPage:[]
        }
    },
    methods:{
        getDetailPage(){
            this.axios.get('/cake/DetailPage',{
            params:{
              cid:this.$route.query.id
            }
          }).then(res=>{
            console.log(res.data)
            this.DetailPage = res.data
            console.log(this.DetailPage);
            console.log(this.DetailPage[0].detail)
          })
        },
         add () {
          //  把商品ID传递到vuex中
           this.$store.commit('cartadd',this.DetailPage[0].cid);
           this.$router.push('/cart')
         }
    },
    mounted(){
        this.getDetailPage();
    },
    components:{
      Accessory
    }
}
</script>

<style>
* {
  margin: 0;
  padding: 0;
}

.detail-content {
  width: 100%;
  min-height: 1230px;
  border-top: 1px solid #e8e8e8;
}

.detail-big {
  width: 100%;
  height: 769px;
  background-position: center center;
  background-repeat: no-repeat;
}

.detail-box {
  width: 75pc;
  position: relative;
  top: -75pt;
  z-index: 2;
  margin: 0 auto 26px;
  width: 1400px;
}

.detail-top {
  width: 75pc;
  margin-bottom: 68px;
  width: 1400px;
  height: 38pc;
  background: #fff;
}

.top-left {
  width: 780px;
}

.top-left {
  float: left;
  height: 38pc;
  width: 65%;
}

.top-left .info {
  height: 500px;
  border-bottom: 1px solid #d6d6d6;
}

.top-left .info .info-left {
  padding-left: 58px;
}

.top-left .info .info-left {
  float: left;
  padding-left: 109px;
  width: 780px;
}

.top-left .info .info-left h2 {
  margin-bottom: 8px;
  padding-top: 68px;
  font-size: 26px;
}

.title .pingjia-span,
.title .tag {
  display: inline-block;
  margin-left: 9pt;
  width: 78px;
  height: 24px;
  border-radius: 20px;
  background: #ffe32a;
  color: #000;
  text-align: center;
  font-size: 14px;
  line-height: 24px;
}

.title .pingjia-span {
  cursor: pointer;
}

.right-t {
  margin-bottom: 28px;
}

.right-t .span02 {
  display: block;
  margin-bottom: 24px;
  font-size: 14px;
}

.right-t .span01 {
  display: block;
  margin-bottom: 2pc;
  font-size: 1pc;
}

.right-m p {
  margin-bottom: 8px;
  font-size: 14px;
}

element.style {
  display: block;
  float: left;
}

.right-m .mr {
  display: inline-block;
  width: 98px;
}

.right-m p {
  margin-bottom: 8px;
  font-size: 14px;
}

.right-m .span-sweet {
  display: inline-block;
  margin-bottom: 22px;
  width: 98px;
}

.span-img img {
  margin-right: 4px;
}

img {
  border: none;
}

.right-m .mb {
  margin-bottom: 6px;
}

element.style {
  color: #f0250f;
  margin-top: 20px;
}

.icon-gantanhao {
  float: left;
  /* display: inline-block; */
  width: 1.5rem;
  height: 1.5rem;
  background: url(https://h5.mcake.com/static/images/icons/icon-gantanhao-3.png)
    no-repeat transparent;
  background-position: 0.15rem 0.15rem;
  background-size: 1rem 1rem;
}

i,
em {
  font-style: normal;
}

.pond div {
  float: left;
  margin-right: 95px;
  cursor: pointer;
}

.pond .pond-cur p {
  color: #000;
}

.pond div .p1 {
  margin-bottom: 4px;
  /* color: #848484; */
  font-size: 18px;
}

.pond div .p2 {
  /* color: #848484; */
  font-size: 15px;
}

.top-right {
  float: left;
  padding-top: 18px;
  padding-left: 2pc;
  /* width: 350px;
  height: 590px; */
  border-left: 1px solid #d6d6d6;
}

.detail-ad {
  /* overflow-y: auto; */
  margin-top: 36px;
  padding-top: 20px;
  padding-bottom: 20px;
  height: 280px;
  background: #fff;
}

.ad-box {
  position: relative;
}

.ad-box p {
  overflow: hidden;
  margin-bottom: 10px;
  width: 20pc;
  color: #848484;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 15px;
}

.ad-box p span {
  display: inline-block;
  margin-right: 10px;
  width: 60px;
  height: 19px;
  border: 1px solid #e91820;
  border-radius: 20px;
  color: #e91820;
  text-align: center;
  line-height: 20px;
}

.right-b {
  margin-top: 56px;
}

.right-b .p-rmb {
  margin-bottom: 3pc;
}

.right-b span {
  font-size: 20px;
}

.right-b .span-rmb {
  font-size: 28px;
}

.add-cart {
  /* margin-right: 18px; */
  background-color: #fff;
  border: 1px solid #848484;
}

.right-b button {
  width: 152px;
  height: 44px;
  color: #000;
  font-size: 15px;
  cursor: pointer;
  border-radius: 20px;
}

.buy-now {
  background-color: #ffe32a;
  border: #d6d6d6;
  margin-left: 13px;
}

.pond {
  padding-top: 38px;
  padding-left: 81pt;
}

.add-items {
  margin: 0 auto 188px;
  width: 1250px;
}

.add-items h2 {
  margin-left: 20px;
  color: #000;
  font-size: 22px;
  line-height: 42px;
}

.add-items .item-list {
  overflow-x: auto;
  padding-top: 30px;
  width: 1250px;
}

.item-list .item {
  float: left;
  margin-left: 3pc;
}

.item-list .item .item-img {
  margin-bottom: 9pt;
  width: 150px;
  height: 150px;
  border: 1px solid #e8e8e8;
}

.item-list .item h3 {
  margin-bottom: 6px;
  color: #000;
  font-size: 15px;
}

.item-list .item p {
  height: 2pc;
  line-height: 2pc;
}

.item-list .price {
  position: relative;
  float: left;
  color: #000;
  font-weight: 500;
  font-size: 18px;
}

.add-car {
  float: right;
  cursor: pointer;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  font-weight: 400;
}
</style>


