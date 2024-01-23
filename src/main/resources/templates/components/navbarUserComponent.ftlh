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
                <li><a href="/order/user/${currentUserId}"><i class="fa fa-heart"></i> <span>${orderServiceApi.getAllByUser(currentUserId)?size}</span></a></li>
                <li><a href="/cart/user/${cartId}"><i class="fa fa-shopping-bag"></i> <span>${cartProductService.countProductsInCart(cartId)}</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$${cartProductService.calculateTotalPriceInCart(cartId)}</span></div>
        </div>
    </#if>
    <div class="humberger__menu__widget">

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
            <li class="<#if pageName=="Shop">active</#if>"><a href="/product/all">Shop</a></li>
            <li class="<#if pageName=="About Us">active</#if>">><a href="/about">About us</a></li>
            <li class="<#if pageName=="Blog">active</#if>"><a href="/blog/all">Blog</a></li>
            <li class="<#if pageName=="Contact">active</#if>"><a href="/contact">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
        <a href="www.twitter.com"><i class="fa fa-twitter"></i></a>
        <a href="www.linkedin.com"><i class="fa fa-linkedin"></i></a>
        <a href="www.pinterest.com"><i class="fa fa-pinterest-p"></i></a>
        <#if admin==true>
            <a href="/admin/dashboard" style="border: none;background-color: transparent"><i class="fa fa-lock"></i> Admin</a>
        </#if>
        <#if moderator==true>
            <a href="/admin/dashboard" style="border: none;background-color: transparent"><i class="fa fa-lock"></i> Moderator</a>
        </#if>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> gurinovich_egor@gmail.com</li>
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
                         </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
                            <a href="www.twitter.com"><i class="fa fa-twitter"></i></a>
                            <a href="www.linkedin.com"><i class="fa fa-linkedin"></i></a>
                            <a href="www.pinterest.com"><i class="fa fa-pinterest-p"></i></a>
                            <#if admin==true>
                                <a href="/admin/dashboard" style="border: none;background-color: transparent"><i class="fa fa-lock"></i> Admin</a>
                            </#if>
                            <#if moderator==true>
                                <a href="/admin/dashboard" style="border: none;background-color: transparent"><i class="fa fa-lock"></i> Moderator</a>
                            </#if>
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
                        <li class="<#if pageName=="Shop">active</#if>"><a href="/product/all">Shop</a></li>
                        <li class="<#if pageName=="About">active</#if>"><a href="/about">About us</a></li>
                        <li class="<#if pageName=="Blog">active</#if>"><a href="/blog/all">Blog</a></li>
                        <li class="<#if pageName=="Contact">active</#if>"><a href="/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <#if user??>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="/order/user/${currentUserId}"><i class="fa fa-heart"></i> <span>${orderServiceApi.getAllByUser(currentUserId)?size}</span></a></li>
                            <li><a href="/cart/user/${cartId}"><i class="fa fa-shopping-bag"></i> <span>${cartProductService.countProductsInCart(cartId)}</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$${cartProductService.calculateTotalPriceInCart(cartId)}</span></div>
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