<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SWARAPITA</title>
  <title>SWARAPITA</title>

  <link rel="stylesheet" href="<?php echo base_url();?>assets/plugins/daterangepicker/daterangepicker.css">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>/assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition layout-top-nav">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
      <a href="<?php echo base_url();?>/assets/index3.html" class="navbar-brand">
        <img src="<?php echo base_url();?>/assets/dist/img/Partai Gerindra Logo - Download Free PNG.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light"><b>SWARAPITA</b></span>
      </a>

      <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->

        </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Formulir Pendaftaran</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">formulir</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row">

          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header"style="background-color:red;">
                <h3 class="card-title"  >Formulir Pendaftaran Relawan Swarapita</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">NIK</label>
                    <input type="text" class="form-control" id="nik" placeholder="Nomor Induk Kependudukan">
                  </div>
                  <div class="form-group">
                   <label for="exampleInputEmail1">Nama</label>
                    <input type="text" class="form-control" id="nik" placeholder="Nama sesuai KTP">
                   </div>
                    <div class="form-group">
                     <label for="exampleInputEmail1">Tempat Lahir</label>
                      <input type="text" class="form-control" id="nik" placeholder="Tempat Lahir Sesuai KTP">
                    </div>
                     <div class="form-group">
                                      <label for="exampleSelectBorder">Jenis Kelamin</label>
                                      <select class="custom-select form-control-border" id="exampleSelectBorder">
                                        <option>Laki-Laki</option>
                                        <option>Perempuan</option>
                                      </select>
                                    </div>
                   <div class="form-group">
                    <label>Tanggal Lahir:</label>
                                     <div class="input-group">
                                       <div class="input-group-prepend">
                                         <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                       </div>
                                       <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask>
                                     </div>
                   </div>
                   <div class="form-group">
                        <label for="exampleInputEmail1">Alamat</label>
                        <input type="text" class="form-control" id="alamat" placeholder="Alamat Sesuai KTP">
                   </div>
                     <div class="form-group">
                         <label for="exampleInputEmail1">RT/RW</label>
                         <div class="row">
                                           <div class="col-6">
                                             <input type="number" class="form-control" placeholder="RT">
                                           </div>
                                           <div class="col-6">
                                             <input type="number" class="form-control" placeholder="RW">
                                           </div>

                                         </div>
                     </div>
                      <div class="form-group">
                                             <label for="exampleInputEmail1">Kelurahan/Desa</label>
                                             <input type="text" class="form-control" id="kelurahan" placeholder="Kelurahan/Desa Sesuai KTP">
                                        </div>
                       <div class="form-group">
                                                                   <label for="exampleInputEmail1">Kecamatan</label>
                                                                   <input type="text" class="form-control" id="kelurahan" placeholder="Kecamatan Sesuai KTP">
                                                              </div>
                       <div class="form-group">
                                                                   <label for="exampleInputEmail1">No. Handpohone/WA</label>
                                                                   <input type="text" class="form-control" id="kelurahan" placeholder="Nomor Handphone / WhatsApp">
                                                              </div>


                                                           <div class="form-group">
                                                                                                <label for="exampleSelectBorder">Bersedia menjadi kordinator desa/kelurahan dan menjadi rumah sebagai posko pendaftaran relawan</label>
                                                                                                <select class="custom-select form-control-border" id="exampleSelectBorder">
                                                                                                  <option>Ya</option>
                                                                                                  <option>Tidak</option>
                                                                                                </select>
                                                                                              </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" style="background-color:red;">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
          
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">

     </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="<?php echo base_url();?>/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url();?>/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>/assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>/assets/dist/js/demo.js"></script>
<script>
//Datemask dd/mm/yyyy
     $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
             //Datemask2 mm/dd/yyyy
             $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
             //Money Euro
             $('[data-mask]').inputmask()</script>
</body>
</html>
