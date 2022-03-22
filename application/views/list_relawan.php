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
            <h1 class="m-0">List Relawan Swarapita</h1>
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
                <table id="list1" class="table display table-bordered table-striped nowrap" data-export-title="List Relawan SWARAPITA">
                  <thead>
                  <tr>
                    <th>NIK</th>
                    <th>Nama</th>
                    <th>Jenis Kelamin</th>
                    <th>Tempat Lahir</th>
                    <th>Tanggal Lahir</th>
                    <th>Alamat</th>
                    <th>Kota</th>
                    <th>Kecamatan</th>
                    <th>Kelurahan</th>
                    <th>No HP / WA</th>
                    <th>Relawan</th>
                    <th>Lokasi</th>
                    <th>Input By</th>
                    <th>Action</th>
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
                        <td><?php echo ($u->jk == 1) ? 'Laki-Laki' : 'Perempuan'; ?></td>
                        <td><?php echo $u->tempat_lahir?></td>
                        <td><?php echo $u->tgl_lahir?></td>
                        <td><?php echo $u->alamat ?></td>
                        <td><?php echo $u->kabupaten ?></td>
                        <td><?php echo $u->kecamatan ?></td>
                        <td><?php echo $u->kelurahan ?></td>
                        <td><?php echo $u->hpwa ?></td>
                        <td><?php echo ($u->as_koor == 1) ? 'Ya Bersedia' : 'Tidak Bersedia'; ?></td>
                        <td><?php echo $u->lokasi ?></td>
                        <td><?php echo $u->penginput ?></td>
                        <?php 
                        $role=$u->penginput;
                        $session=$_SESSION['username'];
                        if ($session=='admin'){ ?>
                          <td><a type="button" href="<?php echo base_url('edit/'.$u->nik);?>" class="btn btn-warning btn-sm"><i class="fas fa-pen"></i></a>
                              <a type="button" href="<?php echo base_url('hapus/'.$u->nik);?>" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                          </td>
                        <?php } else if($role==$session){ ?>
                          <td><a type="button" href="<?php echo base_url('edit/'.$u->nik);?>" class="btn btn-warning btn-sm"><i class="fas fa-pen"></i></a>
                              <a type="button" href="<?php echo base_url('hapus/'.$u->nik);?>" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                          </td>
                        <?php } else { ?>
                          <td></td>
                        <?php } ?>
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
      "autoWidth": false, "scrollX": true,
      "buttons": [
        {
          extend: 'excelHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          exportOptions: {
            columns: [0,1,2,3,4,5,6,7,8]
            // columns: ':visible:not(:last-child)'
          }
        },{
          extend: 'csvHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          exportOptions: {
            columns: [0,1,2,3,4,5,6,7,8]
            // columns: ':visible:not(:last-child)'
          }
        },{
          extend: 'pdfHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          exportOptions: {
            columns: [0,1,2,3,4,5,6,7,8]
            // columns: ':visible:not(:last-child)'
          }
        }
      ],
      "fixedColumns": { right: 1 }
    }).buttons().container().appendTo('#list1_wrapper .col-md-6:eq(0)');
  });
</script>
</body>
</html>
