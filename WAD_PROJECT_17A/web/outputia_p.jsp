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
    <s:form action="insertc.action">
        <s:textfield name="x1" label="x1" type="number" />
        <s:textfield name="y1" label="y1" type="number" />
        <s:textfield name="x2" label="x2" type="number" />
        <s:textfield name="y2" label="y2" type="button" />
        <s:textfield name="name" label="Group" type="number" />
        <s:submit value="Create" />
    </s:form>
</body>
</html>