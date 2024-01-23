<#import "components/commonUserComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>
<@commonPage.page pageName="Home">
    <section class="hero">
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
                    <div class="hero__item set-bg" data-setbg="/static/main_style/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="/product/all" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/static/main_style/img/categories/cat-1.jpg">
                            <h5><a href="/product/category/13">Fresh Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/static/main_style/img/categories/cat-2.jpg">
                            <h5><a href="/product/category/13">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/static/main_style/img/categories/cat-3.jpg">
                            <h5><a href="/product/category/11">Fresh Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/static/main_style/img/categories/cat-4.jpg">
                            <h5><a href="/product/category/10">Fresh Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/static/main_style/img/categories/cat-5.jpg">
                            <h5><a href="/product/category/13">Fresh Meat</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Featured Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".fruits">Fruits</li>
                            <li data-filter=".fresh-meat">Fresh Meat</li>
                            <li data-filter=".vegetables">Vegetables</li>
                            <li data-filter=".fastfood">Fastfood</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                    <#if meatProductList??>
                        <#list meatProductList as meat>
                            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                                <div class="featured__item">
                                    <div class="featured__item__pic set-bg" data-setbg="${meat.photoUrl}">
                                        <ul class="featured__item__pic__hover">
                                            <li><a href="/product/review/${meat.id}"><i class="fa fa-pencil-square-o"></i></a></li>
                                            <li><a href="/product/${meat.id}"><i class="fa fa-info-circle"></i></a></li>
                                            <#if cartId?? && meat.count gt 0>
                                                <li><a href="/cart/add/cart/${meat.id}/1/${cartId}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </#if>
                                        </ul>
                                    </div>
                                    <div class="featured__item__text">
                                        <h6><a href="/product/${meat.id}">${meat.name}</a></h6>
                                        <h5>$${meat.price}</h5>
                                    </div>
                                </div>
                            </div>
                        </#list>
                    </#if>
                    <#if fastFoodList??>
                        <#list fastFoodList as fastfood>
                            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                                        <div class="featured__item">
                                            <div class="featured__item__pic set-bg" data-setbg="${fastfood.photoUrl}">
                                                <ul class="featured__item__pic__hover">
                                                    <li><a href="/product/review/${fastfood.id}"><i class="fa fa-pencil-square-o"></i></a></li>
                                                    <li><a href="/product/${fastfood.id}"><i class="fa fa-info-circle"></i></a></li>
                                                    <#if cartId?? && fastfood.count gt 0>
                                                        <li><a href="/cart/add/cart/${fastfood.id}/1/${cartId}"><i class="fa fa-shopping-cart"></i></a></li>
                                                    </#if>
                                                </ul>
                                            </div>
                                            <div class="featured__item__text">
                                                <h6><a href="/product/${fastfood.id}">${fastfood.name}</a></h6>
                                                <h5>$${fastfood.price}</h5>
                                            </div>
                                        </div>
                            </div>
                        </#list>
                    </#if>
                    <#if vegetablesList??>
                        <#list vegetablesList as veg>
                            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                                        <div class="featured__item">
                                            <div class="featured__item__pic set-bg" data-setbg="${veg.photoUrl}">
                                                <ul class="featured__item__pic__hover">
                                                    <li><a href="/product/review/${veg.id}"><i class="fa fa-pencil-square-o"></i></a></li>
                                                    <li><a href="/product/${veg.id}"><i class="fa fa-info-circle"></i></a></li>
                                                     <#if cartId?? && veg.count gt 0>
                                                        <li><a href="/cart/add/cart/${veg.id}/1/${cartId}"><i class="fa fa-shopping-cart"></i></a></li>
                                                     </#if>
                                                </ul>
                                            </div>
                                            <div class="featured__item__text">
                                                <h6><a href="/product/${veg.id}">${veg.name}</a></h6>
                                                <h5>$${veg.price}</h5>
                                            </div>
                                        </div>
                            </div>
                        </#list>
                    </#if>
                    <#if fruitsList??>
                        <#list fruitsList as fr>
                            <div class="col-lg-3 col-md-4 col-sm-6 mix fruits">
                                <div class="featured__item">
                                    <div class="featured__item__pic set-bg" data-setbg="${fr.photoUrl}">
                                        <ul class="featured__item__pic__hover">
                                            <li><a href="/product/review/${fr.id}"><i class="fa fa-pencil-square-o"></i></a></li>
                                            <li><a href="/product/${fr.id}"><i class="fa fa-info-circle"></i></a></li>
                                            <#if cartId?? && fr.count gt 0>
                                            <li><a href="/cart/add/cart/${fr.id}/1/${cartId}"><i class="fa fa-shopping-cart"></i></a></li>
                                            </#if>
                                        </ul>
                                    </div>
                                    <div class="featured__item__text">
                                        <h6><a href="/product/${fr.id}">${fr.name}</a></h6>
                                        <h5>$${fr.price}</h5>
                                    </div>
                                </div>
                            </div>
                        </#list>
                    </#if>
                </div>
            </div>
        </section>

    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <a href="/product/all">
                    <div class="banner__pic">
                        <img src="/static/main_style/img/banner/banner-1.jpg" alt="">
                    </div>
                    </a>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <a href="/product/all">
                        <div class="banner__pic">
                            <img src="/static/main_style/img/banner/banner-2.jpg" alt="">
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Latest Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <#if lastProductList??>
                                    <#list lastProductList as last>
                                        <a href="/product/${last.id}" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${last.photoUrl}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>${last.name}</h6>
                                                <span>$${last.price}</span>
                                            </div>
                                        </a>
                                    </#list>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top Rated Products</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <#if topRatedProductList??>
                                    <#list topRatedProductList as rated>
                                        <a href="/product/${rated.id}" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${rated.photoUrl}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>${rated.name}</h6>
                                                <span>$${rated.price}</span>
                                            </div>
                                        </a>
                                    </#list>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
                <#if reviewProductList??>
                    <div class="col-lg-4 col-md-6">
                        <div class="latest-product__text">
                            <h4>Review Products</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">

                                        <#list reviewProductList as review>
                                            <a href="/product/${review.id}" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="${review.photoUrl}" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>${review.name}</h6>
                                                    <span>$${review.price}</span>
                                                </div>
                                            </a>
                                        </#list>
                                </div>
                            </div>
                        </div>
                    </div>
                </#if>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <#if blogList??>
                    <#list blogList as blog>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="blog__item" style="  white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      max-width: 550px;">
                                <div class="blog__item__pic">
                                    <img src="${blog.photoUrl}" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> ${blog.dateCreate}</li>
                                        <li><i class="fa fa-comment-o"></i> ${blog.blogCategory.name}</li>
                                    </ul>
                                    <h5><a href="/blog/${blog.id}">${blog.title}</a></h5>
                                    <p>${blog.text} </p>
                                </div>
                            </div>
                        </div>
                    </#list>
                </#if>
            </div>
        </div>
    </section>



</@commonPage.page>