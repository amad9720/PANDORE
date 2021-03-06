<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <%@include file="../../shared/resources.jsp"%>
    <title>add user</title>
</head>
<body class="bg-info" style="color: #dddddd">
<div id="container">
    <div id="header">
        <%@include file="../../shared/header.jsp"%>
    </div>
    <div id="body">
        <div >
            <h3>Save user</h3>
            <form:form action="save" modelAttribute="user" method="post" >
                <table class="table" >
                    <tbody>
                    <form:hidden path="id" />
                    <tr>
                        <td><label for="firstname">Firstname :</label></td>
                        <td><form:input cssClass="form-control" name="firstname" path="firstName"/></td>
                    </tr>
                    <tr>
                        <td><label for="lastname">Lastname :</label></td>
                        <td><form:input cssClass="form-control" name="lastname" path="lastName"/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email :</label></td>
                    <td><form:input cssClass="form-control" name="email" path="email"/></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password :</label></td>
                        <td><form:password cssClass="form-control" name="password" path="passwordHash"/></td>
                    </tr>
                    <tr>
                        <td><label for="roleName">Role :</label></td>
                        <td>
                            <form:select name="roleName" path="role">
                                <form:option value="ROLE_ADMINISTRATION" label="Administration" />
                                <form:option value="ROLE_TEACHER" label="professeur" />
                                <form:option value="ROLE_STUDENT" label="Etudiant" />
                                <form:option value="ROLE_ADMIN" label="Administrateur" />
                            </form:select>
                        </td>
                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Save" /></td>
                    </tr>
                    </tbody>
                </table>
            </form:form>

            <div style="clear: both"></div>

            <p>
                <a href="${pageContext.request.contextPath}/user/list">Back to list</a>
            </p>

        </div>
    </div>
    <div id="footer">
        <%@include file="../../shared/footer.jsp"%>
    </div>
</div>
</body>
</html>