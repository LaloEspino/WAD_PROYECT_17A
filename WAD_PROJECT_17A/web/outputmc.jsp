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
            <s:form action="updatechart.action">
                <s:textfield readonly="true" name="idC" label="ID" />
                <s:textfield name="name" label="Name"  />
                <s:textfield name="class_" label="Grupo" type="number" />
                <s:textfield name="x1" label="x1" type="number" />
                <s:textfield name="y1" label="y1" type="number" />
                <s:textfield name="x2" label="x2" type="number" />
                <s:textfield name="y2" label="y2" type="number" />
                <s:submit value="Update"/>
            </s:form>
        </s:iterator>

    </div>
</body>
</html>
