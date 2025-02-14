<?php 
    require_once
    ('../config.php') 
?>

<!DOCTYPE html>
<html lang="en" class="" style="height: auto">
    <?php require_once('inc/header.php') ?>

    <body class="hold-transition login-page">
        <script>
            start_loader()
        </script>

        <style>
            body {
                background-image: url("<?php echo validate_image($_settings->info('cover')) ?>");
                background-size: cover;
                background-repeat: no-repeat;
                backdrop-filter: contrast(1);
            }

            #page-title {
                color: black !important;
                font-size: 1.2em;
                font-weight: bold;
            }

            .logos {
                display: flex;
                align-items: center;
                flex-direction: column;
                height: 5%; 
            }

            .logos .logo-img {
                max-width: 100px;
                height: 100px !important;
                max-height: unset;
            }
        </style>

        <div class="login-box">
            <div class="card card-dark my-2">
                <div class="card-body">
                    <div class="logos">
                        <img src="<?php echo validate_image($_settings->info('logo'))?>" alt="Store Logo" class="brand-image img-circle elevation-3 logo-img" style="width:55%; height:100%">
                        <p class="text-center text-white px-1 py-2" id="page-title"><?php echo $_settings->info('name') ?></p>
                    </div>
                    <!-- <p class="login-box-msg">Please enter your credentials</p> -->
                    <form id="login-frm" action="" method="post">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="username" autofocus placeholder="Username" />
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="password" placeholder="Password" />
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mb-4">
                                <button type="submit" class="btn btn-primary btn-block"> Login</button>
                            </div>
                            <div class=" footer-login col-12 text-center">
                                <p>
                                    <span class="brand-text font-normal"><?php echo $_settings->info('short_name') ?></span>
                                    &copy; <?php echo date('Y'); ?>
                                </p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <!-- jQuery -->
        <script src="<?= base_url ?>plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="<?= base_url ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="<?= base_url ?>dist/js/adminlte.min.js"></script>

        <script>
            $(document).ready(function(){
              end_loader();
            })
        </script>

    </body>
</html>
