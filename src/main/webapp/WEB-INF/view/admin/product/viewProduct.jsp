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
                <title>Admin</title>
                <!-- Đảm bảo rằng các tệp CSS và JS được tải đúng -->
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/admin/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>
                <!-- Chèn header và sidebar từ các tệp con -->
                <body class="sb-nav-fixed">
                    <c:import url="../layout/header.jsp" />
    
                    <div id="layoutSidenav">
                        <c:import url="../layout/sidebar.jsp" />

                        <div id="layoutSidenav_content">
                            <main>
                                <!-- chuyển nội dung lên trái -->
                                <!-- <div id="header">
                                    <c:import url="../layout/sidebar.jsp"/>
                                </div> -->
                                <div id="content">
                                    <div class="container mt-5">
                                        <div class="row">
                                            <!-- Ảnh sản phẩm -->
                                            <div class="col-md-6">
                                                <div class="product-img">
                                                    <img id="product-img" src="/client/img/about.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                                                </div>
                                            </div>
                                            <!-- Nội dung chi tiết -->
                                            <div class="col-md-6">
                                                <h2 id="product-title" class="mb-3">Iphone X</h2>
                                                <div class="mb-3">
                                                    <span class="text-primary h4" id="product-price">$999.00</span>
                                                    <span class="text-muted text-decoration-line-through">$1199.00</span>
                                                </div>
                                                <p id="product-description" class="text-muted">
                                                    The latest Smartphone Pro Max with ultra-fast processor, advanced camera technology, and stunning display.
                                                </p>
                
                                                <!-- Nút thêm vào giỏ hàng -->
                                                <div class="d-flex align-items-center mb-3">
                                                    <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                                    <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                                </div>
                                                
                                                <!-- Thông số kỹ thuật -->
                                                <ul class="list-unstyled">
                                                    <li><strong>Brand:</strong> Apple</li>
                                                    <li><strong>Model:</strong> iPhone X</li>
                                                    <li><strong>Processor:</strong> A11 Bionic</li>
                                                    <li><strong>RAM:</strong> 3 GB</li>
                                                    <li><strong>Storage:</strong> 64 GB / 256 GB</li>
                                                    <li><strong>Camera:</strong> 12 MP + 12 MP (rear), 7 MP (front)</li>
                                                    <li><strong>Battery:</strong> 2716 mAh (Fast Charging)</li>
                                                    <li><strong>Display:</strong> 5.8-inch Super Retina OLED</li>
                                                    <li><strong>Operating System:</strong> iOS 11 (upgradable to iOS 17)</li>
                                                    <li><strong>Connectivity:</strong> 4G LTE, Wi-Fi 5, Bluetooth 5.0</li>
                                                    <li><strong>Availability:</strong> In Stock</li>
                                                    <li><strong>Shipping:</strong> Free shipping worldwide</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>
                            <!-- <c:import url="../layout/footer.jsp" /> -->
                        </div>
                    </div>
                </body>
        </html>
