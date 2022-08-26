<template>
  <!-- Start Pricing Area -->
  <section class="pricing-area ptb-80 bg-f9f6f6">
    <div class="container">
      <div class="section-title">
        <h2>Feature Product List</h2>
        <div class="bar"></div>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
      </div>

      <div class="row">
        <div
          v-for="product in products"
          :item="product"
          FF
          :key="product.id"
          @update-cart="updateCart"
          class="col-lg-4 col-md-6 col-sm-6"
        >
          <div class="pricing-table">
            <div class="pricing-header">
              <h3>{{ product.name }}</h3>
            </div>

            <div class="pricing-features">
              <img
                :src="product.image"
                :alt="product.name"
                width="100%"
                height="300px"
              />
            </div>
            <div class="price mt-2">
              <span>&#36;{{ product.price }} </span>
            </div>
            <div class="pricing-footer">
               <router-link :to="{
                      name: 'product-details',
                      params: { id: product.id },
                    }" class="btn btn-primary">View Details</router-link> 
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="shape8 rotateme">
      <img src="../../../assets/img/shape2.svg" alt="shape" />
    </div>
    <div class="shape2 rotateme">
      <img src="../../../assets/img/shape2.svg" alt="shape" />
    </div>
    <div class="shape7">
      <img src="../../../assets/img/shape4.svg" alt="shape" />
    </div>
    <div class="shape4">
      <img src="../../../assets/img/shape4.svg" alt="shape" />
    </div>
  </section>
  <!-- End Pricing Area -->
</template>

<script>
export default {
  name: "Pricing",
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
      let item =this.$store.state.items;
      return item.slice(0,3);
    },
  },
};
</script>

<style scoped>
.pricing-table .pricing-header {
  margin-bottom: 0px !important;
}
</style>