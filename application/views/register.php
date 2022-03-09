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

<style>
.field-icon {
  float: right;
  padding: 1px;
  margin-left: -25px;
  margin-right:20px;
  margin-top: -27px;
  position: relative;
  z-index: 2;
}

</style>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Register Account Pengguna Swarapita</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Register Account Swarapita</a></li>
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
                <a> Fomulir Registrasi Account </a>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?php echo base_url().'admin/add_account'; ?>" method="post" id="form_regsiter">
              <div class="card-body">
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" name="username" placeholder="Username">
                
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password-field" type="password" class="form-control" name="password" placeholder="password" required>
                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                  </div>
                 
                  <div class="form-group">
                    <label for="role">Role</label>
                    <select class="custom-select form-control-border" name="role" required>
                      <option value="super_admin">Super Admin</option>
                      <option value="admin">Admin</option>
                      <option value="user">User</option>
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
<script>
  $(".toggle-password").click(function() {

$(this).toggleClass("fa-eye fa-eye-slash");
var input = $($(this).attr("toggle"));
if (input.attr("type") == "password") {
  input.attr("type", "text");
} else {
  input.attr("type", "password");
}
});
  </script>



</body>
</html>
