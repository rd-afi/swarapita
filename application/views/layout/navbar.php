<!-- Navbar -->
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
        <a href="<?php echo base_url();?>" class="navbar-brand">
        <img src="<?php echo base_url();?>assets/dist/img/Logo_Partai_Gerindra.png" alt="Gerindra Logo" class="brand-image">
        <!-- <img src="<?php echo base_url();?>assets/dist/img/Logo_Partai_Gerindra.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> -->
        <span class="brand-text font-weight-light"><b>SWARAPITA</b></span>
        </a>
        <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        
        <?php if ($_SESSION['username'] == 'admin') { ?>

        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
            <a href="<?php echo base_url();?>dashboard" class="nav-link">Dashboard</a>
            </li>
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Menu</a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                <li><a href="<?php echo base_url();?>" class="dropdown-item">Form Relawan</a></li>
                <li><a href="<?php echo base_url();?>list_relawan" class="dropdown-item">List Relawan</a></li>
                <li><a href="<?php echo base_url();?>upload_pemilih_tetap" class="dropdown-item">Upload Pemilih Tetap</a></li>
                </ul>
            </li>
        </ul>
        <?php } ?>

        <!-- Right navbar links -->
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
            <?php if ($_SESSION['status'] <> 'login') { ?>
            <li class="nav-item">
                <a href="<?php echo base_url();?>login" class="nav-link">Login</a>
            </li>
            <?php } else { ?>
            <li class="nav-item dropdown">
                <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Hello, <?php echo $_SESSION['username'] ?></a>
                <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                <li><a href="<?php base_url();?>logout" class="dropdown-item">Logout</a></li>
                </ul>
            </li>
            <?php } ?>
        </ul>

    </div>
</nav>
<!-- /.navbar -->