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
$this->load->view('layout/navbar_masyarakat');
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
              <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
              <li class="breadcrumb-item"><a href="#">List Relawan</a></li>
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">List Relawan</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="list1" class="table table-bordered table-striped nowrap">
                  <thead>
                  <tr>
                    <th>NIK</th>
                    <th>Nama</th>
                    <th>Tempat Lahir</th>
                    <th>Jenis Kelamin</th>
                    <th>Tanggal Lahir</th>
                    <th>Alamat</th>
                    <th>RT/RW</th>
                    <th>Provinsi</th>
                    <th>Kabupaten</th>
                    <th>Kecamatan</th>
                    <th>Kelurahan</th>
                    <th>No HP / WA</th>
                    <th>Relawan</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php 
                    $no = 1;
                    foreach($relawan as $u){ 
                    ?>
                    <tr>
                        <td><?php echo $u->nik ?></td>
                        <td><?php echo $u->nama ?></td>
                        <td><?php echo $u->tempat_lahir ?></td>
                        <td><?php echo ($u->jk == 1) ? 'Laki-Laki' : 'Perempuan'; ?></td>
                        <td><?php echo $u->tgl_lahir ?></td>
                        <td><?php echo $u->alamat ?></td>
                        <td><?php echo $u->rt.'/'.$u->rw ?></td>
                        <td><?php echo $u->provinsi ?></td>
                        <td><?php echo $u->kabupaten ?></td>
                        <td><?php echo $u->kecamatan ?></td>
                        <td><?php echo $u->kelurahan ?></td>
                        <td><?php echo $u->hpwa ?></td>
                        <td><?php echo ($u->as_koor == 1) ? 'Ya Bersedia' : 'Tidak Bersedia'; ?></td>
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
    $("#list1").DataTable({
      "autoWidth": false, "scrollX": true,
      "buttons": ["csv", "excel", "pdf", "print"]
    }).buttons().container().appendTo('#list1_wrapper .col-md-6:eq(0)');
  });
</script>
</body>
</html>
