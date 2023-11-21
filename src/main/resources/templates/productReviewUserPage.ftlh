<#import "components/commonUserComponent.ftlh" as commonPage>

<@commonPage.page pageName="Shop">
    <section class="breadcrumb-section set-bg" data-setbg="/static/main_style/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Review Product</h2>
                        <div class="breadcrumb__option">
                            <a href="/product/${product.id}">${product.name}</a>
                            <span>Review</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Leave review for product - ${product.name}</h2>
                    </div>
                </div>
            </div>
            <form action="/product/review/${idProduct}" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input name="name" type="text" required="required" minlength="4" maxlength="40" placeholder="Your name" pattern="[А-Яа-яA-Za-z\s]+" title="Только символы без цифр">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input name="soname" type="text" required="required" minlength="4" maxlength="40" placeholder="Your soname" pattern="[А-Яа-яA-Za-z\s]+" title="Только символы без цифр">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input name="email" type="email" required="required" minlength="5" placeholder="Your Email">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <select name="rating" required="required" style="width: 100%;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="col-lg-6 col-md-6" style="margin-top: 20px">
                        <button type="submit" class="site-btn">SEND REVIEW</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</@commonPage.page>