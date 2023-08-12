<?php
function tampil_data($mysqli, $base_url, $tanggal_awal, $tanggal_akhir)
{
    if ($tanggal_awal != 'all' && $tanggal_akhir != 'all') {

        $sql = $mysqli->query("SELECT * FROM tabel_pengumpulan_data WHERE DATE(created_at) >= '$tanggal_awal' AND DATE(created_at) <= '$tanggal_akhir' ORDER BY id DESC");

    } else {
        $sql = $mysqli->query("SELECT * FROM tabel_pengumpulan_data ORDER BY id DESC");
    }
    

    while ($row = $sql->fetch_assoc()) {
?>
        <tr>
            <td><?= $row['nama']; ?></td>
            <td><?= $row['no_hp']; ?></td>
            <td><?= $row['email']; ?></td>
            <td><?= $row['alamat']; ?></td>
            <td><?= date('F d, Y', strtotime($row['created_at'])) ?></td>
            <td width="20%">
                <img src="<?= $base_url; ?>dist/img/<?= $row['file'] ?>" alt="logo" width="50%">
            </td>
            
        </tr>
<?php
    }
}
?>