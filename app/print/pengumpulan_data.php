<?php
    include '../koneksi.php';
    $url= "http://$_SERVER[HTTP_HOST]/simkbs/";
    $sql_profil = "SELECT * FROM tabel_control WHERE id=1";
    $result_profil = $mysqli->query($sql_profil);
    $row_profil = $result_profil->fetch_object();
?>
<html>

<head>
    <title>Data Kependudukan</title>
    <style>
        @page {
            size: landscape;
        }

        body {
            font-family: 'Times New Roman', sans-serif;
        }

        .display-body {
            font-size: 10px;
            border: 1px solid black;
            width: 100%;
            border-collapse: collapse;
        }

        .display-body th {
            padding: 8px;
        }

        .display-body th,
        .display-body td {
            border: 1px solid black;
        }

        .display-header {
            margin-bottom: 1rem;
        }

        .display-header td {
            text-align: center;
        }

        .title-header {
            font-size: 1.2rem;
            font-weight: bold;
        }

        h4 {
            text-align: center;
        }

        .background-tr {
            background-color: silver;
        }
    </style>
</head>

<body>
    <table width="100%" class="display-header">
        <tr>
            <td>
                <img src="<?= $url; ?>dist/img/<?= $row_profil->logo_desa; ?>" alt="logo-kab" width="50">
            </td>
        </tr>
        <tr>
            <td>
                <span class="title-header">Kantor <?= $row_profil->nama_desa; ?></span><br>
                <small><?= $row_profil->alamat; ?></small>
            </td>
        </tr>
    </table>

    <h4>Pengumpulan Data</h4>

    <table width="100%" class="display-body">
        <thead>
            <tr>
                <th>Nama</th>
                <th>No. Hp</th>
                <th>Email</th>
                <th width="30%">Alamat</th>
                <th>Tanggal</th>
                <th width="30%">File</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($_GET['tanggal_awal'] != 'all' && $_GET['tanggal_akhir'] != 'all') {

                $sql = $mysqli->query("SELECT * FROM tabel_pengumpulan_data WHERE DATE(created_at) >= '$_GET[tanggal_awal]' AND DATE(created_at) <= '$_GET[tanggal_akhir]' ORDER BY id DESC");
        
            } else {
                $sql = $mysqli->query("SELECT * FROM tabel_pengumpulan_data ORDER BY id DESC");
            }

            while ($row = $sql->fetch_assoc()) {
            ?>
                    <tr align="center">
                        <td><?= $row['nama']; ?></td>
                        <td><?= $row['no_hp']; ?></td>
                        <td><?= $row['email']; ?></td>
                        <td><?= $row['alamat']; ?></td>
                        <td><?= date('F d, Y', strtotime($row['created_at'])); ?></td>
                        <td width="30%">
                            <img src="<?= $url; ?>dist/img/<?= $row['file'] ?>" alt="logo" width="40%">
                        </td>
                    </tr>
                <?php
            }
                ?>
        </tbody>
    </table>
    <script>
        window.print();
    </script>
</body>

</html>