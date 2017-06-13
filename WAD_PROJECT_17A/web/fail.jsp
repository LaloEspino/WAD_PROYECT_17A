<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Error</title>
    </head>
    <body>
        <h1>Error!</h1>
        Wrong password or user name. <br>
        <form action="login.jsp">
        <input type="submit" value="Back to Login">
        </form>
    </body>
</html>
