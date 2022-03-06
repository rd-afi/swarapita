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
if (isset($_SESSION['username']) && $_SESSION['username'] == 'admin') {
  $this->load->view('layout/navbar');
} else {
  $this->load->view('layout/navbar_masyarakat');
}
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
                <h3 class="card-title">Formulir Pendaftaran</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?php echo base_url(). 'general/add_relawan'; ?>" method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="nik">NIK</label>
                    <input type="number" class="form-control" name="nik" placeholder="Nomor Induk Kependudukan" minlength="16" maxlength="16"
                    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" required>
                  </div>
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" name="nama" placeholder="Nama sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="tempat_lahir">Tempat Lahir</label>
                    <input type="text" class="form-control" name="tempat_lahir" placeholder="Tempat Lahir Sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="jk">Jenis Kelamin</label>
                    <select class="custom-select form-control-border" name="jk" required>
                      <option value="1">Laki-Laki</option>
                      <option value="2">Perempuan</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Tanggal Lahir:</label>
                    <input type="date" class="form-control" name="tanggal_lahir" required>
                  </div>
                  <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" name="alamat" placeholder="Alamat Sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="rtrw">RT/RW</label>
                    <div class="row">
                      <div class="col-6">
                        <input type="number" class="form-control" name="rt" placeholder="RT" min="0"required>
                      </div>
                      <div class="col-6">
                        <input type="number" class="form-control" name="rw" placeholder="RW" min="0" required>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Provinsi</label>
                    <select class="data-array browser-default form-control" id="provinsi" name="provinsi" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kabupaten</label>
                    <select class="data-array browser-default form-control" id="kabupaten" name="kabupaten" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kecamatan</label>
                    <select class="data-array browser-default form-control" id="kecamatan" name="kecamatan" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kelurahan</label>
                    <select class="data-array browser-default form-control" id="kelurahan" name="kelurahan" required></select>
                  </div>

                  <!-- <div class="form-group">
                    <label for="kelurahan">Kelurahan/Desa</label>
                    <input type="text" class="form-control" name="kelurahan" placeholder="Kelurahan/Desa Sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="kecamatan">Kecamatan</label>
                    <input type="text" class="form-control" name="kecamatan" placeholder="Kecamatan Sesuai KTP" required>
                  </div> -->
                  <div class="form-group">
                    <label for="hpwa">No. Handphone/WA</label>
                    <input type="number" class="form-control" name="hpwa" placeholder="628xxx" minlength="10" maxlength="15" min="0" required
                    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                  </div>
                  <div class="form-group">
                    <label for="as_koor">Bersedia menjadi kordinator desa/kelurahan dan menjadi rumah sebagai posko pendaftaran relawan</label>
                    <select class="custom-select form-control-border" name="as_koor" required>
                      <option value="1">Ya</option>
                      <option value="0">Tidak</option>
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
        var urlProvinsi = "<?php echo base_url(). 'general/json_prov'; ?>";
        var urlKabupaten = "<?php echo base_url(). 'general/json_kota/'; ?>";
        var urlKecamatan = "<?php echo base_url(). 'general/json_kel/'; ?>";
        var urlKelurahan = "<?php echo base_url(). 'general/json_des/'; ?>";

        function clearOptions(id) {
            console.log("on clearOptions :" + id);

            //$('#' + id).val(null);
            $('#' + id).empty().trigger('change');
        }

        console.log('Load Provinsi...');
        $.getJSON(urlProvinsi, function (res) {

            res = $.map(res, function (obj) {
                obj.text = obj.name
                return obj;
            });

            data = [{
                id: "",
                name: "- Pilih Provinsi -",
                text: "- Pilih Provinsi -"
            }].concat(res);

            //implemen data ke select provinsi
            $("#provinsi").select2({
                dropdownAutoWidth: true,
                width: '100%',
                data: data
            })
        });

        var selectProv = $('#provinsi');
        $(selectProv).change(function () {
            var value = $(selectProv).val();
            clearOptions('kabupaten');

            if (value) {
                console.log("on change selectProv");

                var text = $('#provinsi :selected').text();
                console.log("value = " + value + " / " + "text = " + text);

                console.log('Load Kabupaten di '+text+'...')
                $.getJSON(urlKabupaten + value, function(res) {
                // $.getJSON(urlKabupaten + value + ".json", function(res) {

                    res = $.map(res, function (obj) {
                        obj.text = obj.name
                        return obj;
                    });

                    data = [{
                        id: "",
                        name: "- Pilih Kabupaten -",
                        text: "- Pilih Kabupaten -"
                    }].concat(res);

                    //implemen data ke select provinsi
                    $("#kabupaten").select2({
                        dropdownAutoWidth: true,
                        width: '100%',
                        data: data
                    })
                })
            }
        });

        var selectKab = $('#kabupaten');
        $(selectKab).change(function () {
            var value = $(selectKab).val();
            clearOptions('kecamatan');

            if (value) {
                console.log("on change selectKab");

                var text = $('#kabupaten :selected').text();
                console.log("value = " + value + " / " + "text = " + text);

                console.log('Load Kecamatan di '+text+'...')
                $.getJSON(urlKecamatan + value, function(res) {
                // $.getJSON(urlKecamatan + value + ".json", function(res) {

                    res = $.map(res, function (obj) {
                        obj.text = obj.name
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
                $.getJSON(urlKelurahan + value, function(res) {
                // $.getJSON(urlKelurahan + value + ".json", function(res) {

                    res = $.map(res, function (obj) {
                        obj.text = obj.name
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

</body>
</html>
