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
                <title>Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="admin/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body>
                <div class="content">
                    <c:import url="../layout/header.jsp" />
                    <c:import url="../layout/sidebar.jsp" />
                    <!-- Điều chỉnh flex-grow để phần nội dung chiếm hết không gian còn lại -->
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Human Resources</h1>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <c:import url="../layout/footer.jsp" />
                </div>



                <!-- JavaScript Includes -->
                <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

                <script>
                    // Initialize Chart.js
                    var ctx = document.getElementById('myAreaChart').getContext('2d');
                    var myAreaChart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: ['March 1', 'March 3', 'March 5', 'March 7', 'March 9', 'March 11', 'March 13'],
                            datasets: [{
                                label: 'My Dataset',
                                data: [10000, 20000, 30000, 25000, 28000, 32000, 35000],
                                backgroundColor: 'rgba(2,117,216,0.2)',
                                borderColor: 'rgba(2,117,216,1)',
                                borderWidth: 1
                            }]
                        }
                    });

                    var ctx2 = document.getElementById('myBarChart').getContext('2d');
                    var myBarChart = new Chart(ctx2, {
                        type: 'bar',
                        data: {
                            labels: ['January', 'February', 'March', 'April', 'May', 'June'],
                            datasets: [{
                                label: 'Monthly Sales',
                                data: [5000, 7000, 6000, 8000, 10000, 12000],
                                backgroundColor: 'rgba(2,117,216,1)',
                                borderColor: 'rgba(2,117,216,1)',
                                borderWidth: 1
                            }]
                        }
                    });
                </script>
            </body>

            </html>