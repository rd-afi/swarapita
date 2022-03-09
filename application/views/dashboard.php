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
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?php echo $c_kotbek ?></h3>

                <p>KOTA BEKASI</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="<?php echo base_url();?>moreinfo_bekasi" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?php echo $c_kotdep ?></h3>

                <p>KOTA DEPOK</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="<?php echo base_url();?>moreinfo_depok" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?php echo $c_kotbek + $c_kotdep ?></h3>

                <p>SEMUA RELAWAN TERDAFTAR</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- CHARTJS -->
          <div class="col-md-4">
              <!-- BAR CHART -->
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Bar Chart</h3>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
          </div>
          <!-- END CHARTJS -->
          <!-- CHARTJS -->
          <div class="col-md-4">
              <!-- BAR CHART -->
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Pie Chart</h3>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="pie_chart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
          </div>
          <!-- END CHARTJS -->
          <div class="col-lg-12 col-6">
            <!-- small box -->
              <div class="card mb-2">
                            <div class="card-body">
                                <div id="barchart_material" style="width: 900px; height: 400px;"></div>
                            </div>
          </div>

          <div class="col-lg-12 col-6">
            <!-- small box -->
              <div class="card mb-2">
                            <div class="card-body">
                                <div id="barchart_material2" style="width: 900px; height: 400px;"></div>
                            </div>
          </div>
          
          
          <!-- ./col -->
        </div>

        
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-7 connectedSortable">
            
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
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
  var pieData = {
    labels: [
      <?php
        if (count($chartData)>0) {
          foreach ($chartData as $data) {
            echo "'" .$data->kota ."',";
          }
        }
      ?>
    ],
    datasets: [
      {
        data: [
          <?php
            if (count($chartData)>0) {
              foreach ($chartData as $data) {
                echo "'" .$data->Total_Pemilih ."',";
              }
            }
          ?>
        ],
        backgroundColor : ['rgba(60,141,188,0.9)', 'rgba(210, 214, 222, 1)'],
      }
    ]
  }
  var pieChartCanvas = $('#pie_chart').get(0).getContext('2d')
  var barChartCanvas = $('#barChart').get(0).getContext('2d')
  var pieData        = pieData;
  var pieOptions     = {
    maintainAspectRatio : false,
    responsive : true,
    hoverOffset: 4,
    spacing: 4
  }
  var barOptions     = {
    maintainAspectRatio : false,
    responsive : true,
    hoverOffset: 4,
    legend: {
        display: false
    },
    scales: {
        yAxes: [{
            ticks: {
                beginAtZero:true
            }
        }]
    }
  }
  new Chart(pieChartCanvas, {
    type: 'pie',
    data: pieData,
    options: pieOptions
  })
  new Chart(barChartCanvas, {
    type: 'bar',
    data: pieData,
    options: barOptions
  })
</script>

<script type="text/javascript">
              google.charts.load('current', {'packages':['bar']});
              google.charts.setOnLoadCallback(drawChart);

              function drawChart() {
                var data = google.visualization.arrayToDataTable([
                  ['Kota', 'Total'],
                  <?php foreach($chartData as $row){ ?>
                    ['<?= $row->kota ?>',<?= $row->Total_Pemilih ?>],
                  <?php } ?>
                ]);

                var options = {
                  chart: {
                    title: 'Grafik Pemilih Kota Bekasi dan Depok',
                    subtitle: 'Grafik Total Relawan Bekasi dan Depok',
                  },
                  bars: 'vertical' // Required for Material Bar Charts.
                };

                var chart = new google.charts.Bar(document.getElementById('barchart_material'));

                chart.draw(data, google.charts.Bar.convertOptions(options));
              }
        </script>
<script type="text/javascript">
              google.charts.load('current', {'packages':['bar']});
              google.charts.setOnLoadCallback(drawChart);

              function drawChart() {
                var data = google.visualization.arrayToDataTable([
                  ['Kecamatan', 'Total'],
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
                  colors: ['#b52314']
                };

                var chart = new google.charts.Bar(document.getElementById('barchart_material2'));

                chart.draw(data, google.charts.Bar.convertOptions(options));
              }
        </script>

</body>
</html>
