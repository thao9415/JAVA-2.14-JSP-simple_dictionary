<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 15/10/2019
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello","xin chào");
    dictionary.put("book","quyển sách");
    dictionary.put("cute","thảo");

    String search = request.getParameter("search");
    String result = dictionary.get(search);
    if (result != null) {
        out.println("Word: "+ search);
        out.println(", Result: "+result);
    } else {
        out.println("Not found");
    }


%>

</body>
</html>
