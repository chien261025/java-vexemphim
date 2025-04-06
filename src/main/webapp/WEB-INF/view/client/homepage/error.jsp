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
                    <link href="../admin/css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                </head>
            <body>
                <div id="frem">
                    <p>403</p>
                    <h2>Ôi không! Có vẻ bạn đi lạc rồi... và cánh cổng này đang khoá! 🔒 </h2>
                    <h5>Quyền truy cập bị giới hạn. &nbsp; Sẽ quay lại trang chủ sau <span id="sogiay">20</span> giây nữa...</h5>
                    <br>
                    <h5></h5>
                    <a href="/" id="homeLink">về trang chủ</a>
                </div>
                <script>
                    var sogiay=20;
                    setTimeout("document.location='/'", sogiay * 1000); // Redirecting to home page
                    setInterval("document.getElementById('sogiay').innerHTML=sogiay--;",1000);
                    </script>
            </body>
            </html>