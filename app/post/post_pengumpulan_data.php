<?php
    include '../koneksi.php';
    include '../upload_img.php';
    $base_url = 'http://localhost/simkbs/';

    if (isset($_POST['simpan_data'])) {
        $nama = $_POST['nama'];
        $alamat = $_POST['alamat'];
        $no_handphone = $_POST['no_hp'];
        $email = $_POST['email'];
        
        $namaFile = $_FILES['gambar']['name'];
        $ukuranFile = $_FILES['gambar']['size'];
        $error = $_FILES['gambar']['error'];
        $tmpName = $_FILES['gambar']['tmp_name'];
        $file = $_FILES['file'];

        // cek apakah tidak ada gambar yang di upload
        if($error === 4) {
            echo "
                <script>
                    alert('pilih gambar terlebih dahulu.');

                </script>
            ";
            return false;
        }

        // cek apakah yang di upload gambar
        $extensifotoValid = ['jpg', 'jpeg', 'png','pdf'];
        $extensifoto = explode('.', $namaFile);
        $extensifoto = strtolower(end($extensifoto));
        if(!in_array($extensifoto, $extensifotoValid)) {
            echo "
                <script>
                    alert('yang anda upload bukan gambar atau pdf ber-extensi jpg/jpeg/png/pdf.');
                </script>
            ";
            return false;
        }

        // cek ukuran file gambar
        if($ukuranFile > 40943040) {
            echo "
                <script>
                    alert('ukuran gambar terlalu besar!');
                </script>
            ";
            return false;
        }
        // generate nama gambar baru
        $cakacakacak = uniqid(microtime(true));
        $namaFileBaru = $cakacakacak;
        $namaFileBaru .= '.';
        $namaFileBaru .= $extensifoto;

        // jika lolos pengecekan
        move_uploaded_file($tmpName, 'dist/img/' . $namaFileBaru);

        $sql = $mysqli->query("INSERT INTO tabel_pengumpulan_data (nama, alamat, no_hp, email, file) VALUES ('$nama','$alamat','$no_handphone','$email', '$namaFileBaru')");
    
        if ($sql) {
        ?>
            <script>
                alert('Data Berhasil Disimpan.');
                document.location.href = 'pengumpulan-data';
            </script>
        <?php
        }
    }

    if (isset($_POST['filter_data'])) {
        echo "
            <script>
                document.location.href = '".$base_url."admin-pengumpulan-data/".$_POST['tanggal_awal']."/".$_POST['tanggal_akhir']."';
            </script>
        ";
    }
?>