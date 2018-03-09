<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Event Page</title>
    <style type="text/css">
        .error {
            color: #F00;
        }

        .errorblock {
            color: #000;
            background-color: #FEE;
            border: 3px solid #F00;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<%--@elvariable id="event" type="com.pluralsight.model.Event"--%>
<form:form commandName="event">
    <form:errors path="name" cssClass="errorblock" element="div"/>
    <%--@declare id="textinput1"--%>
    <label for="textinput1">Enter Minutes:</label>
    <form:input path="name" cssErrorClass="error"/>
    <form:errors path="name" cssClass="error"/>
    <br>
    <input type="submit" class="btn" value="Enter Event"/>
</form:form>
</body>
</html>
