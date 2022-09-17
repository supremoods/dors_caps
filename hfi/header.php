<nav class="navbar navbar-expand-lg navbar-light bg-light px-lg-3 py-lg-2 shadow-sm sticky-top">
  <div class="container-fluid">
    <!-- <div>
      <img src="/images/carousel/DORS-logo.png">
    </div> -->
    <a class="navbar-brand me-5 fw-bold fs-3 h-font " href="index.php">DORS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link me-2" href="features.php">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link me-2" href="services.php">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link me-2" href="about.php">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link me-2" href="contact.php">Contact</a>
        </li>
      </ul>
      <div class="nav-flex">
        <button type="button" class="btn shadow-none me-lg-3 me-2 custom-bg" data-bs-toggle="modal" data-bs-target="#loginModal">
        Login
        </button>
        <button type="button" class="btn shadow-none custom-bg-2" data-bs-toggle="modal" data-bs-target="#registerModal">
        Register
        </button>
      </div>
    </div>
  </div>
</nav>


<!-- Login button/ form -->
<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content d-flex align-item-center">
      <form method="post" id="auth_login">
      </form>
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">
        <i class="bi bi-person-circle fs-3 me-2"></i> User Login</h5>
        <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mb-3">
          <label class="form-label">Email address</label>
          <input type="email" class="form-control shadow-none">
        </div>
        <div class="mb-4">
        <label class="form-label">Password</label>
        <input type="password" class="form-control shadow-none">
        </div>
        <div class = "d-flex align-items-center justify-content-between mb-2">
          <button type="submit" class="btn btn-dark shadow-none">Login</button>
          <a href="javascript:  void(0)" class="text-secondary text-decoration-none">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
</div>
 
    <!-- Registration button/ form -->
<div class="modal fade" id="registerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content d-flex align-item-center">
      <form method="post" id="auth_reg" enctype="multipart/form-data">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">
            <i class="bi bi-person-plus-fill"></i> User Registration</h5>
            <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <span class="badge bg-light text-dark mb-3 text-wrap lh-base">
            Note: Your details must match with your ID</span>
            <div class="container-form">
              <div class="row">
                <div class="col-md-6 mb-3 ps-0 ">
                  <label for="full_name" class="form-label">Full Name</label>
                  <input type="text" name="full_name" class="form-control shadow-none">
                </div>
                <div class="col-md-6 mb-3 p-0 ps-0">
                  <label for="date_of_birth" class="form-label">Date of Birth</label>
                  <input type="date" name="date_of_birth" class="form-control shadow-none">
                </div>
                <div class="col-md-6 mb-3 ps-0">
                  <label for="email_add" class="form-label">Email address</label>
                  <input type="email" name="email_add" class="form-control shadow-none">
                </div>
                <div class="col-md-6 mb-3 p-0 ps-0">
                  <label for="mobile_number" class="form-label">Mobile Number</label>
                  <input type="number" name="mobile_number" class="form-control shadow-none">
                </div>
                <div class="col-md-12 p-0 mb-3 ps-0" >
                  <label for="address" class="form-label">Address</label>
                  <textarea name="address" class="form-control shadow-none" rows="1"></textarea>
                </div>
                <div class="col-md-6 mb-3 ps-0">
                  <label for="password" class="form-label">Password</label>
                  <input name="password" type="password" class="form-control shadow-none">
                </div>
                <div class="col-md-6 mb-3 p-0 ps-0">
                  <label for="confirm_password" class="form-label">Confirm Password</label>
                  <input name="confirm_password" type="password" class="form-control shadow-none">
                </div>
                <div class="col-md-6 ps-0 p-0 mb-3">
                  <label for="avatar" class="form-label">Picture</label>
                  <input name="avatar" type="file" name="" class="form-control shadow-none">
                </div>
              </div>
            </div>

            <div class="text-center my-1">
              <button type="submit" class="btn btn-dark shadow-none">Register</button>
            </div>
        
          <!-- <div class="mb-3">
            <label class="form-label">Email address</label>
            <input type="email" class="form-control shadow-none">
          </div>
          <div class="mb-4">
              <label class="form-label">Password</label>
              <input type="password" class="form-control shadow-none">
          </div>
            <div class = "d-flex align-items-center justify-content-between mb-2">
            <button type="submit" class="btn btn-dark shadow-none">Login</button>
            <a href="javascript:  void(0)" class="text-secondary text-decoration-none">Forgot Password?</a>
          </div> -->
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

