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
                    <link href="img/favicon.ico" rel="icon">
                    <link
                        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap"
                        rel="stylesheet">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                        rel="stylesheet">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">
                    <link href="lib/animate/animate.min.css" rel="stylesheet">
                    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                    <link href="/client/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/client/css/style.css" rel="stylesheet">
                </head>

                <body>

                    <c:import url="../layout/header.jsp" />

                    <div class="container-fluid" style="padding-top: 5rem;">
                        <div class="alert alert-primary" style="padding-top: 5rem;" role="alert">
                            cảm ơn bạn đã dặt hàng tại phone
                        </div>
                        <a href="/" class="btn btn-primary">Quay lại trang chủ
                        </a>
                    </div>

                    <c:import url="../layout/footer.jsp" />

                    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top">
                        <i class="bi bi-arrow-up"></i>
                    </a>
                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

                    <script src="/client/js/main.js"></script>

                </body>

                </html>