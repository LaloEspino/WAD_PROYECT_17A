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
    <s:property value="idU" />
    <s:property value="class_" />

    
    <s:url action="view.action" var="url">
        <s:param name="class_">
            <s:property value="class_" />
        </s:param>
    </s:url>

    <a href="<s:property value='#url' />" >View chart</a> <br />
    
    
    
</body>
</html>