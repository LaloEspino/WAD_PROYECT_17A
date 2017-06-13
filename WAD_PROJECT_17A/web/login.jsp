<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <s:form action="Login" >
            <s:textfield name="userName" key="User Name"/>
            <s:password name="password" key="Password" />
            <s:submit value="Login"/>
        </s:form> 
        <s:actionerror/>
    </body>
</html>
