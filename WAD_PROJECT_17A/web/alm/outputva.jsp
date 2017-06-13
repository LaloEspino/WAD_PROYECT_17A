<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Student</title>
</head>
<body>
    <h1>Hello Student!</h1>
    <s:property value="name" />
    <div class="table">
        <table>
            <s:iterator value="list">
                <s:url action="view.action" var="url">
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