<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FoodDelivery | By Gurinovich</title>
    <link rel="stylesheet" href="/static/admin_panel_style/vendors/feather/feather.css">
    <link rel="stylesheet" href="/static/admin_panel_style/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/static/admin_panel_style/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/static/admin_panel_style/style.css">
    <link rel="shortcut icon" href="/static/admin_panel_style/images/logo1.png" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400&display=swap');
        *{
            font-family: 'Montserrat', serif !important;
        }
    </style>
</head>
<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <img src="/static/admin_panel_style/images/logo1.png" alt="logo">
                        </div>
                        <h4>Hello! let's get started</h4>
                        <h6 class="font-weight-light">Sign in to continue.</h6>
                        <form class="pt-3" action="/login" method="post">
                            <div class="form-group">
                                <input name="username" type="text" required="required" min="5" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" title="Пароль должен содержать как минимум одну цифру, одну строчную и одну заглавную букву, и быть не менее 8 символов в длину" type="password" required="required" min="8" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="mt-3">
                                <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                Don't have an account? <a href="/user/signup" class="text-primary">Create</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>>
</div>
<script src="/static/admin_panel_style/vendors/js/vendor.bundle.base.js"></script>
<script src="/static/admin_panel_style/js/off-canvas.js"></script>
<script src="/static/admin_panel_style/js/hoverable-collapse.js"></script>
<script src="/static/admin_panel_style/js/template.js"></script>
<script src="/static/admin_panel_style/js/settings.js"></script>
<script src="/static/admin_panel_style/js/todolist.js"></script>
</body>

</html>
