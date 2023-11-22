<#import "components/commonUserComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>

<@commonPage.page pageName="Shop">
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <#if categoryList??>
                                <#list categoryList as catList>
                                    <li><a href="/product/category/${catList.id}">${catList.name}</a></li>
                                </#list>
                            </#if>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="/product/byname" method="post">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" name="name" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5><a href="tel:375298281234">+375 29 828 12 34</a></h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="/static/main_style/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                            <tr>
                                <th class="shoping__product">Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <#if cartList?? && cartList?size gt 0>
                                <#list cartList as cart>
                                    <tr>
                                        <td class="shoping__cart__item">
                                            <img width="100" height="100" src="${cart.product.photoUrl}" alt="">
                                            <h5>${cart.product.name}</h5>
                                        </td>
                                        <td class="shoping__cart__price">
                                            $${cart.product.price}
                                        </td>
                                        <td class="shoping__cart__quantity" style="pointer-events: none">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <input type="text" value="${cart.count}" data-max="${cart.product.count}">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="shoping__cart__total">
                                            $${cart.product.price * cart.count}
                                        </td>
                                        <td class="shoping__cart__item__close">
                                            <a href="/cart/remove/cart/${cartId}/${cart.id}"><span class="icon_close"></span></a>
                                        </td>
                                    </tr>
                                </#list>
                                <#else>
                                <tr>
                                    <td>Cart is empty.</td>
                                </tr>
                            </#if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="/product/all" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="/cart/user/${cartId}/clear" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Clear cart</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>Subtotal <span>$${cartProductService.calculateTotalPriceInCart(cartId)}.00</span></li>
                            <li>Total <span>$${cartProductService.calculateTotalPriceInCart(cartId)}.00</span></li>
                        </ul>
                        <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
</@commonPage.page>