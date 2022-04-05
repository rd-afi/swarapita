<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | Edit Data Relawan</title>
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
                  <h3 class="card-title">Edit Relawan</h3>
                <?php } else { ?>
                  <h3 class="card-title">Formulir Pendaftaran</h3>
                <?php } ?>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?php echo base_url(). 'update_relawan'; ?>" method="post">
              <?php foreach($relawan as $u){ ?>
              <div class="card-body">
                <div class="form-group">
                  <label for="nik">NIK</label>
                  <input type="number" class="form-control" name="nik" placeholder="Nomor Induk Kependudukan" minlength="16" maxlength="16"
                  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required
                    <?php echo (isset($relawan)) ? 'value ="'.$u->nik.'" readonly' : NULL ; ?>
                    >
                  </div>
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" name="nama" placeholder="Nama sesuai KTP" required
                    value="<?php echo (isset($relawan)) ? $u->nama : NULL ; ?>">
                  </div>
                  <div class="form-group">
                    <label for="tempat_lahir">Tempat Lahir</label>
                    <input type="text" class="form-control" name="tempat_lahir" placeholder="Tempat Lahir Sesuai KTP"
                    value="<?php echo (isset($relawan)) ? $u->tempat_lahir : NULL ; ?>">
                  </div>
                  <div class="form-group">
                    <label for="jk">Jenis Kelamin</label>
                    <select class="custom-select form-control-border" name="jk" required>
                      <option value="1" <?php echo (isset($relawan) && $u->jk == '1') ? 'selected' : NULL ; ?>>Laki-Laki</option>
                      <option value="2" <?php echo (isset($relawan) && $u->jk == '2') ? 'selected' : NULL ; ?>>Perempuan</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Tanggal Lahir:</label>
                    <input type="date" class="form-control" name="tanggal_lahir" required
                    value="<?php echo (isset($relawan)) ? $u->tgl_lahir : NULL ; ?>">
                  </div>
                  <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" name="alamat" placeholder="Alamat Sesuai KTP" required
                    value="<?php echo (isset($relawan)) ? $u->alamat : NULL ; ?>">
                  </div>
                  <div class="form-group">
                    <label for="rtrw">RT/RW</label>
                    <div class="row">
                      <div class="col-6">
                        <input type="number" class="form-control" name="rt" placeholder="RT" min="0"required
                        value="<?php echo (isset($relawan)) ? $u->rt : NULL ; ?>">
                      </div>
                      <div class="col-6">
                        <input type="number" class="form-control" name="rw" placeholder="RW" min="0" required
                        value="<?php echo (isset($relawan)) ? $u->rw : NULL ; ?>">
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <!-- <label for="kelurahan">Provinsi</label>
                    <?php echo '<input type="text" value="'.$u->provinsi.'" name="ed_prov" id="ed_prov" hidden>'?>
                    <select class="data-array browser-default form-control" id="provinsi" name="provinsi" required></select> -->
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kota</label>
                    <?php echo '<input type="text" value="'.$u->kota.'" name="ed_kota" id="ed_kota" hidden>'?>
                    <select class="data-array browser-default form-control" id="kota" name="kota" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kecamatan</label>
                    <?php echo '<input type="text" value="'.$u->kecamatan.'" name="ed_kec" id="ed_kec" hidden>'?>
                    <select class="data-array browser-default form-control" id="kecamatan" name="kecamatan" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kelurahan</label>
                    <?php echo '<input type="text" value="'.$u->kelurahan.'" name="ed_kel" id="ed_kel" hidden>'?>
                    <select class="data-array browser-default form-control" id="kelurahan" name="kelurahan" required></select>
                  </div>
                  <div class="form-group">
                    <label for="hpwa">No. Handphone/WA</label>
                    <input type="number" class="form-control" name="hpwa" placeholder="628xxx" minlength="10" maxlength="15" min="0" required
                    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                    value="<?php echo (isset($relawan)) ? $u->hpwa : NULL ; ?>">
                  </div>
                  <div class="form-group">
                    <label for="as_koor">Bersedia menjadi kordinator desa/kelurahan dan menjadi rumah sebagai posko pendaftaran relawan</label>
                    <select class="custom-select form-control-border" name="as_koor" required>
                      <option value="1" <?php echo (isset($relawan) && $u->as_koor == '1') ? 'selected' : NULL ; ?>>Ya</option>
                      <option value="0" <?php echo (isset($relawan) && $u->as_koor == '0') ? 'selected' : NULL ; ?>>Tidak</option>
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

<script>
    // var urlProvinsi = "<?php echo base_url(). 'general/json_prov'; ?>";
    var urlKota = "<?php echo base_url(). 'general/json_kota/'; ?>";
    var urlKecamatan = "<?php echo base_url(). 'general/json_kec/'; ?>";
    var urlKelurahan = "<?php echo base_url(). 'general/json_kel/'; ?>";

    // var ed_prov = document.getElementById("ed_prov").value;
    var ed_kota = document.getElementById("ed_kota").value;
    var ed_kec = document.getElementById("ed_kec").value;
    var ed_kel = document.getElementById("ed_kel").value;
    $("document").ready(function() {
        // setTimeout(function() {
        //     $("ul.galleria li:first-child img").trigger('click');
        // },10);
        // alert(ed_prov)
        // $('#provinsi').select2().select2('val', 32).trigger('change');
        // $("#provinsi").select2().val(32).trigger('change.select2');
        // $("#kota").val(ed_kota).trigger('change');
        // $("#provinsi").val(ed_prov).trigger('change');
        // $('#provinsi').val("32").select2().trigger('change');
        // var $newOption = $("<option selected='selected'></option>").val("32").text("JAWA BARAT")
        // $("#provinsi").append($newOption).trigger('change');
        // $('#provinsi').val('1');
        // $('#provinsi').trigger('change');
        // $('#kota').val(ed_kota);
        // $('#kota').trigger('change');
    });

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
            $('#kota').val(ed_kota);
            $('#kota').trigger('change');
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
                    if (ed_kec) {
                      $('#kecamatan').val(ed_kec);
                      $('#kecamatan').trigger('change');
                    }
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
                    if (ed_kel) {
                      $('#kelurahan').val(ed_kel);
                      $('#kelurahan').trigger('change');
                    }
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

</body>
</html>
