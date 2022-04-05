<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<?php
$this->load->view('layout/head');
?>
<title>SWARAPITA | Bekasi</title>
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
            <h1 class="m-0">Dashboard</h1>
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
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-12 col-6">
            <!-- small box -->
              <div class="card mb-2">
                            <div class="card-body">
                                <div id="barchart_material" style="width: 900px; height: 400px;"></div>
                            </div>
          </div>
        <!-- /.row -->
        <!-- Main row -->
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
        <div class="col-lg-6 col-6">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Kecamatan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="list1" class="table display table-bordered table-striped nowrap" data-export-title="List Account Swarapita">
                <thead>
                  <tr>
                    <!-- <th>No</th> -->
                    <th>Kecamatan</th>
                    <th>Total Pemilih</th>
                    <th>Total Relawan</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($bekasi_kec as $city){ 
                    ?>
                    <tr>
                        <!-- <td><?php echo $no++ ?></td> -->
                        <td><?php echo $city->kecamatan ?></td>
                        <td><?php echo $city->total_pemilih ?> suara</td>               
                        <td><?php echo $city->total_relawan ?> relawan</td>               
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-lg-6 col-6">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Kelurahan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="list2" class="table display table-bordered table-striped nowrap" data-export-title="List Account Swarapita">
                <thead>
                  <tr>
                    <!-- <th>No</th> -->
                    <th>Kelurahan</th>
                    <th>Total Pemilih</th>
                    <th>Total Relawan</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $no = 1;
                    foreach($bekasi_kel as $city){ 
                    ?>
                    <tr>
                        <!-- <td><?php echo $no++ ?></td> -->
                        <td><?php echo $city->kelurahan ?></td>
                        <td><?php echo $city->total_pemilih ?> suara</td>               
                        <td><?php echo $city->total_relawan ?> relawan</td>               
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
        <!-- /.col -->
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
</script>
<script type="text/javascript">
  $(function () {
    $("#list1").DataTable({
      "autoWidth": false, "scrollX": true, "paging": false,
      "buttons": [
        {
          extend: 'excelHtml5',
          title: "List Kecamatan Bekasi",
          filename: "List Kecamatan Bekasi"
        },{
          extend: 'csvHtml5',
          title: "List Kecamatan Bekasi",
          filename: "List Kecamatan Bekasi"
        },{
          extend: 'pdfHtml5',
          title: "List Kecamatan Bekasi",
          filename: "List Kecamatan Bekasi"
        }
      ],
      "fixedColumns": { right: 1 }
    }).buttons().container().appendTo('#list1_wrapper .col-md-6:eq(0)');
    $("#list2").DataTable({
      "autoWidth": false, "scrollX": true, "paging": false,
      "buttons": [
        {
          extend: 'excelHtml5',
          title: "List Kelurahan Bekasi",
          filename: "List Kelurahan Bekasi"
        },{
          extend: 'csvHtml5',
          title: "List Kelurahan Bekasi",
          filename: "List Kelurahan Bekasi"
        },{
          extend: 'pdfHtml5',
          title: "List Kelurahan Bekasi",
          filename: "List Kelurahan Bekasi"
        }
      ],
      "fixedColumns": { right: 1 }
    }).buttons().container().appendTo('#list2_wrapper .col-md-6:eq(0)');
  });
              google.charts.load('current', {'packages':['bar']});
              google.charts.setOnLoadCallback(drawChart);

              function drawChart() {
                var data = google.visualization.arrayToDataTable([
                  ['Kecamatan', 'Total Relawan'],
                  <?php foreach($BekasiChartData as $row){ ?>
                    ['<?= $row->kecamatan ?>',<?= $row->Total_Pemilih ?>],
                  <?php } ?>
                ]);

                var options = {
                  chart: {
                    title: 'Grafik Pemilih Kota Bekasi',
                    subtitle: 'Grafik Total Relawan Bekasi',
                  },
                  bars: 'vertical', // Required for Material Bar Charts.
                  colors: ['#b52314'],
                  opacity:'0.2'
                };

                var chart = new google.charts.Bar(document.getElementById('barchart_material'));

                chart.draw(data, google.charts.Bar.convertOptions(options));
              }
        </script>

</body>
</html>
