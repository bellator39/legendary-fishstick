<html>
<head>

</head>
<body>
<h1>Login</h1>
<#if message??>
    ${message}
</#if>
<form name='f' action="/user/signup" method='POST'>
    <table>
        <tr>
            <td>Name:</td>
            <td><input type='text' name='name' value=''></td>
        </tr>
        <tr>
            <td>Soname:</td>
            <td><input type='text' name='soname' value=''></td>
        </tr>
        <tr>
            <td>Login:</td>
            <td><input type='text' name='email' value=''></td>
        </tr>     <tr>
            <td>Email:</td>
            <td><input type='text' name='login' value=''></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type='password' name='password' /></td>
        </tr>
        <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
        </tr>
    </table>
</form>
</body>
</html>