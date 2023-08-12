<?php error_reporting(0); include 'app/post/post_pengumpulan_data.php';  ?>
<?php error_reporting(0); include 'app/function/function_pengumpulan_data.php';  ?>
<?php $base_url = 'http://localhost/simkbs/'; ?>

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
                <h3><i class="nav-icon fas fa-users"></i> Pengumpulan Data</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item active">Pengumpulan Data</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <a href="<?= $base_url; ?>app/print/pengumpulan_data.php?tanggal_awal=<?= $_GET['tanggal_awal'] ?>&tanggal_akhir=<?= $_GET['tanggal_akhir'] ?>" target="_BLANK" class="btn btn-success">
                    <i class="fas fa-print"></i> Print
                </a>
                <div class="card mt-3">
                    <div class="card-header">
                        <h3 class="card-title">Filter Data</h3>
                    </div>
                    <form action="" method="post">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Tanggal Awal</label>
                                        <input type="date" name="tanggal_awal" value="<?= $_GET['tanggal_awal'] != 'all' ? $_GET['tanggal_awal'] : '' ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Tanggal Akhir</label>
                                        <input type="date" name="tanggal_akhir" value="<?= $_GET['tanggal_akhir'] != 'all' ? $_GET['tanggal_akhir'] : '' ?>" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-md-6">
                                    <a href="<?= $base_url; ?>admin-pengumpulan-data/all/all" class="btn btn-danger w-100">Reset</a>
                                </div>
                                <div class="col-md-6">
                                    <input type="submit" value="Filter Data" name="filter_data" class="btn btn-primary w-100" />
                                </div>
                            </div>
                            
                        </div>
                    </form>
                </div>
                <div class="card mt-3">
                    <div class="card-header">
                        <h3 class="card-title">Daftar Pengumpulan Data</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped example3" style="font-size: 14px;">
                                <thead>
                                    <tr>
                                        <th>Nama</th>
                                        <th>No. Hp</th>
                                        <th>Email</th>
                                        <th>Alamat</th>
                                        <th>Tanggal</th>
                                        <th>File</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                        tampil_data($mysqli, $base_url, $_GET['tanggal_awal'], $_GET['tanggal_akhir']);
                                    ?>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>