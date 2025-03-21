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
                <div>
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                        DataTable Example
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered table-hover">
                                            <thead class="table-light">
                                                <tr>
                                                    <th style="color: black;">Name</th>
                                                    <th style="color: black;">Position</th>
                                                    <th style="color: black;">Office</th>
                                                    <th style="color: black;">Age</th>
                                                    <th style="color: black;">Start date</th>
                                                    <th style="color: black;">Salary</th>
                                                    <th style="color: black;">Actions</th> <!-- Thêm cột Actions -->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Tiger Nixon</td>
                                                    <td>System Architect</td>
                                                    <td>Edinburgh</td>
                                                    <td>61</td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                    <td>
                                                        <button class="btn btn-primary edit-btn">Edit</button>
                                                        <button class="btn btn-danger delete-btn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Garrett Winters</td>
                                                    <td>Accountant</td>
                                                    <td>Tokyo</td>
                                                    <td>63</td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                    <td>
                                                        <button class="btn btn-primary edit-btn">Edit</button>
                                                        <button class="btn btn-danger delete-btn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Ashton Cox</td>
                                                    <td>Junior Technical Author</td>
                                                    <td>San Francisco</td>
                                                    <td>66</td>
                                                    <td>2009/01/12</td>
                                                    <td>$86,000</td>
                                                    <td>
                                                        <button class="btn btn-primary edit-btn">Edit</button>
                                                        <button class="btn btn-danger delete-btn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Cedric Kelly</td>
                                                    <td>Senior Javascript Developer</td>
                                                    <td>Edinburgh</td>
                                                    <td>22</td>
                                                    <td>2012/03/29</td>
                                                    <td>$433,060</td>
                                                    <td>
                                                        <button class="btn btn-primary edit-btn">Edit</button>
                                                        <button class="btn btn-danger delete-btn">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Airi Satou</td>
                                                    <td>Accountant</td>
                                                    <td>Tokyo</td>
                                                    <td>33</td>
                                                    <td>2008/11/28</td>
                                                    <td>$162,700</td>
                                                    <td>
                                                        <button class="btn btn-primary edit-btn">Edit</button>
                                                        <button class="btn btn-danger delete-btn">Delete</button>
                                                    </td>
                                                <tr>
                                                    <td>Michael Brown</td>
                                                    <td>Project Manager</td>
                                                    <td>Berlin</td>
                                                    <td>35</td>
                                                    <td>2012/07/15</td>
                                                    <td>$270,000</td>
                                                    <td>
                                                        <button class="btn btn-warning edit-btn"
                                                            onclick="editRow(this)">Edit</button>
                                                        <button class="btn btn-danger delete-btn"
                                                            onclick="deleteRow(this)">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Mary Davis</td>
                                                    <td>Marketing Director</td>
                                                    <td>Paris</td>
                                                    <td>45</td>
                                                    <td>2005/09/25</td>
                                                    <td>$190,000</td>
                                                    <td>
                                                        <button class="btn btn-warning edit-btn"
                                                            onclick="editRow(this)">Edit</button>
                                                        <button class="btn btn-danger delete-btn"
                                                            onclick="deleteRow(this)">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Chris Wilson</td>
                                                    <td>Sales Manager</td>
                                                    <td>Tokyo</td>
                                                    <td>28</td>
                                                    <td>2018/11/18</td>
                                                    <td>$220,000</td>
                                                    <td>
                                                        <button class="btn btn-warning edit-btn"
                                                            onclick="editRow(this)">Edit</button>
                                                        <button class="btn btn-danger delete-btn"
                                                            onclick="deleteRow(this)">Delete</button>
                                                    </td>
                                                </tr>
                                                </tr>
                                            </tbody>
                                        </table>
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