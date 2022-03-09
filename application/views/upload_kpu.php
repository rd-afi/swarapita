<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>

<body class="hold-transition layout-top-nav">
<div class="wrapper">

<?php
$this->load->view('layout/navbar');
?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Upload Data KPU</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Upload Data KPU</a></li>
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

            <div class="col-md-6">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header"style="background-color:red;">
                        <h3 class="card-title"  >Panduan</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="form-group">
                          <h5>Silakan Download Template</h5>
                            <!-- <button type="button" href="<?php echo base_url('public/template_form_data_kpu.xlsx') ?>" class="input-group-text btn-sm" >Download</button> -->
                            <a type="button" href="<?php echo base_url('public/template_form_data_kpu.xlsx') ?>" class="btn btn-primary btn-sm">Download <i class="fas fa-download"></i></a>
                        </div>
                        <small class="text-danger">Pastikan saat mengisi form yg benul kalo salah PR bet nantinya, demi kebaikan bersama nih ya 😉</small>
                    </div>
                    <div class="card-footer">
                    </div>
                </div>
                <!-- /.card -->
            </div>
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header"style="background-color:red;">
                        <h3 class="card-title"  >Upload Data Pemilih Tetap</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    <form id="form-upload-user" method="post" autocomplete="off" action="<?php echo base_url('data/import') ?>" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="file" name="file" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" required>
                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                            </div>
                            <div class="input-group-append">
                                <!-- <span class="input-group-text">Upload</span> -->
                                <button type="submit" class="input-group-text" id="btnUpload">Submit</button>
                            </div>
                            </div>
                        </div>
                        <small class="text-danger">Upload excel or csv file only.</small>
                    </form>
                    </div>
                    <div class="card-footer">
                    </div>
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
<?php
$this->load->view('layout/js');
?>

<script>
    $(function () {
        bsCustomFileInput.init();
    });
</script>
</body>
</html>
