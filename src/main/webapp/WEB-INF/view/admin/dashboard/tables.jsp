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
        <title>Tables - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="/admin/css/booking.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <!-- Navbar và Sidebar -->
        <c:import url="../layout/sidebar.jsp" />
    
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">HUSMAN MANAGER</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active"></li>
                </ol>
                <!-- Bảng dữ liệu -->
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        DataTable Example
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                    <th>Office</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Salary</th>
                                    <th>Actions</th> <!-- Thêm cột Actions -->
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Position</th>
                                    <th>Office</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Salary</th>
                                    <th>Actions</th> <!-- Thêm cột Actions -->
                                </tr>
                            </tfoot>
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
                                            <button class="btn btn-warning edit-btn" onclick="editRow(this)">Edit</button>
                                            <button class="btn btn-danger delete-btn" onclick="deleteRow(this)">Delete</button>
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
                                            <button class="btn btn-warning edit-btn" onclick="editRow(this)">Edit</button>
                                            <button class="btn btn-danger delete-btn" onclick="deleteRow(this)">Delete</button>
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
                                            <button class="btn btn-warning edit-btn" onclick="editRow(this)">Edit</button>
                                            <button class="btn btn-danger delete-btn" onclick="deleteRow(this)">Delete</button>
                                        </td>
                                    </tr>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    
        <!-- Footer -->
        <!-- <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2023</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>    -->

        <!-- Liên kết JS của Bootstrap (bao gồm Popper.js) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        
        <!-- Liên kết JS của DataTables -->
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        
        <!-- Liên kết các tệp JS của bạn -->
        <script src="js/scripts.js"></script>
        
        <!-- Tệp JS để khởi tạo DataTable -->
        <script src="js/datatables-simple-demo.js"></script>
    
        <script>
             // Khởi tạo DataTable
        document.addEventListener('DOMContentLoaded', function () {
            const table = new simpleDatatables.DataTable("#datatablesSimple", {
                perPage: 5,  // Đặt số dòng hiển thị mỗi trang là 5
            });
        });
            // Hàm chỉnh sửa dòng
            function editRow(button) {
                const row = button.closest('tr');
                const name = row.cells[0].textContent;
                const position = row.cells[1].textContent;
                const office = row.cells[2].textContent;
                const age = row.cells[3].textContent;
                const startDate = row.cells[4].textContent;
                const salary = row.cells[5].textContent;

                alert(`Edit Row: \nName: ${name}\nPosition: ${position}\nOffice: ${office}\nAge: ${age}\nStart Date: ${startDate}\nSalary: ${salary}`);
                // Thực hiện chức năng chỉnh sửa (hiển thị form chỉnh sửa hoặc gửi AJAX request)
            }

            // Hàm xóa dòng
            function deleteRow(button) {
                const row = button.closest('tr');
                if (confirm('Are you sure you want to delete this row?')) {
                    row.remove();
                }
            }
        </script>
    </body>    
</html>
