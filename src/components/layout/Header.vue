<template>
    <!-- Start Navbar Area -->
    <header id="header" :class="['headroom', {'is-sticky': isSticky}]">
        <div class="startp-nav">
            <div class="container">
                <nav class="navbar navbar-expand-md navbar-light">
                    <router-link class="navbar-brand" to="/">
                        <img src="../../assets/img/logo.png" width="100px" height="60px" alt="logo" />
                    </router-link>

                    <b-navbar-toggle target="navbarSupportedContent"></b-navbar-toggle>


                    <b-collapse class="collapse navbar-collapse mean-menu" id="navbarSupportedContent" is-nav>
                        <ul class="navbar-nav nav ml-auto">
                            <li class="nav-item">
                               <router-link to="/" class="nav-link">Home </router-link>

                              
                            </li>

                            <li class="nav-item">
                                    <router-link :to="{  name: 'about-us'}" class="nav-link">About us </router-link>
                            </li>

                           
                            
                            <li class="nav-item">
                                      <router-link to="/shop" class="nav-link">Product </router-link>
                            </li>
                            

                            <li class="nav-item">
                                 <router-link to="/blog-grid" class="nav-link">Blog</router-link>
                            </li>

                            <li class="nav-item">
                                <router-link to="/contact" class="nav-link">Contact</router-link>
                            </li>
                        </ul>
                    </b-collapse>

                </nav>
            </div> 
        </div>
    </header>
    <!-- End Navbar Area -->
</template>

<script>
export default {
  name: "Header",
  data() {
    return {
      isSticky: false,
    };
  },

  mounted() {
    const that = this;
    window.addEventListener("scroll", () => {
      let scrollPos = window.scrollY;
      // eslint-disable-next-line no-console
      if (scrollPos >= 100) {
        that.isSticky = true;
      } else {
        that.isSticky = false;
      }
    });
  },

  computed: {
    shoppingCart() {
      return this.$store.state.cart;
    },
  },
};
</script>