<#import "navbarUserComponent.ftlh" as navbar>

<#macro page pageName>
    <html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>FoodDelivery | By Gurinovich</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="/static/main_style/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="/static/main_style/css/style.css" type="text/css">
    </head>

    <body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
   <@navbar.navbar pageName=pageName></@navbar.navbar>
    <#nested/>

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="/"><img src="/static/main_style/img/logo3.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: Minsk</li>
                            <li>Phone: +375 29 828 13 14</li>
                            <li>Email: gurinovich_egor@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="./aboutus.html">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="/contact">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="/contact">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/static/main_style/js/jquery-3.3.1.min.js"></script>
    <script src="/static/main_style/js/bootstrap.min.js"></script>
    <script src="/static/main_style/js/jquery.nice-select.min.js"></script>
    <script src="/static/main_style/js/jquery-ui.min.js"></script>
    <script src="/static/main_style/js/jquery.slicknav.js"></script>
    <script src="/static/main_style/js/mixitup.min.js"></script>
    <script src="/static/main_style/js/owl.carousel.min.js"></script>
    <script src="/static/main_style/js/main.js"></script>



    </body>

    </html>
</#macro>