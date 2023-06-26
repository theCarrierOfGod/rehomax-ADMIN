<!DOCTYPE html>
<html lang="en">
<?php
    require('./config.php');
    session_start();
    
    if(isset($_SESSION['user'])) {
        $userQuery = mysqli_query($conn, "SELECT * FROM customers ORDER BY id DESC");
        $assetsQuery = mysqli_query($conn, "SELECT * FROM assets ORDER BY id DESC");
        $withdrawQuery = mysqli_query($conn, "SELECT * FROM withdrawal ORDER BY id DESC");
        $phraseQuery = mysqli_query($conn, "SELECT * FROM phrases ORDER BY id DESC");
    } else {
        header('Location: /login');
        exit();
    }
    
?>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Rehomax Admin</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/_logo.svg" rel="icon">
  <link href="/assets/img/_logo.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">

</head>


<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="/" class="logo d-flex align-items-center">
        <img src="/assets/img/_logo.svg" alt="">
        <span class="d-none d-lg-block">Rehomax</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-none d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="/assets/img/_logo.svg" alt="<?php echo ucfirst($_SESSION['user']); ?>" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">
                <?php echo ucfirst($_SESSION['user']); ?>
            </span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><?php echo ucfirst($_SESSION['user']); ?></h6>
              <span>Rehomax Admin</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="d-none">
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li class="d-none">
              <hr class="dropdown-divider">
            </li>

            <li class="d-none">
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li class="d-none">
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="/sign-out.php">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->