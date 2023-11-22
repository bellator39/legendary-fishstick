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
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <h4>Billing Details</h4>
                <form action="/order/checkout/${currentUserId}/${cartId}" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Fist Name<span>*</span></p>
                                        <input type="text" name="name" placeholder="Введите ваше имя:" pattern="^[А-Яа-яA-Za-z]+$" required="required" minlength="4" maxlength="40">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <input type="text" name="soname" placeholder="Введите вашу фамилию:" pattern="^[А-Яа-яA-Za-z]+$" required="required" minlength="4" maxlength="40">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>City<span>*</span></p>
                                <input type="text" name="city" placeholder="Введите город:" required="required" pattern="^[А-Яа-яA-Za-z]+$" title="Только русские и английские буквы" minlength="4" maxlength="50">
                            </div>
                            <div class="checkout__input">
                                <p>Street<span>*</span></p>
                                <input name="street" required="required" pattern="^[А-Яа-яA-Za-z]+$" title="Только русские и английские буквы" type="text" placeholder="Введите улицу:" minlength="10" maxlength="256" class="checkout__input__add">
                             </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <input type="text" name="phone" title="Введите номер телефона в формате +375" placeholder="Введите ваш телефон:" minlength="10" maxlength="15" required="required" pattern="^\+375\d{9}$">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="email" name="email" required="required" placeholder="Введите ваш email:">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Order notes<span>*</span></p>
                                <input type="text" name="order_notes" required="required" minlength="3" maxlength="512"
                                       placeholder="Примечанию к заказу.">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>
                                <div class="checkout__order__products">Products <span>Total</span></div>
                                <ul>
                                    <#if cartList??>
                                        <#list cartList as cart>
                                            <li>${cart.product.name}<span>$${cart.count * cart.product.price}.00</span></li>
                                        </#list>
                                    </#if>
                                </ul>
                                <div class="checkout__order__subtotal">Subtotal <span>$${totalPrice}.00</span></div>
                                <div class="checkout__order__total">Total <span>$${totalPrice}.00</span></div>
                                <input type="hidden" name="totalprice" value="${totalPrice}">
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Paypal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <#if cartList?size gt 0>
                                  <button type="submit" class="site-btn">PLACE ORDER</button>
                                </#if>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

</@commonPage.page>