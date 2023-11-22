<#import "components/commonUserComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>
<@commonPage.page pageName="Contact">
    <#if message??>
        <script>
            alert('${message?string}');
        </script>
    </#if>
    <section class="breadcrumb-section set-bg" data-setbg="/static/main_style/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Contact Us</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Contact Us</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Phone</h4>
                        <p><a href="tel:375298281314">+375 29 828 13 14</a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Address</h4>
                        <p>Minsk</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Open time</h4>
                        <p>10:00 am to 23:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p><a href="mailto:gurinovich_egor@gmail.com">gurinovich_egor@gmail.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Begin -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9400.684849932952!2d27.58560898491008!3d53.91093340933301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbcfa7bec46317%3A0x3efd8e8ffb993d!2z0JHQtdC70L7RgNGD0YHRgdC60LjQuSDQs9C-0YHRg9C00LDRgNGB0YLQstC10L3QvdGL0Lkg0YPQvdC40LLQtdGA0YHQuNGC0LXRgiDQuNC90YTQvtGA0LzQsNGC0LjQutC4INC4INGA0LDQtNC40L7RjdC70LXQutGC0YDQvtC90LjQutC4!5e0!3m2!1sru!2sus!4v1700481575369!5m2!1sru!2sus"
                height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>Minsk</h4>
                <ul>
                    <li>Phone: +375 29 828 13 14</li>
                    <li>Add: Minsk BGUIR</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Map End -->

    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>Leave Message</h2>
                    </div>
                </div>
            </div>
            <form action="/contact" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input name="name" type="text" required="required" minlength="4" maxlength="40" placeholder="Your name" pattern="[А-Яа-яA-Za-z\s]+" title="Только символы без цифр">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input name="email" type="email" required="required" minlength="5" placeholder="Your Email">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea name="message" minlength="10" required maxlength="512" placeholder="Your message"></textarea>
                        <button type="submit" class="site-btn">SEND MESSAGE</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</@commonPage.page>