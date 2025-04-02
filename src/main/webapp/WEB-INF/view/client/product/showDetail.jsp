<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>Foody - Organic Food Website Template</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="" name="keywords">
                    <meta content="" name="description">

                    <!-- Favicon -->
                    <link href="img/favicon.ico" rel="icon">


                    <!-- Google Web Fonts -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap"
                        rel="stylesheet">

                    <!-- Icon Font Stylesheet -->
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                        rel="stylesheet">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">

                    <!-- Libraries Stylesheet -->
                    <link href="/client/lib/animate/animate.min.css" rel="stylesheet">
                    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                    <!-- Template Stylesheet -->
                    <link href="/client/css/style.css" rel="stylesheet">
                </head>

                <body>
                    <c:import url="../layout/header.jsp" />

                    <!-- Product Detail Start -->
                    <div class="container mt-5">
                        <div class="row">
                            <!-- Ảnh sản phẩm -->
                            <div class="col-md-6">
                                <div class="product-img">
                                    <img id="product-img" src="/images/product/${product.image}" alt="Product Image"
                                        class="img-fluid rounded shadow-sm">
                                </div>
                            </div>
                            <!-- Nội dung chi tiết -->
                            <div class="col-md-6">
                                <h2 id="product-title" class="mb-3">${product.name}</h2>
                                <div class="mb-3">
                                    <fmt:formatNumber value="${product.price}" type="number" groupingUsed="true" />
                                    VND
                                </div>
                                <p id="product-description" class="text-muted">
                                    ${product.detailedDescription}
                                </p>

                                <!-- Nút thêm vào giỏ hàng -->
                                <div class="d-flex align-items-center mb-3">
                                    <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                    <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to
                                        Cart</button>
                                </div>


                                <!-- Thông số kỹ thuật -->
                                <div class="col-md-6">
                                    <p>
                                        ${product.shortDescription}
                                    </p>
                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- Product Detail End -->
                    <c:import url="../layout/footer.jsp" />

                </body>

                </html>