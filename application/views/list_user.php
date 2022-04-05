<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | All User Account</title>
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
            <h1 class="m-0">List Account Swarapita</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
              <li class="breadcrumb-item"><a href="#">List Account Swarapita</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-12 col-6">
          <div class="card">
              <!-- <div class="card-header">
                <h3 class="card-title">List Relawan</h3>
              </div> -->
              <!-- /.card-header -->
              <div class="card-body">
                <table id="list1" class="table display table-bordered table-striped nowrap" data-export-title="List Account Swarapita">
                  <thead>
                  <tr>
                    <th>Username</th>
                    <!--<th>Password</th>-->
                    <th>Role</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php 
                    $no = 1;
                    foreach($list_user as $mama){ 
                    ?>
                    <tr>
                        <td><?php echo $mama->username ?></td>
                        <!--<td><?php echo $mama->password ?></td>-->
                        <td><?php echo $mama->role ?></td>
                        <td>
                            <a type="button" href="<?php echo base_url('admin/edit_list_account/'.$mama->id);?>" class="btn btn-warning btn-sm"><i class="fas fa-pen"></i></a>
                            <a type="button" href="<?php echo base_url().'/Dashboard/delete_account/'.$mama->id ?>" onclick="return confirmDialog();" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                        </td>                  
                    </tr>
                  <?php } ?>
                  </tbody>

                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
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
    $("#list1").DataTable({
      "autoWidth": false, "scrollX": true
    })
  });
</script>
<script>
            function confirmDialog() {
              return confirm('Apakah anda yakin akan menghapus data pegawai ini ? ')
    }
    </script>


</body>
</html>
