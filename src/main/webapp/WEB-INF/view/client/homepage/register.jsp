<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="bg-primary">
                <div id="layoutAuthentication">
                    <div id="layoutAuthentication_content">
                        <main>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7">
                                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                                            <div class="card-header">
                                                <h3 class="text-center font-weight-light my-4">Create Account</h3>
                                            </div>
                                            <!-- Hiển thị lỗi nếu có -->
                                            <div class="card-body">
                                                <!-- Hiển thị lỗi nếu mật khẩu và xác nhận mật khẩu không khớp -->
                                                <c:if test="${not empty passwordMismatchError}">
                                                    <div class="alert alert-danger" role="alert">
                                                        ${passwordMismatchError}
                                                    </div>
                                                </c:if>

                                                <!-- Form đăng ký -->
                                                <form:form action="/register" method="post"
                                                    modelAttribute="newRegister">
                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control" id="inputFirstName"
                                                                    path="firstName" type="text"
                                                                    placeholder="Enter your first name" />
                                                                <label for="inputFirstName">First name</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating">
                                                                <form:input class="form-control" id="inputLastName"
                                                                    path="lastName" type="text"
                                                                    placeholder="Enter your last name" />
                                                                <label for="inputLastName">Last name</label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <form:input class="form-control" id="inputEmail" type="email"
                                                            path="emailAddress" placeholder="name@example.com" />
                                                        <label for="inputEmail">Email address</label>
                                                        <form:errors path="emailAddress" cssClass="invalid-feedback" />
                                                    </div>

                                                    <div class="form-floating mb-3">
                                                        <form:input class="form-control" id="phone" type="text"
                                                            path="phone" placeholder="Phone" />
                                                        <label for="phone">Phone</label>
                                                        <form:errors path="phone" cssClass="invalid-feedback" />
                                                    </div>

                                                    <div class="row mb-3">
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control" id="inputPassword"
                                                                    path="password" type="password"
                                                                    placeholder="Create a password" />
                                                                <label for="inputPassword">Password</label>
                                                                <form:errors path="password"
                                                                    cssClass="invalid-feedback" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-floating mb-3 mb-md-0">
                                                                <form:input class="form-control"
                                                                    id="inputPasswordConfirm" path="confirmPassword"
                                                                    type="password" placeholder="Confirm password" />
                                                                <label for="inputPasswordConfirm">Confirm
                                                                    Password</label>
                                                                <form:errors path="confirmPassword"
                                                                    cssClass="invalid-feedback" />
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="mt-4 mb-0">
                                                        <div class="d-grid"><button type="submit"
                                                                class="btn btn-primary btn-block">Create
                                                                Account</button></div>
                                                    </div>
                                                </form:form>
                                            </div>
                                            <div class="card-footer text-center py-3">
                                                <div class="small"><a href="/login">Have an account? Go to login</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>