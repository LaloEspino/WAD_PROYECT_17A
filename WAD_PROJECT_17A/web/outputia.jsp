<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <nav class="navTitle" id="navAdmin">
        <button class="nav-btn" onclick="window.history.back()">Back</button>
    </nav>
    <h1>Create</h1>
    <s:form action="insert.action">
        <s:textfield name="name" label="Username" />
        <s:password  name="password" label="Password" />
        <s:textfield name="type" label="Type" />
        <s:textfield name="class_" label="Group" type="number" />
        <s:submit value="Create" />
    </s:form>
</body>
</html>