<template>
    <div>
        <Banner></Banner>
        <BoxesArea></BoxesArea>
        <FeatureProduct></FeatureProduct>
        <Features></Features>
        <Pricing></Pricing>
        <Feedback></Feedback>
        <Blog></Blog>
    </div>
</template>

<script>
import Banner from "./it-startup/Banner";
import BoxesArea from "./it-startup/BoxesArea";
import Features from "./it-startup/Features";
import Pricing from "./it-startup/Pricing";
import Feedback from "./it-startup/Feedback";
import Blog from "./it-startup/Blog";
import FeatureProduct from "../other-pages/product/FeatureProduct.vue";
export default {
  name: "ITStartup",
  components: {
    Banner,
    BoxesArea,
    Features,
    Pricing,
    Feedback,
    Blog,
    FeatureProduct,
  },
  
 
};
</script>