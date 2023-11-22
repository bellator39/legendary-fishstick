<#import "components/commonUserComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>

<@commonPage.page pageName="Blog">
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

    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="/static/main_style/img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>${blog.title}</h2>
                        <ul>
                            <li>By ${blog.author}</li>
                            <li>${blog.dateCreate}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="/blog/byname" method="post">
                                <input name="name" type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="/blog/all">All</a></li>
                                <#if blogCategoryList??>
                                    <#list blogCategoryList as bc>
                                        <li><a href="/blog/bycategory/${bc.id}">${bc.name} (${bc.blogs?size})</a></li>
                                    </#list>
                                </#if>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Recent News</h4>
                            <div class="blog__sidebar__recent">
                                <#if recentNews??>
                                    <#list recentNews as rn>
                                        <a href="/blog/${rn.id}" class="blog__sidebar__recent__item">
                                            <div class="blog__sidebar__recent__item__pic">
                                                <img width="70" height="70" src="${rn.photoUrl}" alt="">
                                            </div>
                                            <div class="blog__sidebar__recent__item__text">
                                                <h6>${rn.title}<br /> ${rn.author}</h6>
                                                <span>${rn.dateCreate}</span>
                                            </div>
                                        </a>
                                    </#list>
                                </#if>
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Search By</h4>
                            <div class="blog__sidebar__item__tags">
                                <#if blogCategoryList??>
                                    <#list blogCategoryList as bc>
                                        <a href="/blog/bycategory/${bc.id}">${bc.name}</a>
                                    </#list>
                                </#if>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        <img src="${blog.photoUrl}" alt="">
                        <p>
                            ${blog.text}
                        </p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="/static/main_style/img/blog/details/details-author.jpg" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>${blog.author}</h6>
                                        <span>Admin</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Categories:</span> ${blog.blogCategory.name}</li>
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="facebook.com"><i class="fa fa-facebook"></i></a>
                                        <a href="twitter.com"><i class="fa fa-twitter"></i></a>
                                        <a href="google.com"><i class="fa fa-google-plus"></i></a>
                                        <a href="linkedin.com"><i class="fa fa-linkedin"></i></a>
                                        <a href="gmail.com"><i class="fa fa-envelope"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        <h2>Post You May Like</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <#if recentNews??>
                    <#list recentNews as rn>
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="${rn.photoUrl}" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i>${rn.dateCreate}</li>
                                        <li><i class="fa fa-comment-o"></i> ${rn.blogCategory.name}</li>
                                    </ul>
                                    <h5><a href="#">${rn.title}</a></h5>
                                    <p>${rn.text} </p>
                                </div>
                            </div>
                        </div>
                    </#list>
                </#if>


            </div>
        </div>
    </section></@commonPage.page>