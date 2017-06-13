<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <nav class="navTitle" id="navAdmin">
        <button class="nav-btn" onclick="window.history.back()">Back</button>
    </nav>
    <h1>Delete</h1>
    <div class="table">
        <table>
            <s:iterator value="list">
                <s:url action="deleteuser.action" var="url">
                    <s:param name="id">
                        <s:property value="idU" />
                    </s:param>
                </s:url>
                <tr>
                    <th><s:property value="name" /></th>
                    <th>
                        <a href="<s:property value='#url' />"> <i class="material-icons icon-blue">delete</i> </a>
                    </th>
                </tr>
            </s:iterator>
        </table>
    </div>
</body>
</html>
