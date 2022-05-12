<?php
if ($_SESSION['role'] == 0) {
    Redirect::to(BASE_URL);
}
if (isset($_POST['id'])) {
    $existVol = new VolsController();
    $vol = $existVol->getOneVol();
} else {
    Redirect::to('homeadmin');
}
if (isset($_POST['submit'])) {
    $existVol = new VolsController();
    $existVol->updateVol();
}
?>
<link rel="stylesheet" href="./views/assets/css/navbar.css">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="<?php echo BASE_URL ?>">
            <img src="./views/assets/images/whitelogo.png" alt="">
            <!-- <i class="fab fa-github fa-2x mx-3 ps-1"></i> -->
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form method="post" class="me-3">
                <div class="form-white input-group" style="width: 250px;">
                    <input type="text" name="search" class="form-control rounded" placeholder="Search or jump to... ( / )" aria-label="Search" aria-describedby="search-addon" />
                    <button class="btn btn-info btn-sm" name="find" type="submit"><i class="fa fa-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo BASE_URL; ?>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo BASE_URL; ?>add">Add Flight</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo BASE_URL ?>allres">All Reservations</a>
                </li>
            </ul>
            <ul class="navbar-nav d-flex flex-row ms-auto me-3">
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo BASE_URL ?>logout"><?php echo $_SESSION['username']; ?></a>
                </li>
                <li class="nav-item me-3 me-lg-0 dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./views/assets/images/pt4.jpg" class="rounded-circle" height="22" alt="" loading="lazy" />
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown1">
                        <li><a class="dropdown-item" href="<?php echo BASE_URL ?>logout">LogOut</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="vh-90" style="background-color: #9A616D;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
                <?php include('./views/includes/alerts.php'); ?>
                <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                        <div class="col-md-12 col-lg-12 d-flex align-items-center">
                            <div class="card-body p-4 p-lg-5 text-black">

                                <form method="post">

                                    <div class="d-flex align-items-center mb-3 pb-1">
                                        <img src="./views/assets/images/herosm.png" alt="">
                                        <span class="h1 fw-bold mb-0">El MADI</span>
                                    </div>

                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Update Flight</h5>

                                    <div class="form-outline mb-4">
                                        <input type="text" name="origin" placeholder="Origin" class="form-control form-control-lg" value="<?php echo $vol->origin; ?>" required />
                                        <label for="origin" class="form-label">Origin</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="text" name="destination" placeholder="Destination" class="form-control form-control-lg" value="<?php echo $vol->destination; ?>" required />
                                        <input type="hidden" name="id" class="form-control form-control-lg" value="<?php echo $vol->id; ?>">
                                        <label for="destination" class="form-label">Destination</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="datetime" name="dep_time" placeholder="Departure Time" class="form-control form-control-lg" value="<?php echo $vol->dep_time; ?>" required />
                                        <label for="dep_time" class="form-label">Departure Time</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="datetime" name="return_time" placeholder="Return Time" class="form-control form-control-lg" value="<?php echo $vol->return_time; ?>" required />
                                        <label for="return_time" class="form-label">Arrival Time</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="text" name="seats" placeholder="Seats" class="form-control form-control-lg" value="<?php echo $vol->seats; ?>" required />
                                        <label for="seats" class="form-label">Seats</label>
                                    </div>
                                    <div class="form-outline mb-4">
                                        <select name="flighttype" class="form-control form-control-lg" required>
                                            <option value="1" <?php echo $vol->flighttype ? 'selected' : ''; ?>>One Way</option>
                                            <option value="0" <?php echo !$vol->flighttype ? 'selected' : ''; ?>>Round Trip</option>
                                        </select>
                                        <label for="flighttypz" class="form-label">Flight Type</label>
                                    </div>

                                    <div class="pt-1 mb-4">
                                        <button type="submit" name="submit" class="btn btn-dark btn-lg btn-block">Submit</button>
                                    </div>
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