<template>
    <!-- Start Main Banner -->
    <div class="main-banner">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col-lg-5">
                            <div class="hero-content">
                                <h1>Lorem ipsum dolor sit amet.</h1>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius quo a sed libero culpa, neque consequatur itaque, doloribus sunt, exercitationem laboriosam enim cumque eveniet amet nostrum velit quam? Porro, molestias?</p>
                                
                                <router-link to="/contact" class="btn btn-primary">Contact Now</router-link>
                            </div>
                        </div>

                        <div class="col-lg-6 offset-lg-1">
                            <div class="">
                               
                                <img src="../../../assets/snmleathers/1 (1).png" class="wow fadeInDown" v-wow data-wow-delay="1s" alt="main-pic">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

      
    </div>
    <!-- End Main Banner -->
</template>

<script>
export default {
    name: 'Banner'
}
</script>