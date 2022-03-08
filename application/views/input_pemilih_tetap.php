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
            <h1 class="m-0"> Upload Data Pemilih Tetap</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Upload Data Pemilih Tetap</a></li>
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
                <form method="post" action="<?php echo base_url('dashboard/importExcel') ?>" enctype="multipart/form-data">
                    <a href="Format.xlsx">Download Format</a>  | 
                    <a href="index.php">Kembali</a>
                    <br><br>
                    <input type="file" name="file">
                    <button type="submit" name="preview">Preview</button>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        <div class="row">
          <div class="col-lg-12 col-6">
          <div class="card">
              <!-- <div class="card-header">
                <h3 class="card-title">List Relawan</h3>
              </div> -->
              <!-- /.card-header -->
              <div class="card-body">
              <?php
                // Jika user telah mengklik tombol Preview
                if (isset($_POST['preview'])) {
                    $tgl_sekarang = date('YmdHis'); // Ini akan mengambil waktu sekarang dengan format yyyymmddHHiiss
                    $nama_file_baru = 'data' . $tgl_sekarang . '.xlsx';
                    // Cek apakah terdapat file data.xlsx pada folder tmp
                    if (is_file('tmp/' . $nama_file_baru)) // Jika file tersebut ada
                        unlink('tmp/' . $nama_file_baru); // Hapus file tersebut
                    $ext = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION); // Ambil ekstensi filenya apa
                    $tmp_file = $_FILES['file']['tmp_name'];
                    // Cek apakah file yang diupload adalah file Excel 2007 (.xlsx)
                    if ($ext == "xlsx") {
                        // Upload file yang dipilih ke folder tmp
                        // dan rename file tersebut menjadi data{tglsekarang}.xlsx
                        // {tglsekarang} diganti jadi tanggal sekarang dengan format yyyymmddHHiiss
                        // Contoh nama file setelah di rename : data20210814192500.xlsx
                        move_uploaded_file($tmp_file, 'tmp/' . $nama_file_baru);
                        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
                        $spreadsheet = $reader->load('tmp/' . $nama_file_baru); // Load file yang tadi diupload ke folder tmp
                        $sheet = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
                        // Buat sebuah tag form untuk proses import data ke database
                        echo "<form method='post' action='import.php'>";
                        // Disini kita buat input type hidden yg isinya adalah nama file excel yg diupload
                        // ini tujuannya agar ketika import, kita memilih file yang tepat (sesuai yg diupload)
                        echo "<input type='hidden' name='namafile' value='" . $nama_file_baru . "'>";
                        // Buat sebuah div untuk alert validasi kosong
                        echo "<div id='kosong' style='color: red;margin-bottom: 10px;'>
                      Semua data belum diisi, Ada <span id='jumlah_kosong'></span> data yang belum diisi.
                            </div>";
                        echo "<table border='1' cellpadding='5'>
                      <tr>
                        <th colspan='5' class='text-center'>Preview Data</th>
                      </tr>
                      <tr>
                        <th>NIS</th>
                        <th>Nama</th>
                        <th>Jenis Kelamin</th>
                        <th>Telepon</th>
                        <th>Alamat</th>
                      </tr>";
                        $numrow = 1;
                        $kosong = 0;
                        foreach ($sheet as $row) { // Lakukan perulangan dari data yang ada di excel
                            // Ambil data pada excel sesuai Kolom
                            $nis = $row['A']; // Ambil data NIS
                            $nama = $row['B']; // Ambil data nama
                            $jenis_kelamin = $row['C']; // Ambil data jenis kelamin
                            $telp = $row['D']; // Ambil data telepon
                            $alamat = $row['E']; // Ambil data alamat
                            // Cek jika semua data tidak diisi
                            if ($nis == "" && $nama == "" && $jenis_kelamin == "" && $telp == "" && $alamat == "")
                                continue; // Lewat data pada baris ini (masuk ke looping selanjutnya / baris selanjutnya)
                            // Cek $numrow apakah lebih dari 1
                            // Artinya karena baris pertama adalah nama-nama kolom
                            // Jadi dilewat saja, tidak usah diimport
                            if ($numrow > 1) {
                                // Validasi apakah semua data telah diisi
                                $nis_td = (!empty($nis)) ? "" : " style='background: #E07171;'"; // Jika NIS kosong, beri warna merah
                                $nama_td = (!empty($nama)) ? "" : " style='background: #E07171;'"; // Jika Nama kosong, beri warna merah
                                $jk_td = (!empty($jenis_kelamin)) ? "" : " style='background: #E07171;'"; // Jika Jenis Kelamin kosong, beri warna merah
                                $telp_td = (!empty($telp)) ? "" : " style='background: #E07171;'"; // Jika Telepon kosong, beri warna merah
                                $alamat_td = (!empty($alamat)) ? "" : " style='background: #E07171;'"; // Jika Alamat kosong, beri warna merah
                                // Jika salah satu data ada yang kosong
                                if ($nis == "" or $nama == "" or $jenis_kelamin == "" or $telp == "" or $alamat == "") {
                                    $kosong++; // Tambah 1 variabel $kosong
                                }
                                echo "<tr>";
                                echo "<td" . $nis_td . ">" . $nis . "</td>";
                                echo "<td" . $nama_td . ">" . $nama . "</td>";
                                echo "<td" . $jk_td . ">" . $jenis_kelamin . "</td>";
                                echo "<td" . $telp_td . ">" . $telp . "</td>";
                                echo "<td" . $alamat_td . ">" . $alamat . "</td>";
                                echo "</tr>";
                            }
                            $numrow++; // Tambah 1 setiap kali looping
                        }
                        echo "</table>";
                        // Cek apakah variabel kosong lebih dari 0
                        // Jika lebih dari 0, berarti ada data yang masih kosong
                        if ($kosong > 0) {
                ?>
                            <script>
                                $(document).ready(function() {
                                    // Ubah isi dari tag span dengan id jumlah_kosong dengan isi dari variabel kosong
                                    $("#jumlah_kosong").html('<?php echo $kosong; ?>');
                                    $("#kosong").show(); // Munculkan alert validasi kosong
                                });
                            </script>
                <?php
                        } else { // Jika semua data sudah diisi
                            echo "<hr>";
                            // Buat sebuah tombol untuk mengimport data ke database
                            echo "<button type='submit' name='import'>Import</button>";
                        }
                        echo "</form>";
                    } else { // Jika file yang diupload bukan File Excel 2007 (.xlsx)
                        // Munculkan pesan validasi
                        echo "<div style='color: red;margin-bottom: 10px;'>
                      Hanya File Excel 2007 (.xlsx) yang diperbolehkan
                            </div>";
                    }
                }
                ?>
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
</script>

</body>
</html>