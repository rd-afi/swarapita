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
// if (isset($_SESSION['status']) && $_SESSION['status'] == 'login') { 
?>
<?php
$this->load->view('layout/navbar');
?>
<?php
// } else {
// $this->load->view('layout/navbar_masyarakat');
// } 
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Formulir Pendaftaran Relawan Swarapita</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url();?>">Home</a></li>
              <li class="breadcrumb-item"><a href="#"></a>Formulir Pendaftaran</li>
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
              <form action="<?php echo base_url(). 'general/add_relawan'; ?>" method="post" id="form_relawan">
              <div class="card-body">
                <div class="form-group">
                  <label for="nik">NIK</label>
                  <input type="text" class="form-control" name="nik" placeholder="Nomor Induk Kependudukan" maxlength="16" id="function_code_nik">
                  <div id="error-box"></div>
                  <!--<input type="number" class="form-control" name="nik" placeholder="Nomor Induk Kependudukan" pattern=".{16,16}" required
                  oninput="javascript: if (this.value.length > 16) this.value = this.value.slice(0, 16);
                  this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                  
                  <input type="text" class="form-control" name="nik" placeholder="Nomor Induk Kependudukan" pattern=".{16,16}" minlength="10" maxlength="16"
                  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);
                  this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" required> -->
                  </div>
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" name="nama" placeholder="Nama sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="tempat_lahir">Tempat Lahir</label>
                    <input type="text" class="form-control" name="tempat_lahir" placeholder="Tempat Lahir Sesuai KTP">
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
                    <input type="date" class="form-control" name="tanggal_lahir" min="1800-12-31" max="2007-12-31" required>
                  </div>
                  <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" name="alamat" placeholder="Alamat Sesuai KTP" required>
                  </div>
                  <div class="form-group">
                    <label for="rtrw">RT/RW</label>
                    <div class="row">
                      <div class="col-6">
                      <input type="text" class="form-control" name="rt" placeholder="RT" maxlength="2" id="function_code_rt">
                          <div id="error-box"></div>
                <!--
                        <input type="number" class="form-control" name="rt" placeholder="RT" pattern=".{0,3}" required
                        oninput="javascript: if (this.value.length > 3) this.value = this.value.slice(0, 3);
                        this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" max="31">
                  -->
                         
                      </div>
                      <div class="col-6">
                      <input type="text" class="form-control" name="rw" placeholder="RW" maxlength="2" id="function_code_rw" >
                      <div id="error-box"></div>
                   <!--
                      <input type="number" class="form-control" name="rw" placeholder="RW" pattern=".{0,3}" required
                        oninput="javascript: if (this.value.length > 3) this.value = this.value.slice(0, 3);
                        this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" max="31">
                      </div>
                    -->
                    </div>
                  </div>
                  <div class="form-group">
                    <!-- <label for="kelurahan">Provinsi</label>
                    <select class="data-array browser-default form-control" id="provinsi" name="provinsi" required></select> -->
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kota</label>
                    <select class="data-array browser-default form-control" id="kota" name="kota" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kecamatan</label>
                    <select class="data-array browser-default form-control" id="kecamatan" name="kecamatan" required></select>
                  </div>
                  <div class="form-group">
                    <label for="kelurahan">Kelurahan</label>
                    <select class="data-array browser-default form-control" id="kelurahan" name="kelurahan" required></select>
                  </div>
                  <div class="form-group">
                    <label for="hpwa">No. Handphone/WA</label>
                    <input type="text" class="form-control" name="hpwa" placeholder="628xxx" pattern=".{10,15}" required
                    oninput="javascript: if (this.value.length > 15) this.value = this.value.slice(0, 15);
                    this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');">
                    <!-- <input type="text" class="form-control" name="hpwa" placeholder="628xxx" minlength="10" maxlength="15" min="0" required
                    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);
                    this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"> -->
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
    var urlKota = "<?php echo base_url(). 'general/json_kota'; ?>";
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

        // var selectProv = $('#provinsi');
        // $(selectProv).change(function () {
        //     var value = $(selectProv).val();
        //     clearOptions('kota');

        //     if (value) {
        //         console.log("on change selectProv");

        //         var text = $('#provinsi :selected').text();
        //         console.log("value = " + value + " / " + "text = " + text);

        //         console.log('Load kota di '+text+'...')
        //         $.getJSON(urlkota + value, function(res) {
        //         // $.getJSON(urlkota + value + ".json", function(res) {

        //             res = $.map(res, function (obj) {
        //                 obj.text = obj.name
        //                 return obj;
        //             });

        //             data = [{
        //                 id: "",
        //                 name: "- Pilih Kota -",
        //                 text: "- Pilih Kota -"
        //             }].concat(res);

        //             //implemen data ke select provinsi
        //             $("#kota").select2({
        //                 dropdownAutoWidth: true,
        //                 width: '100%',
        //                 data: data
        //             })
        //         })
        //     }
        // });

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

        function showError (key) {
  var errBox = document.querySelector("#error-box");
  errBox.textContent = "The character " + key.toString() + " is not allowed!";
  //Dismiss the error
  window.setTimeout(function () {
      errBox.textContent = "";
  }, 10000)
}


document.getElementById("function_code_nik").onkeypress = function(e) {
var chr = String.fromCharCode(e.which);

if ("></\":*?|.,abcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=-><.,?/`~".indexOf(chr) >= 0){
  showError(chr)
   return false;
}
return true
};

document.getElementById("function_code_rt").onkeypress = function(e) {
var chr = String.fromCharCode(e.which);

if ("></\":*?|.,abcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=-><.,?/`~".indexOf(chr) >= 0){
  showError(chr)
   return false;
}
return true
};

document.getElementById("function_code_rw").onkeypress = function(e) {
var chr = String.fromCharCode(e.which);

if ("></\":*?|.,abcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=-><.,?/`~".indexOf(chr) >= 0){
  showError(chr)
   return false;
}
return true
};
</script>

</body>
</html>
