<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/admin/css/styles.css" rel="stylesheet" />
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
                                        <h3>Edit Order</h3>
                                        <hr>
                                        <form:form method="POST" action="/admin/order/editOrder"
                                            modelAttribute="editOrder">
                                            <div class="form-row">
                                                <div class="form-row" style="display: none;">
                                                    <div class="form-group col-md-6">
                                                        <label for="inputId">id:</label>
                                                        <form:input path="id" cssClass="form-control" id="inputId" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputEmail">receiverName</label>
                                                        <form:input path="receiverName" cssClass="form-control"
                                                            id="inputEmail" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputPassword4">receiverAddress</label>
                                                        <form:input path="receiverAddress" cssClass="form-control"
                                                            id="inputPassword4" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputPassword4">receiverPhone</label>
                                                        <form:input path="receiverPhone" cssClass="form-control"
                                                            id="inputPassword4" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputPassword4">totalPrice</label>
                                                        <form:input path="totalPrice" cssClass="form-control"
                                                            id="inputPassword4" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputPassword4">User</label>
                                                        <form:input path="user.id" cssClass="form-control"
                                                            id="inputPassword4" />
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <label for="inputRole">Status</label>
                                                    <form:select path="status" cssClass="form-control" id="inputRole">
                                                        <form:option value="PENDING">Pending</form:option>
                                                        <form:option value="CONFIRMED">Confirmed</form:option>
                                                        <form:option value="SHIPPED">Shipped</form:option>
                                                        <form:option value="DELIVERED">Delivered</form:option>
                                                        <form:option value="CANCELLED">Cancelled</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Edit</button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <!-- từ show lùi về layout -->
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/chart-area-demo.js"></script>
                <script src="/admin/js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/datatables-simple-demo.js"></script>
            </body>

            </html>