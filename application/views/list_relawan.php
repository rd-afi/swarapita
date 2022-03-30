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
                <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Home</a></li>
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
                        <?php
                        $session = $_SESSION['role'];
                        if ($session == 'super_admin') {
                        ?>
                          <th>Input By</th>
                        <?php } else {
                        } ?>
                        <?php
                        $session = $_SESSION['role'];
                        if ($session == 'super_admin' or $session == 'admin') {
                        ?>
                          <th>Action</th>
                        <?php } else {
                        } ?>

                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      $no = 1;
                      foreach ($relawan as $u) {
                      ?>
                        <tr>
                          <td><?php echo $u->nik ?></td>
                          <td><?php echo $u->nama ?></td>
                          <td><?php echo ($u->jk == 1) ? 'Laki-Laki' : 'Perempuan'; ?></td>
                          <td><?php echo $u->tempat_lahir ?></td>
                          <td><?php echo $u->tgl_lahir ?></td>
                          <td><?php echo $u->alamat ?></td>
                          <td><?php echo $u->kabupaten ?></td>
                          <td><?php echo $u->kecamatan ?></td>
                          <td><?php echo $u->kelurahan ?></td>
                          <td><?php echo $u->hpwa ?></td>
                          <td><?php echo ($u->as_koor == 1) ? 'Ya' : 'Tidak'; ?></td>
                          <td><?php echo $u->lokasi ?></td>
                          <?php
                          $session = $_SESSION['role'];
                          if ($session == 'super_admin') {
                          ?>
                            <td><?php echo $u->penginput ?></td>
                          <?php } else {
                          } ?>

                          <?php
                          $role = $u->penginput;
                          $session = $_SESSION['role'];
                          if ($session == 'super_admin' or $session == 'admin') { ?>
                            <td><a type="button" href="<?php echo base_url('edit/' . $u->nik); ?>" class="btn btn-warning btn-sm"><i class="fas fa-pen"></i></a>
                              <a type="button" href="<?php echo base_url('hapus/' . $u->nik); ?>" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                            </td>
                          <?php } else {  ?>


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
    $(function() {
      $("#list1").DataTable({
        "autoWidth": false,
        "scrollX": true,
        "buttons": [{
          extend: 'excelHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          exportOptions: {
            columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
            // columns: ':visible:not(:last-child)'
          }
        }, {
          extend: 'csvHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          exportOptions: {
            columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
            // columns: ':visible:not(:last-child)'
          }
        }, {
          extend: 'pdfHtml5',
          title: "List Relawan SWARAPITA",
          filename: "List Relawan SWARAPITA",
          orientation: 'landscape',
          pageSize: 'LEGAL',
          exportOptions: {
            columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
            // columns: ':visible:not(:last-child)'
          }
        }],
        "fixedColumns": {
          right: 1
        },
        initComplete: function() {
          $('<div class="row">' +
            '<div class="col-sm-4"> <div class="form-group">' +
            '<select class="form-control" id="fKot" ><option value="">KOTA</option></select>' +
            '</div> </div>' +
            '<div class="col-sm-4"> <div class="form-group">' +
            '<select class="form-control" id="fKec"><option value="">KECAMATAN</option></select>' +
            '</div> </div>' +
            '<div class="col-sm-4"> <div class="form-group">' +
            '<select class="form-control" id="fKel"><option value="">KELURAHAN</option></select>' +
            '</div> </div>' +
            '</div>').appendTo("#list1_wrapper .dataTables_filter");
          this.api().columns(6).every(function() {
            var column = this;
            var select = $("#fKot")
              .on('change', function() {
                if ($(this).val() == "") {
                  document.getElementById("fKec").removeAttribute("hidden");
                  document.getElementById("fKel").removeAttribute("hidden");
                } else {
                  document.getElementById("fKec").setAttribute("hidden", "true");
                  document.getElementById("fKel").setAttribute("hidden", "true");
                }
                var val = $.fn.dataTable.util.escapeRegex($(this).val());
                column.search(val ? '^' + val + '$' : '', true, false).draw();
              });
            column.data().unique().sort().each(function(d, j) {
              select.append('<option value="' + d + '">' + d + '</option>')
            });
          });
          this.api().columns(7).every(function() {
            var column = this;
            var select = $("#fKec")
              .on('change', function() {
                if ($(this).val() == "") {
                  document.getElementById("fKot").removeAttribute("hidden");
                  document.getElementById("fKel").removeAttribute("hidden");
                } else {
                  document.getElementById("fKot").setAttribute("hidden", "true");
                  document.getElementById("fKel").setAttribute("hidden", "true");
                }
                var val = $.fn.dataTable.util.escapeRegex($(this).val());
                column.search(val ? '^' + val + '$' : '', true, false).draw();
              });
            column.data().unique().sort().each(function(d, j) {
              select.append('<option value="' + d + '">' + d + '</option>')
            });
          });
          this.api().columns(8).every(function() {
            var column = this;
            var select = $("#fKel")
              .on('change', function() {
                if ($(this).val() == "") {
                  document.getElementById("fKot").removeAttribute("hidden");
                  document.getElementById("fKec").removeAttribute("hidden");
                } else {
                  document.getElementById("fKot").setAttribute("hidden", "true");
                  document.getElementById("fKec").setAttribute("hidden", "true");
                }
                var val = $.fn.dataTable.util.escapeRegex($(this).val());
                column.search(val ? '^' + val + '$' : '', true, false).draw();
              });
            column.data().unique().sort().each(function(d, j) {
              select.append('<option value="' + d + '">' + d + '</option>')
            });
          });
        }
      }).buttons().container().appendTo('#list1_wrapper .col-md-6:eq(0)');
    });
  </script>
</body>

</html>