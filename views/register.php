<?php
if (isset($_POST['submit'])) {
  $creatUser = new UsersController();
  $creatUser->register();
}
// print_r($vols);
?>


<section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <?php include('./views/includes/alerts.php'); ?>
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">

              <img src="./views/assets/images/2439754.webp" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form method="post">

                <div class="d-flex align-items-center mb-3 pb-1">
                    <a href="<?php echo BASE_URL ?>">
                    <img src="./views/assets/images/herosm.png" alt="">
                    </a>
                    <span class="h1 fw-bold mb-0">El MADI</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                    <input type="text" name="fullname" placeholder="Fullname" class="form-control form-control-lg" required />
                    <label class="form-label">Fullname</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="text" name="username" placeholder="Username" class="form-control form-control-lg" required />
                    <label class="form-label">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" name="password" placeholder="Password" class="form-control form-control-lg" required />
                    <label class="form-label">Password</label>
                  </div>

                  <div class="pt-1 mb-4">
                    <button name="submit" class="btn btn-dark btn-lg btn-block">SignUp</button>
                  </div>

                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Already have an account? <a href="<?php echo BASE_URL ?>login" style="color: #393f81;">Login here</a></p>
                  <a href="#" class="small text-muted">Terms of use.</a>
                  <a href="#" class="small text-muted">Privacy policy</a>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>