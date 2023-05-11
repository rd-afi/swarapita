<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | List Relawan</title>
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
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-4">
                      <div class="form-group">
                        <label for="kelurahan">Kota</label>
                        <select class="data-array browser-default form-control" id="kota" name="kota" required></select>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="form-group">
                        <label for="kelurahan">Kecamatan</label>
                        <select class="data-array browser-default form-control" id="kecamatan" name="kecamatan" required></select>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="form-group">
                        <label for="kelurahan">Kelurahan</label>
                        <select class="data-array browser-default form-control" id="kelurahan" name="kelurahan" required></select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- </div> -->
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
                        <th>RT</th>
                        <th>RW</th>
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
                          <td><?php echo $u->kota ?></td>
                          <td><?php echo $u->rt ?></td>
                          <td><?php echo $u->rw ?></td>
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
    var urlKota = "<?php echo base_url(). 'general/json_kota/'; ?>";
    var urlKecamatan = "<?php echo base_url(). 'general/json_kec/'; ?>";
    var urlKelurahan = "<?php echo base_url(). 'general/json_kel/'; ?>";

        function clearOptions(id) {
            console.log("on clearOptions :" + id);

            //$('#' + id).val(null);
            $('#' + id).empty().trigger('change');
        }

        console.log('Load Kota...');
        $.getJSON(urlKota, function (res) {

            res = $.map(res, function (obj) {
                obj.id = obj.kota
                obj.text = obj.kota
                return obj;
            });

            data = [{
                id: "",
                name: "- Pilih Kota -",
                text: "- Pilih Kota -"
            }].concat(res);

            //implemen data ke select kota
            $("#kota").select2({
                dropdownAutoWidth: true,
                width: '100%',
                data: data
            })
        });

        var selectKab = $('#kota');
        $(selectKab).change(function () {
            var value = $(selectKab).val();
            clearOptions('kecamatan');

            if (value) {
                console.log("on change selectKab");

                var text = $('#kota :selected').text();
                console.log("value = " + value + " / " + "text = " + text);

                console.log('Load Kecamatan di '+text+'...')
                $.getJSON(urlKecamatan + value.replace(/\s+/g, ''), function(res) {
                // $.getJSON(urlKecamatan + value + ".json", function(res) {

                    res = $.map(res, function (obj) {
                        obj.id = obj.kecamatan
                        obj.text = obj.kecamatan
                        return obj;
                    });

                    data = [{
                        id: "",
                        name: "- Pilih Kecamatan -",
                        text: "- Pilih Kecamatan -"
                    }].concat(res);

                    //implemen data ke select provinsi
                    $("#kecamatan").select2({
                        dropdownAutoWidth: true,
                        width: '100%',
                        data: data
                    })
                })
            }
        });

        var selectKec = $('#kecamatan');
        $(selectKec).change(function () {
            var value = $(selectKec).val();
            clearOptions('kelurahan');

            if (value) {
                console.log("on change selectKec");

                var text = $('#kecamatan :selected').text();
                console.log("value = " + value + " / " + "text = " + text);

                console.log('Load Kelurahan di '+text+'...')
                $.getJSON(urlKelurahan + value.replace(/\s+/g, ''), function(res) {
                // $.getJSON(urlKelurahan + value + ".json", function(res) {

                    res = $.map(res, function (obj) {
                        obj.id = obj.kelurahan
                        obj.text = obj.kelurahan
                        return obj;
                    });

                    data = [{
                        id: "",
                        name: "- Pilih Kelurahan -",
                        text: "- Pilih Kelurahan -"
                    }].concat(res);

                    //implemen data ke select provinsi
                    $("#kelurahan").select2({
                        dropdownAutoWidth: true,
                        width: '100%',
                        data: data
                    })
                })
            }
        });

        var selectKel = $('#kelurahan');
        $(selectKel).change(function () {
            var value = $(selectKel).val();

            if (value) {
                console.log("on change selectKel");

                var text = $('#kelurahan :selected').text();
                console.log("value = " + value + " / " + "text = " + text);
            }
        });

</script>

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
          this.api().columns(6).every(function() {
            var column = this;
            var select = $("#kota")
              .on('change', function() {
                // var val = $.fn.dataTable.util.escapeRegex($( "#kota option:selected" ).text());
                var val = $( "#kota option:selected" ).text();
                // var val2 = $.fn.dataTable.util.escapeRegex($(this).val());
                var val2 = $(this).val();
                if (val2 == "") {
                  column.search("").draw();
                } else {
                  column.search(val ? '^' + val + '$' : '', true, false).draw();
                }
                console.log(val);
                console.log(val2);
              });
          });
          this.api().columns(7).every(function() {
            var column = this;
            var select = $("#kecamatan")
              .on('change', function() {
                // var val = $.fn.dataTable.util.escapeRegex($( "#kota option:selected" ).text());
                var val = $( "#kecamatan option:selected" ).text();
                // var val2 = $.fn.dataTable.util.escapeRegex($(this).val());
                var val2 = $(this).val();
                if (val2 == "") {
                  column.search("").draw();
                } else {
                  column.search(val ? '^' + val + '$' : '', true, false).draw();
                }
                console.log(val);
                console.log(val2);
              });
          });
          this.api().columns(8).every(function() {
            var column = this;
            var select = $("#kelurahan")
              .on('change', function() {
                // var val = $.fn.dataTable.util.escapeRegex($( "#kota option:selected" ).text());
                var val = $( "#kelurahan option:selected" ).text();
                // var val2 = $.fn.dataTable.util.escapeRegex($(this).val());
                var val2 = $(this).val();
                if (val2 == "") {
                  column.search("").draw();
                } else {
                  column.search(val ? '^' + val + '$' : '', true, false).draw();
                }
                console.log(val);
                console.log(val2);
              });
          });
        }
      }).buttons().container().appendTo('#list1_wrapper .col-md-6:eq(0)');
    });
  </script>
</body>

</html>