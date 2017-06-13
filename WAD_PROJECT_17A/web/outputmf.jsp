<%@page import="entity.User"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <nav class="navTitle" id="navAdmin">
        <button class="nav-btn" onclick="window.history.back()">Back</button>
    </nav>
    <h1>Update</h1>
    <a href="administrator.jsp" >Back</a> <br />
    <s:form action="updateuser.action">
        <s:hidden value="%{id}" name="id"/>
        <s:textfield name="name" label="Username"><s:property value="name" /></s:textfield>
        <s:password  name="password" label="Password"><s:property value="password" /></s:password>
        <s:textfield name="type" label="Type" />
        <s:textfield name="class_" label="Group" type="number" />
        <s:submit value="Update"/>
    </s:form>

    
    
</body>
</html>