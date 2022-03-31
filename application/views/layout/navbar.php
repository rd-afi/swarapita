<!-- Navbar -->
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
        <a href="<?php echo base_url(); ?>" class="navbar-brand">
            <img src="<?php echo base_url(); ?>assets/dist/img/fococlipping-20220306-173417.png" alt="Gerindra Logo" class="brand-image">
            <!-- <img src="<?php echo base_url(); ?>assets/dist/img/Logo_Partai_Gerindra.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> -->
            <span class="brand-text font-weight-light"><b>SWARAPITA</b></span>
        </a>
        <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse order-3" id="navbarCollapse">

            <?php if (isset($_SESSION['status']) && $_SESSION['status'] == 'login') { ?>

                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                         <?php if ($_SESSION['role'] == 'user') {
                         }
                         else{
                          ?>
                        <a href="<?php echo base_url(); ?>dashboard" class="nav-link">Dashboard</a>
                    <?php } ?></li>
                    <li class="nav-item dropdown">
                        <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Menu</a>
                        <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                            <?php if ($_SESSION['role'] == 'super_admin') { ?>
                                <li><a href="<?php echo base_url(); ?>register_account" class="dropdown-item">Register Account</a></li>
                                <li><a href="<?php echo base_url(); ?>admin/list_account" class="dropdown-item">List Account</a></li>
                            <?php } ?>
                            <li><a href="<?php echo base_url(); ?>" class="dropdown-item">Form Relawan</a></li>
                            <li><a href="<?php echo base_url(); ?>list_relawan" class="dropdown-item">List Relawan</a></li>
                            <?php if ($_SESSION['role'] == 'user' ) {}
                            else {?>
                            <li><a href="<?php echo base_url(); ?>upload_relawan" class="dropdown-item">Upload Data Relawan</a></li>
                            <?php } ?>
                            <!-- <li><a href="<?php echo base_url(); ?>upload_kpu" class="dropdown-item">Upload Data KPU</a></li> -->
                        </ul>
                    </li>
                </ul>
            <?php } else { ?>
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <a class="btn-floating btn btn-tw" type="button" role="button" title="Share on facebook" href="https://www.facebook.com/Swara-Pita-108745171600038" target="_blank" rel="noopener">
                        <img src="<?php echo base_url(); ?>assets/dist/img/24-249482_find-us-on-facebook-transparent-png-stickpng-find-removebg-preview.png" alt="facebook Logo" class="brand-image">
                    </a>
                </ul>
                <ul class="navbar-nav">
                    <a class="btn-floating btn btn-tw" type="button" role="button" title="Share on twitter" href="https://twitter.com/SwaraPita" target="_blank" rel="noopener">
                        <img src="<?php echo base_url(); ?>assets/dist/img/twitter-removebg-preview.png" alt="Twitter Logo" class="brand-image">
                    </a>
                </ul>
                <ul class="navbar-nav">
                    <a class="btn-floating btn btn-tw" type="button" role="button" title="Share on instgram" href="https://www.instagram.com/swara.pita/" target="_blank" rel="noopener">
                        <img src="<?php echo base_url(); ?>assets/dist/img/14844-removebg-preview.png" alt="Gerindra Logo" width="100px" heigth="50px">
                    </a>
                </ul>
                <ul class="navbar-nav">
                    <img src="<?php echo base_url(); ?>assets/dist/img/detail_swarapita-removebg-preview.png" alt="Gerindra Logo" width="480px" heigth="600px">

                </ul>
            <?php } ?>

            <!-- Right navbar links -->
            <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
                <?php if (isset($_SESSION['status']) && $_SESSION['status'] == 'login') { ?>
                    <li class="nav-item dropdown">
                        <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">Hello, <?php echo (isset($_SESSION['status'])) ? $_SESSION['username'] : NULL; ?></a>
                        <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                            <li><a href="<?php echo base_url(); ?>logout" class="dropdown-item">Logout</a></li>
                        </ul>
                    </li>
                <?php } else { ?>
                    <li class="nav-item">
                        <a href="<?php echo base_url(); ?>login" class="nav-link">Login</a>
                    </li>
                <?php } ?>
            </ul>

        </div>
</nav>
<!-- /.navbar -->