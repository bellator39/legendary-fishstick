<#import "navbarAdminComponent.ftlh" as navbar>

<#macro page pageName>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>FoodDelivery | By Gurinovich</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/feather/feather.css">
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/ti-icons/css/themify-icons.css">
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/mdi/css/materialdesignicons.min.css">

        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <link rel="stylesheet" href="/static/admin_panel_style/vendors/ti-icons/css/themify-icons.css">
        <link rel="stylesheet" type="text/css" href="/static/admin_panel_style/js/select.dataTables.min.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="/static/admin_panel_style/style.css">
        <!-- endinject -->
        <link rel="icon" type="image/x-icon" href="/static/main_style/img/favicon.png"/>
    </head>
    <body>
    <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="/static/main_style/img/logo1.png" class="mr-2" alt="logo"/></a>
                <a class="navbar-brand brand-logo-mini" href="index.html"><img src="/static/main_style/img/logo3.png" alt="logo"/></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="icon-menu"></span>
                </button>
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item nav-profile dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                            <i class="mdi mdi-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item" href="/">
                                <i class="ti-home text-primary"></i>
                                Home
                            </a>
                            <a class="dropdown-item" href="">
                                <i class="ti-power-off text-primary"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="icon-menu"></span>
                </button>
            </div>
        </nav>
         <div class="container-fluid page-body-wrapper">
             <@navbar.navbar pageName=pageName></@navbar.navbar>
             <div class="main-panel">
                    <#nested>
             </div>
        </div>
    </div>
    <!-- container-scroller -->

    <!-- plugins:js -->
    <script src="/static/admin_panel_style/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/static/admin_panel_style/vendors/chart.js/Chart.min.js"></script>
    <script src="/static/admin_panel_style/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="/static/admin_panel_style/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="/static/admin_panel_style/js/dataTables.select.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/static/admin_panel_style/js/off-canvas.js"></script>
    <script src="/static/admin_panel_style/js/hoverable-collapse.js"></script>
    <script src="/static/admin_panel_style/js/template.js"></script>
    <script src="/static/admin_panel_style/js/settings.js"></script>
    <script src="/static/admin_panel_style/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="/static/admin_panel_style/js/dashboard.js"></script>
    <script src="/static/admin_panel_style/js/Chart.roundedBarCharts.js"></script>
    <!-- End custom js for this page-->

</#macro>