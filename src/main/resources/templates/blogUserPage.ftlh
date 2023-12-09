<#import "components/commonUserComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>

<@commonPage.page pageName="Blog">
    <!-- Hero Section Begin -->
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
                        <h2>Blog</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
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
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <#if blogList??>
                            <#list  blogList as bl>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__item" style="  white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      max-width: 550px;">
                                        <div class="blog__item__pic">
                                            <img src="${bl.photoUrl}" alt="">
                                        </div>
                                        <div class="blog__item__text">
                                            <ul>
                                                <li><i class="fa fa-calendar-o"></i> ${bl.dateCreate}</li>
                                            </ul>
                                            <h5><a href="/blog/${bl.id}">${bl.title}</a></h5>
                                            <p>${bl.text} </p>
                                            <a href="/blog/${bl.id}" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </section>
</@commonPage.page>