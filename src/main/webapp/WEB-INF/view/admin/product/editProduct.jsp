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
                <title>Create User - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/admin/css/styles.css" rel="stylesheet" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#productPreview");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#productPreview").attr("src", imgURL);
                            $("#productPreview").css({ "display": "block" });
                        });
                    });
                </script>
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
                                        <h3>Edit Product</h3>
                                        <hr>
                                        <form:form method="POST" action="/admin/product/editProduct"
                                            enctype="multipart/form-data" modelAttribute="editProduct">
                                            <div class="form-row">
                                                <div class="form-group col-md-6" style="display: none;">
                                                    <label for="inputId">Id:</label>
                                                    <form:input path="id" cssClass="form-control" id="inputId" />
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="inputName">Name:</label>
                                                        <form:input path="name" cssClass="form-control"
                                                            id="inputName" />
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="inputPrice">Price</label>
                                                        <form:input path="price" cssClass="form-control"
                                                            id="inputPrice" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputDetailed">Detailed Description:</label>
                                                    <form:input path="detailedDescription" cssClass="form-control"
                                                        id="inputDetailed" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputShort">Short Description:</label>
                                                    <form:input path="shortDescription" cssClass="form-control"
                                                        id="inputShort" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputQuantity">Quantity:</label>
                                                    <form:input path="quantity" cssClass="form-control"
                                                        id="inputQuantity" />
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                        <label for="inputFactory">Factory:</label>
                                                        <form:select path="factory" cssClass="form-control"
                                                            id="inputFactory">
                                                            <form:option value="APPLE">Apple</form:option>
                                                            <form:option value="SAMSUNG">Samsung</form:option>
                                                            <form:option value="OPPO">Oppo</form:option>

                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="mb-3 col-md-6 col-12">
                                                    <label for="imageFile" class="form-label">image</label>
                                                    <input class="form-control" type="file" id="imageFile"
                                                        accept=".png, .jpg, .jpeg" name="productFile" />
                                                </div>

                                                <div class="mb-3 col-12">
                                                    <img style="display: none; max-height:250px ;" src=""
                                                        alt="product preview" id="productPreview">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Edit</button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </body>

            </html>