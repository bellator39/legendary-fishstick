<#include "securityCred.ftlh"/>
<#macro navbar pageName>
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="/static/main_style/img/logo3.png" alt=""></a>
    </div>
    <#if user??>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
    </#if>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="/static/main_style/img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Russian</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <#if user??>
                <form action="/logout" method="post">
                    <button style="border: none;background-color: transparent"><i class="fa fa-arrow-circle-o-right"></i> Logout</button>
                </form>
            <#else>
                <a href="/login"><i class="fa fa-user"></i> Login</a>
            </#if>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="<#if pageName=="Home">active</#if>"><a href="/">Home</a></li>
            <li <#if pageName=="Shop">active</#if>"><a href="./shop-grid.html">Shop</a></li>
            <li <#if pageName=="About Us">active</#if>">><a href="./blog.html">About us</a></li>
            <li <#if pageName=="Blog">active</#if>"><a href="./blog.html">Blog</a></li>
            <li <#if pageName=="Contact">active</#if>"><a href="/contact">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="facebook.com"><i class="fa fa-facebook"></i></a>
        <a href="twitter.com"><i class="fa fa-twitter"></i></a>
        <a href="linkedin.com"><i class="fa fa-linkedin"></i></a>
        <a href="pinterest.com"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> gurinovich_egor@gmail.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> <a href="mailto:gurinovich_egor@gmail.com">gurinovich_egor@gmail.com</a></li>
                            <li>Free Shipping for all Order of $99</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="facebook.com"><i class="fa fa-facebook"></i></a>
                            <a href="twitter.com"><i class="fa fa-twitter"></i></a>
                            <a href="linkedin.com"><i class="fa fa-linkedin"></i></a>
                            <a href="pinterest.com"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img src="/static/main_style/img/language.png" alt="">
                            <div>English</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">Russian</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <#if user??>
                                <form action="/logout" method="post">
                                    <button style="border: none;background-color: transparent"><i class="fa fa-arrow-circle-o-right"></i> Logout</button>
                                </form>
                            <#else>
                                <a href="/login"><i class="fa fa-user"></i> Login</a>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="/"><img src="/static/main_style/img/logo1.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="<#if pageName=="Home">active</#if>"><a href="/">Home</a></li>
                        <li class="<#if pageName=="Shop">active</#if>"><a href="./shop-grid.html">Shop</a></li>
                        <li class="<#if pageName=="About">active</#if>"><a href="./blog.html">About us</a></li>
                        <li class="<#if pageName=="Blog">active</#if>"><a href="./blog.html">Blog</a></li>
                        <li class="<#if pageName=="Contact">active</#if>"><a href="/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <#if user??>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </#if>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
</#macro>