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
<#if message??>
    <script>
        alert("Пользователь с таким логином уже есть, попробуйте еще раз!")
    </script>
</#if>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <img src="/static/admin_panel_style/images/logo1.png" alt="logo">
                        </div>
                        <h4>New here?</h4>
                        <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
                        <form class="pt-3" action="/user/signup" method="post">
                            <div class="form-group">
                                <input name="name" type="text" pattern="[A-Za-zА-Яа-яЁё\s]+" title="Имя может содержать только буквы" minlength="4" maxlength="40" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Name" required>
                            </div>
                            <div class="form-group">
                                <input name="soname" type="text" pattern="[A-Za-zА-Яа-яЁё\s]+" title="Фамилия может содержать только буквы" minlength="4" maxlength="40" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Soname">
                            </div>
                            <div class="form-group">
                                <input name="login" type="text" pattern="[a-zA-Z0-9_]+" title="Логин может содержать только буквы, цифры и символы подчеркивания." minlength="4" maxlength="40" class="form-control form-control-lg" id="exampleInputUsername1" placeholder="Login" required>
                            </div>
                            <div class="form-group">
                                <input name="email" type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" title="Пароль должен содержать как минимум одну цифру, одну строчную и одну заглавную букву, и быть не менее 8 символов в длину. Пример: Password123" type="password" required="required" min="8" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="mt-3">
                                <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN UP</button>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                Already have an account? <a href="/login" class="text-primary">Login</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div><script src="/static/admin_panel_style/vendors/js/vendor.bundle.base.js"></script>
<script src="/static/admin_panel_style/js/off-canvas.js"></script>
<script src="/static/admin_panel_style/js/hoverable-collapse.js"></script>
<script src="/static/admin_panel_style/js/template.js"></script>
<script src="/static/admin_panel_style/js/settings.js"></script>
<script src="/static/admin_panel_style/js/todolist.js"></script>
</body>

</html>
