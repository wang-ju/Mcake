<template>
  <!-- 加购配件 -->
  <div class="add-items">
    <h2>选个配件</h2>
    <div class="item-list">
      <div class="item">
        <img
          class="item-img"
          src="https://static.mcake.com/new_goods/xuancaiquweilibao/R2206/list/1.jpg"
        />
        <h3>炫彩趣味礼包</h3>
        <p>
          <span class="price count">
            <i class="rmb">￥</i>39.90
          </span>
          <img class="add-car" src="../assets/img/car.png" />
        </p>
      </div>
      <div class="item">
        <img
          class="item-img"
          src="https://static.mcake.com/new_goods/binfenhuanlelibao/R1337/list/1.jpg"
        />
        <h3>缤纷欢乐礼包</h3>
        <p>
          <span class="price count">
            <i class="rmb">￥</i>29.90
          </span>
          <img class="add-car" src="../assets/img/car.png" />
        </p>
      </div>
      <div class="item">
        <img
          class="item-img"
          src="https://static.mcake.com/new_goods/HappyBirthday/PJ0111/list/1.jpg"
        />
        <h3>生日牌</h3>
        <p>
          <span class="price count">
            <i class="rmb">￥</i>5.00
          </span>
          <img class="add-car" src="../assets/img/car.png" />
        </p>
      </div>
      <div class="item">
        <img class="item-img" src="https://static.mcake.com/new_goods/shuzilazhu/PJ0101/list/1.jpg" />
        <h3>数字蜡烛</h3>
        <p>
          <span class="price count">
            <i class="rmb">￥</i>3.00
          </span>
          <img class="add-car" src="../assets/img/car.png" />
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    
};
</script>

<style>
.add-items {
  /* margin: 0 auto 188px; */
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

.add-cart {
  /* margin-right: 18px; */
  background-color: #fff;
  border: 1px solid #848484;
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