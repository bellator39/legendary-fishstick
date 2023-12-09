<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    currentUserId = user.getId()
    cartId = user.getCartId()
    admin = user.isAdmin()
    moderator = user.isModerator()
    >
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    admin=false
    moderator=false
    currentUserId = -1
    >
</#if>