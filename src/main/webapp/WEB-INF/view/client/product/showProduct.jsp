<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>Product : Phone</title>
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
                    <!-- Spinner Start -->
                    <div id="spinner"
                        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                        <div class="spinner-border text-primary" role="status"></div>
                    </div>
                    <!-- Spinner End -->

                    <c:import url="../layout/header.jsp" />

                    <!-- Product Start -->
                    <div class="container-xxl py-5">
                        <div class="container">
                            <div class="row g-0 gx-5 align-items-end">
                                <div class="col-lg-6">
                                    <div class="section-header text-start mb-5 wow fadeInUp" data-wow-delay="0.1s"
                                        style="max-width: 500px;">
                                        <h1 class="display-5 mb-3">Our Products</h1>
                                        <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed
                                            rebum
                                            vero dolor duo.</p>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                                    <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                                        <li class="nav-item me-2">
                                            <a class="btn btn-outline-primary border-2 active" data-bs-toggle="pill"
                                                href="#tab-1">All
                                                Product</a>
                                        </li>
                                        <li class="nav-item me-2">
                                            <a class="btn btn-outline-primary border-2" data-bs-toggle="pill"
                                                href="#tab-2">Samsung </a>
                                        </li>
                                        <li class="nav-item me-0">
                                            <a class="btn btn-outline-primary border-2" data-bs-toggle="pill"
                                                href="#tab-3">Apple</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane fade show p-0 active">
                                    <div class="row g-4">
                                        <c:forEach var="products" items="${products}">
                                            <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                                <div class="product-item">
                                                    <div class="position-relative bg-light overflow-hidden">
                                                        <img class="img-fluid w-100"
                                                            src="images/product/${products.image}" alt="">
                                                        <div
                                                            class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                                            New</div>
                                                    </div>
                                                    <div class="text-center p-4">
                                                        <a class="d-block h5 mb-2" href="">${products.name}</a>
                                                        <fmt:formatNumber value="${products.price}" type="number"
                                                            groupingUsed="true" /> VND
                                                    </div>
                                                    <div class="d-flex border-top">
                                                        <small class="w-50 text-center border-end py-2">
                                                            <a class="text-body"
                                                                href="/client/product/showDetail/${products.id}"><i
                                                                    class="fa fa-eye text-primary me-2"></i>View
                                                                detail</a>
                                                        </small>
                                                        <small class="w-50 text-center border-end py-2">
                                                            <form action="/add-product-to-cart/${products.id}"
                                                                method="post">
                                                                <div>
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />

                                                                </div>

                                                                <button class="btn btn-light "><i
                                                                        class="fa fa-shopping-bag text-primary me-2"></i>Add
                                                                    to
                                                                    cart</button>
                                                            </form>
                                                        </small>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>


                                        <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                                            <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More
                                                Products</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-pane fade show p-0">
                                    <div class="row g-4">
                                        <c:forEach var="products" items="${products}">
                                            <c:if test="${products.factory == 'SAMSUNG'}">
                                                <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp"
                                                    data-wow-delay="0.1s">
                                                    <div class="product-item">
                                                        <div class="position-relative bg-light overflow-hidden">
                                                            <img class="img-fluid w-100"
                                                                src="images/product/${products.image}" alt="">
                                                            <div
                                                                class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                                                New</div>
                                                        </div>
                                                        <div class="text-center p-4">
                                                            <a class="d-block h5 mb-2" href="">${products.name}</a>
                                                            <fmt:formatNumber value="${products.price}" type="number"
                                                                groupingUsed="true" />
                                                            VND
                                                        </div>
                                                        <div class="d-flex border-top">
                                                            <small class="w-50 text-center border-end py-2">
                                                                <a class="text-body"
                                                                    href="/client/product/showDetail/${products.id}"><i
                                                                        class="fa fa-eye text-primary me-2"></i>View
                                                                    detail</a>
                                                            </small>
                                                            <small class="w-50 text-center py-2">
                                                                <a class="text-body" href=""><i
                                                                        class="fa fa-shopping-bag text-primary me-2"></i>Add
                                                                    to
                                                                    cart</a>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>

                                        </c:forEach>
                                        <div class="col-12 text-center">
                                            <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More
                                                Products</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-3" class="tab-pane fade show p-0">
                                    <div class="row g-4">
                                        <c:forEach var="products" items="${products}">
                                            <c:if test="${products.factory == 'APPLE'}">
                                                <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp"
                                                    data-wow-delay="0.1s">
                                                    <div class="product-item">
                                                        <div class="position-relative bg-light overflow-hidden">
                                                            <img class="img-fluid w-100"
                                                                src="images/product/${products.image}" alt="">
                                                            <div
                                                                class="bg-secondary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">
                                                                New</div>
                                                        </div>
                                                        <div class="text-center p-4">
                                                            <a class="d-block h5 mb-2" href="">${products.name}</a>
                                                            <fmt:formatNumber value="${products.price}" type="number"
                                                                groupingUsed="true" />
                                                            VND
                                                        </div>
                                                        <div class="d-flex border-top">

                                                            <small class="w-50 text-center border-end py-2">
                                                                <a class="text-body"
                                                                    href="/client/product/showDetail/${products.id}"><i
                                                                        class="fa fa-eye text-primary me-2"></i>View
                                                                    detail</a>
                                                            </small>
                                                            <small class="w-50 text-center py-2">
                                                                <a class="text-body" href=""><i
                                                                        class="fa fa-shopping-bag text-primary me-2"></i>Add
                                                                    to
                                                                    cart</a>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>

                                        </c:forEach>
                                        <div class="col-12 text-center">
                                            <a class="btn btn-primary rounded-pill py-3 px-5" href="">Browse More
                                                Products</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Product End -->

                    <c:import url="../layout/footer.jsp" />


                    <!-- Back to Top -->
                    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
                            class="bi bi-arrow-up"></i></a>


                    <!-- JavaScript Libraries -->
                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/wow/wow.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                </body>

                </html>