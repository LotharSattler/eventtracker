<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Attendee Page</title>
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
<%--@declare id="textinput1"--%><%--@declare id="textinput2"--%><%--@declare id="textinput3"--%><a href="?language=en">English</a>
<a href="?language=es">Spanish</a>

<%--@elvariable id="attendee" type="com.pluralsight.model.Attendee"--%>
<form:form commandName="attendee">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <label for="textinput1"><spring:message code="attendee.name"/>:</label>
    <form:input path="name" cssErrorClass="error"/>
    <form:errors path="name" cssClass="error"/>
    <br>
    <label for="textinput2"><spring:message code="attendee.emailAddress"/>:</label>
    <form:input path="emailAddress" cssErrorClass="error"/>
    <form:errors path="emailAddress" cssClass="error"/>
    <br>
    <label for="textinput3"><spring:message code="attendee.phone"/>:</label>
    <form:input path="phone" cssErrorClass="error"/>
    <form:errors path="phone" cssClass="error"/>
    <br>
    <input type="submit" class="btn" value="<spring:message code="attendee.submit"/>"/>
</form:form>
</body>
</html>
