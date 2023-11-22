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
                        <h2>Orders user</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Orders User</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                            <tr>
                                <th class="shoping__product">Id Order</th>
                                <th>Total Price</th>
                                <th>Products</th>
                                <th>Date Order</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#if ordersUser?? && ordersUser?size gt 0>
                                <#list ordersUser as orders>
                                    <tr>
                                        <td class="shoping__cart__price">
                                           ${orders.id}
                                        </td>
                                        <td class="shoping__cart__price">
                                            $${orders.totalPrice}
                                        </td>
                                        <td class="shoping__cart__quantity" style="pointer-events: none">
                                            <#list orders.orderLists as ol>
                                                ${ol.product.name},
                                            </#list>
                                        </td>
                                        <td class="shoping__cart__total">
                                            ${orders.dateOrder}
                                        </td>
                                        <td class="shoping__cart__price">
                                            ${orders.status}
                                        </td>
                                    </tr>
                                </#list>
                                <#else>
                                <tr>
                                    <td>Orders is empty.</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
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
                        <a href="/product/all" class="primary-btn">CONTINUE SHOPPING</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</@commonPage.page>