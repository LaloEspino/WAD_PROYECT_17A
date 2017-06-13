<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <nav class="navTitle" id="navAdmin">
        <button class="nav-btn" onclick="window.history.back()">Back</button>
    </nav>
    <h1>Update</h1>
    <div class="table">
        <s:iterator value="list">
            <s:form action="updateuser.action">
                <s:textfield readonly="true" name="idU" label="ID"/>
                <s:textfield name="name" label="Username" />
                <s:password  name="password" label="Password" />
                <s:textfield name="type" label="Type" />
                <s:textfield name="class_" label="Group" type="number" />
                <s:submit value="Update"/>
            </s:form>
        </s:iterator>

    </div>
</body>
</html>
