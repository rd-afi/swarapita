<!DOCTYPE html>
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | Login</title>
<body class="hold-transition login-page">
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <img src="<?php echo base_url();?>assets/dist/img/fococlipping-20220306-173417.png" alt="Gerindra Logo" class="brand-image">
    <div class="card-header text-center">
      <a class="h1" href="<?php echo base_url();?>general/index"><b>SWARAPITA</b></a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="<?php echo base_url();?>login/aksi_login" method="post">
        <div class="input-group mb-3">
          <input name="username" type="text" class="form-control" placeholder="Username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="password" type="password" class="form-control" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <!-- <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div> -->
          </div>
         
          <button type="submit" value="Login" class="btn btn-primary btn-block">Sign In</button>
          <a class="btn btn-default btn-block" href="<?php echo base_url();?>" role="button">Back</a>
          <!-- /.col -->
         
          
          <!-- /.col -->
        </div>
      </form>

    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

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
