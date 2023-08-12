<?php error_reporting(0); include 'app/post/post_pengumpulan_data.php';  ?>

<main id="main" style="min-height: 629px;">
    <div class="pt-3 pb-5">
        <div class="container">
            <div class="row gy-4">
                <form method="POST" enctype='multipart/form-data' action="" class="col-lg-12 order-2 order-lg-1 d-flex flex-column justify-content-center">
            
                    <h1>Pengumpulan Data</h1>
                    <p style="text-align: justify;">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis accumsan pharetra neque vel iaculis. Phasellus semper rutrum magna quis facilisis. Nunc vel orci id lectus molestie lacinia. Duis libero ante, tempus non eros et, consequat finibus diam. Donec consequat purus et eros efficitur fringilla. In vulputate nunc ac arcu iaculis, at vestibulum urna sollicitudin. Mauris posuere lorem diam, pharetra volutpat mauris bibendum in. Donec a lorem non nisi dictum hendrerit. Quisque in augue fringilla, aliquam libero eu, vulputate ipsum. In bibendum ex in massa gravida, id cursus metus vulputate. Vestibulum tincidunt mauris nibh, quis euismod ex vestibulum sit amet. Etiam non velit mi. Nullam sit amet dolor sit amet orci pharetra aliquet.
                    </p><br>

                    <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Nama</label>
                            <input type="text" class="form-control" name="nama" id="exampleFormControlInput1" placeholder="Nama" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Alamat</label>
                        <textarea type="text" class="form-control" name="alamat" id="exampleFormControlTextarea1" rows="3" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">No. Handphone</label>
                        <input type="number" class="form-control" name="no_hp" id="exampleFormControlInput1" placeholder="Handphone" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" id="exampleFormControlInput1" placeholder="Email" required>
                    </div>
                    <div class="form-group ">
                            <label for="formFile" class="form-label"></label>
                            <input type="file" name="gambar" id="logo" class="form-control" required>
                    <div>
                        <!-- tombol Lihat Daftar Penerima bantuan -->
                        <input type="submit" name="simpan_data" class="btn btn-primary mt-4" value="Simpan" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
