<template>
  <section class="shop-area ptb-80">
    <div class="container">
      <div class="section-title">
        <span class="sub-title">New Arrival</span>
        <h2>Our Product</h2>
        <div class="bar"></div>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
      </div>
      <div class="row">
        <ShopItem
          v-for="product in products"
          :item="product"
          FF
          :key="product.id"
          @update-cart="updateCart"
          class="col-lg-3 col-md-6 col-sm-6"
        >
        </ShopItem>
      </div>
      <center>
        <router-link to="/shop" class="btn btn-primary">View More</router-link>
      </center>
    </div>
  </section>
</template>

<script>
import ShopItem from './ShopItem.vue';
export default {
  name: "FeatureProduct",
  components: {
    ShopItem,
  },
  methods: {
    updateCart(e) {
      this.cart.push(e);
      this.total = this.shoppingCartTotal;
    },
    emptyCart() {
      this.cart = [];
      this.total = 0;
    },
  },
  computed: {
    products() {
      return this.$store.state.items;
    },
  },
};
</script>

<style>
</style>