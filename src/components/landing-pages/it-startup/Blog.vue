<template>
  <!-- Start Blog Area -->
  <section class="blog-area ptb-80">
    <div class="container">
      <div class="section-title">
        <h2>The News from Our Blog</h2>
        <div class="bar"></div>
        <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
      </div>

      <div class="row">
        <div class="col-lg-4 col-md-6" v-for="news of newsAll" :key="news.id">
          <div class="single-blog-post">
            <div class="blog-image">
               <router-link
                  :to="{
                      name: 'blog-details',
                      params: { id: news.id },
                    }"
                >
                <img :src="news.image" alt="image" />
             </router-link>

              <div class="date">
                <feather type="calendar"></feather>
                {{ moment(news.publishDate).format('Do-MMM-YYYY') }}
              </div>
            </div>

            <div class="blog-post-content">
              <h3>
                <router-link
                  :to="{
                      name: 'blog-details',
                      params: { id: news.id },
                    }"
                >{{ news.title.substring(0,50)+"..." }}</router-link>
              </h3>

              <span>
                by
                <a href="#">{{ news.published_by }}</a>
              </span>

              <p>{{ news.description.substring(0,150)+"..." }}</p>

               <router-link class="read-more-btn"
                  :to="{
                      name: 'blog-details',
                      params: { id: news.id },
                    }"
                >
                   Read More
                    <feather type="arrow-right"></feather>
                </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Blog Area -->
</template>

<script>
import axios from "axios";
export default {
  name: "Blog",
  data() {
    return {
      newsAll: [],
    };
  },
  mounted() {
    this.latestBlogData();
  },
  methods: {
    latestBlogData() {
      axios
        .get("api/v1/news/book/recent/all")
        .then((response) => {
          let data=response.data.data;
          this.newsAll=data.slice(0,3)
         
        })
        .catch((error) => {
          this.errorsNews.push(error);
        });
    },
  },
};
</script>