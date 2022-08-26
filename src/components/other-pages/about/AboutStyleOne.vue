<template>
  <div>
    <!-- Start Page Title -->
    <div class="page-title-area">
      <div class="d-table">
        <div class="d-table-cell">
          <div class="container">
            <h2>About Us</h2>
          </div>
        </div>
      </div>

      <div class="shape1">
        <img src="../../../assets/img/shape1.png" alt="shape" />
      </div>
      <div class="shape2 rotateme">
        <img src="../../../assets/img/shape2.svg" alt="shape" />
      </div>
      <div class="shape3">
        <img src="../../../assets/img/shape3.svg" alt="shape" />
      </div>
      <div class="shape4">
        <img src="../../../assets/img/shape4.svg" alt="shape" />
      </div>
      <div class="shape5">
        <img src="../../../assets/img/shape5.png" alt="shape" />
      </div>
      <div class="shape6 rotateme">
        <img src="../../../assets/img/shape4.svg" alt="shape" />
      </div>
      <div class="shape7">
        <img src="../../../assets/img/shape4.svg" alt="shape" />
      </div>
      <div class="shape8 rotateme">
        <img src="../../../assets/img/shape2.svg" alt="shape" />
      </div>
    </div>
    <!-- End Page Title -->

    <!-- Start About Area -->
    <section class="about-area ptb-80">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-12">
            <div class="about-image">
              <img src="../../../assets/img/images/about png-01.png" alt="image" />
            </div>
          </div>
         

          <div class="col-lg-6 col-md-12">
            <div class="about-content">
              <div class="section-title">
                <h2>About us </h2>
                <div class="bar"></div>
              </div>

              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi aspernatur explicabo architecto illo earum eos! Hic alias repellat ipsa maiores?
              </p>
            </div>
          </div>
           <div class="col-lg-12 col-md-12 mt-3">
            <div class="about-content">
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem vel fugit possimus quam earum ex quo reiciendis iste atque eum.</p>
            </div>
          </div>
        </div>

        <div class="about-inner-area">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="about-text">
                <h3>Our Vision</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nostrum, expedita! Possimus autem praesentium provident distinctio.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="about-text">
                <h3>Our Mission</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis esse hic doloremque ducimus necessitatibus nihil iste, architecto </p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-0 offset-md-3 offset-sm-3">
              <div class="about-text">
                <h3>Our Goal</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit necessitatibus debitis obcaecati, perspiciatis magni consequuntur  </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End About Area -->

    <!-- End Ready To Talk Area -->

    <Funfacts></Funfacts>
  </div>
</template>

<script>
import Funfacts from "../common/Funfacts";
export default {
  name: "AboutStyleOne",
  components: {
    Funfacts,
  },
};
</script>