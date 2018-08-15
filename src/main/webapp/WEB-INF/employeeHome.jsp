<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Form Example - Register an Employee</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body style="margin: 10px;">
<h3>Welcome, Enter The Employee Details</h3>
<form:form method="POST" action="${pageContext.request.contextPath}/addEmployee" modelAttribute="employee">
    <div class="form-group row">
        <form:label path="name" for="inputName" class="col-sm-2 col-form-label">Name</form:label>
        <div class="col-sm-4">
            <form:input type="text" class="form-control" path="name" id="inputName" placeholder="Enter Name"/>
        </div>
    </div>
    <div class="form-group row">
        <form:label path="id" for="inputId" class="col-sm-2 col-form-label">Id</form:label>
        <div class="col-sm-2">
            <form:input type="number" class="form-control" path="id" id="inputId" placeholder="Enter Id"/>
        </div>
    </div>
    <div class="form-group row">
        <form:label path="contactNumber" for="inputContactNumber" class="col-sm-2 col-form-label">Contact Number</form:label>
        <div class="col-sm-4">
            <form:input type="text" class="form-control" path="contactNumber" id="inputContactNumber" placeholder="Enter Contact Number"/>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form:form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>