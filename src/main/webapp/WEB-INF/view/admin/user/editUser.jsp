<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Create User - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h3>Edit User</h3>
                                        <hr>
                                        <form:form method="POST" action="/admin/user/editUser"
                                            modelAttribute="editUser">
                                            <div class="form-row">
                                                <div class="form-group col-md-6" style="display: none;">
                                                    <label for="inputId">id:</label>
                                                    <form:input path="id" cssClass="form-control" id="inputId" />
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="inputEmail">Email</label>
                                                    <form:input path="email" cssClass="form-control" id="inputEmail" />
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="inputPassword4">Password</label>
                                                    <form:password path="password" cssClass="form-control"
                                                        id="inputPassword4" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputName">Name</label>
                                                <form:input path="name" cssClass="form-control" id="inputName" />
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-6">
                                                    <label for="inputRole">Role</label>
                                                    <form:select path="role" cssClass="form-control" id="inputRole">
                                                        <form:option value="ADMIN">Admin</form:option>
                                                        <form:option value="USER">User</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Edit</button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </body>

            </html>