<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8" />
    <title>Accept a payment</title>
    <meta name="description" content="A demo of a payment on Stripe" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/static/main_style/css/checkout.css" />

</head>
<body>
<!-- Display a payment form -->
<form id="payment-form">
    <h2>You are about to make a payment of:</h2>
    <span></span>
    <span>${amount}</span>
    <span>USD</span>
    <div id="link-authentication-element">
        <!--Stripe.js injects the Link Authentication Element-->
    </div>
    <div id="payment-element">
        <!--Stripe.js injects the Payment Element-->
    </div>
    <button id="submit">
        <div class="spinner hidden" id="spinner"></div>
        <span id="button-text">Pay now</span>
    </button>
    <div id="payment-message" class="hidden"></div>
</form>
<script>
    var publicKey = '${publicKey?string}';
    var amount = ${amount?string};
    var email = '${email?string}';
    var productName = '${productName?string}';
    var orderId = '${orderId?string}';
</script>
<script src="https://js.stripe.com/v3/"></script>
<script src="/static/main_style/js/checkout.js" defer></script>
</body>
</html>