<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | Edit List Account</title>
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
            <h1 class="m-0">Relawan Swarapita</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <!-- <li class="breadcrumb-item"><a href="#">formulir</a></li> -->
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
                <?php if (isset($relawan)){ ?>
                  <h3 class="card-title">Edit Account</h3>
                <?php } else { ?>
                  <h3 class="card-title">Form Edit</h3>
                <?php } ?>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?php echo base_url().'/Dashboard/update_account/'.$account[0]->id ?>" method="post">
              <?php foreach($account as $u){ ?>
              <div class="card-body">
                <div class="form-group">
                  <label for="nik">ID</label>
                  <input type="number" class="form-control" name="id" placeholder="Nomor Induk Kependudukan" minlength="16" maxlength="16"
                  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required
                    <?php echo (isset($account)) ? 'value ="'.$u->id.'" readonly' : NULL ; ?>
                    >
                  </div>
                  <div class="form-group">
                    <label for="nama">Username</label>
                    <input type="text" class="form-control" value="<?php echo $account[0]->username ?>" name="username" placeholder="Username" readonly required>
                  </div>
                  <div class="form-group">
                    <label for="nama">Password</label>
                    <input type="password" class="form-control" value="<?php echo $account[0]->password ?>" name="password" placeholder="Isi Password" required>
                  </div>
                  <div class="form-group">
                    <label for="nama pegawai" class="col-md-3"> Role  </label>
                                        <div class="col-md-7">
                                            <select class="form-control" name="role" id="Role" required>
                                                <option value="">- Role -</option>
                                                    <option value="super_admin">Super Admin</option>
                                                    <option value="admin">Admin</option>
                                                    <option value="user">User</option>
                                              </select>
                  </div>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" style="background-color:red;">Submit</button>
                </div>
              <?php } ?>
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

<!-- requiredD SCRIPTS -->

<?php
$this->load->view('layout/js');
?>

<?php if($this->session->flashdata('msg')): ?>
  <script type="text/javascript">
    $(function() {
      var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timerProgressBar: true,
        timer: 5000
        });
      
      $(document).ready(function(){
      Toast.fire({
        icon: '<?php echo $this->session->flashdata("ico"); ?>',
        title: '<?php echo $this->session->flashdata("msg"); ?>'
        })
      });
    });
  </script> 
<?php endif ?>

</body>
</html>
