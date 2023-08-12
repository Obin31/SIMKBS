 <!-- ======= Footer ======= -->
 <footer id="footer">


   <div class="container py-3">
     <div class="copyright pt-1">
       &copy; Copyright <strong><span>SIKBS</span></strong>. All Rights Reserved
     </div>
     <div class="credits  pt-1">
       <!-- All the links in the footer should remain intact. -->
       <!-- You can delete the links only if you purchased the pro version. -->
       <!-- Licensing information: https://bootstrapmade.com/license/ -->
       <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/ninestars-free-bootstrap-3-theme-for-creative/ -->
       <b>Versi</b> <a href="https://bootstrapmade.com/">1.0</a>
     </div>
   </div>
 </footer><!-- End Footer -->

 <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <!-- Vendor JS Files -->
 <script src="<?= $base_url; ?>plugins/jquery/jquery.min.js"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/aos/aos.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/glightbox/js/glightbox.min.js"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/isotope-layout/isotope.pkgd.min.js"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/php-email-form/validate.js"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/swiper/swiper-bundle.min.js"></script>
 <script src="<?= $base_url; ?>asset_user/vendor/slick/slick.min.js"></script>

 <!-- DataTables -->
 <script src="<?= $base_url; ?>plugins/datatables/jquery.dataTables.min.js"></script>
 <script src="<?= $base_url; ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
 <script src="<?= $base_url; ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
 <script src="<?= $base_url; ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

 <!-- Template Main JS File -->
 <script src="<?= $base_url; ?>asset_user/js/main.js"></script>

 <script>
  $(document).ready(function() {
    $('#carouselExampleControls').carousel({
    interval: 500,
    cycle: true
  }); 

   $("#example1").DataTable({
     "responsive": true,
     "autoWidth": false,
   });

   $("input[name=pencarian]:radio").click(function() {
     if ($('input[name=pencarian]:checked').val() == "rekomendasi") {
       $('.pencek').attr("Disabled", true);
     } else if ($('input[name=pencarian]:checked').val() == "penerima") {
       $('.pencek').attr("Disabled", false);
     }
   });
  });

  
 </script>

 </body>

 </html>