<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="" />
                    <meta name="author" content="" />
                    <title>Dashboard - SB Admin</title>
                    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
                        rel="stylesheet" />
                    <link href="css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                </head>

                <body class="sb-nav-fixed">
                    <c:import url="../layout/header.jsp" />

                    <div id="layoutSidenav">
                        <c:import url="../layout/sidebar.jsp" />

                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4">
                                    <h1 class="mt-4">Tables</h1>
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                        <li class="breadcrumb-item active">Tables</li>
                                    </ol>
                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <i class="fas fa-table me-1"></i>
                                            DataTable Example
                                        </div>
                                        <div class="card-body">
                                            <table id="datatablesSimple">
                                                <thead>
                                                    <tr class="table-primary">
                                                        <th>Id</th>
                                                        <th>Receiver Name</th>
                                                        <th>Receiver Address</th>
                                                        <th>Receiver Phone</th>
                                                        <th>Total Price</th>
                                                        <th>Status</th>
                                                        <th>Actions</th> <!-- Cột Actions -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="order" items="${orders}">
                                                        <tr>
                                                            <td>${order.id}</td>
                                                            <td>${order.receiverName}</td>
                                                            <td>${order.receiverAddress}</td>
                                                            <td>${order.receiverPhone}</td>
                                                            <td>
                                                                <fmt:formatNumber value="${order.totalPrice}"
                                                                    type="number" groupingUsed="true" /> VND
                                                            </td>
                                                            <td>
                                                                <form action="/formStatus/${order.id}" method="POST"
                                                                    id="statusForm">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="form-group col-md-6">
                                                                        <select name="status" class="form-control"
                                                                            id="inputStatus" onchange="submitForm()">
                                                                            <option value="PENDING">PENDING</option>
                                                                            <option value="SHIPPING">SHIPPING</option>
                                                                            <option value="COMPLETE">COMPLETE</option>
                                                                            <option value="CANCEL">CANCEL</option>
                                                                        </select>
                                                                    </div>
                                                                </form>
                                                            </td>
                                                            <td>
                                                                <a href="/admin/user/editUser/${users.id}"
                                                                    class="btn btn-warning btn-sm">Edit</a>
                                                                <a href="/admin/user/deleteUser/${users.id}"
                                                                    class="btn btn-danger btn-sm">Delete</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </main>
                            <c:import url="../layout/footer.jsp" />

                        </div>
                    </div>

                    <script>
                        function submitForm() {
                            var form = document.getElementById("statusForm");
                            var status = document.getElementById("inputStatus").value;

                            // Create a new FormData object to send the form data
                            var formData = new FormData(form);

                            // Send AJAX request
                            var xhr = new XMLHttpRequest();
                            xhr.open("POST", form.action, true);
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState == 4 && xhr.status == 200) {
                                    // If successful, update the status display
                                    document.getElementById("statusDisplay").innerHTML = "Updated Status: " + status;
                                }
                            };
                            xhr.send(formData);
                        }
                    </script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                    <script src="js/scripts.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                        crossorigin="anonymous"></script>
                    <script src="js/datatables-simple-demo.js"></script>
                </body>

                </html>