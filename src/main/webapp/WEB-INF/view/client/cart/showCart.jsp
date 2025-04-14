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

                    <div class="container-fluid py-5">
                        <div class="container py-5">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">Products</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Handle</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${ empty cartDetails}">
                                            <tr>
                                                <td colspan="6" class="text-center">No products in the cart</td>
                                            </tr>
                                        </c:if>

                                        <c:if test="${ not empty cartDetails}">
                                            <c:forEach var="cartDetail" items="${cartDetails}">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="d-flex align-items-center">
                                                            <img src="/images/product/${cartDetail.product.image}"
                                                                class="img-fluid me-5 rounded-circle"
                                                                style="width: 80px; height: 80px;" alt="">
                                                        </div>
                                                    </th>
                                                    <td>
                                                        <p class="mb-0 mt-4">${cartDetail.product.name}</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0 mt-4">
                                                            <fmt:formatNumber value="${cartDetail.price}" type="number"
                                                                groupingUsed="true" /> VND
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <div class="input-group quantity mt-4" style="width: 100px;"
                                                            data-id="${cartDetail.id}">
                                                            <div class="input-group-btn">
                                                                <button type="button"
                                                                    class="btn btn-sm btn-minus rounded-circle bg-light border">
                                                                    <i class="fa fa-minus"></i>
                                                                </button>
                                                            </div>
                                                            <input type="text"
                                                                class="form-control form-control-sm text-center border-0 quantity-input"
                                                                value="${cartDetail.quantity}" />
                                                            <div class="input-group-btn">
                                                                <button type="button"
                                                                    class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                                    <i class="fa fa-plus"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0 mt-4">
                                                            <fmt:formatNumber
                                                                value="${cartDetail.price * cartDetail.quantity}"
                                                                type="number" groupingUsed="true" /> VND
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <!-- Form xoá riêng -->
                                                        <form id="deleteForm-${cartDetail.id}" method="post"
                                                            action="/cart/delete/${cartDetail.id}">
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />
                                                        </form>
                                                        <button type="button"
                                                            class="btn btn-md rounded-circle bg-light border mt-4"
                                                            onclick="document.getElementById('deleteForm-${cartDetail.id}').submit();">
                                                            <i class="fa fa-times text-danger"></i>
                                                        </button>

                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>

                            <!-- ✅ FORM cập nhật giỏ hàng, không lồng -->
                            <form id="updateCartForm" method="post" action="/cart/update" class="mt-4">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <div id="hiddenInputs"></div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <button type="submit" class="btn btn-primary rounded-pill px-4 py-2">Update
                                        Cart</button>
                                    <h5 class="mb-0">Total:
                                        <fmt:formatNumber value="${totalPrice}" type="number" groupingUsed="true" /> VND
                                    </h5>
                                </div>
                            </form>

                            <!-- Cart Summary Box -->
                            <div class="row g-4 justify-content-end mt-5">
                                <div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
                                    <div class="bg-light rounded">
                                        <div class="p-4">
                                            <h1 class="display-6 mb-4">Cart <span class="fw-normal">Total</span></h1>
                                            <div class="d-flex justify-content-between mb-4">
                                                <h5 class="mb-0 me-4">Subtotal:</h5>
                                                <p class="mb-0">
                                                    <fmt:formatNumber value="${totalPrice}" type="number"
                                                        groupingUsed="true" /> VND
                                                </p>
                                            </div>
                                            <div class="d-flex justify-content-between">
                                                <h5 class="mb-0 me-4">Shipping</h5>
                                                <p class="mb-0">0 VND</p>
                                            </div>
                                        </div>
                                        <div class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                            <h5 class="mb-0 ps-4 me-4">Total</h5>
                                            <p class="mb-0 pe-4">
                                                <fmt:formatNumber value="${totalPrice}" type="number"
                                                    groupingUsed="true" /> VND
                                            </p>
                                        </div>
                                        <div>
                                            <a class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4"
                                                href="/checkout">Proceed Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <c:import url="../layout/footer.jsp" />

                    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top">
                        <i class="bi bi-arrow-up"></i>
                    </a>

                    <!-- JavaScript Section -->
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            // Tăng / giảm số lượng
                            document.querySelectorAll(".btn-minus").forEach(btn => {
                                btn.addEventListener("click", () => {
                                    const input = btn.closest(".quantity").querySelector(".quantity-input");
                                    let val = parseInt(input.value);
                                    if (val > 1) input.value = val - 1;
                                });
                            });

                            document.querySelectorAll(".btn-plus").forEach(btn => {
                                btn.addEventListener("click", () => {
                                    const input = btn.closest(".quantity").querySelector(".quantity-input");
                                    let val = parseInt(input.value);
                                    input.value = val + 1;
                                });
                            });

                            // Trước khi submit form update, inject ids + quantities
                            document.getElementById("updateCartForm").addEventListener("submit", function (e) {
                                const hiddenContainer = document.getElementById("hiddenInputs");
                                hiddenContainer.innerHTML = "";

                                document.querySelectorAll(".quantity").forEach(group => {
                                    const id = group.getAttribute("data-id");
                                    const qty = group.querySelector(".quantity-input").value;

                                    const inputId = document.createElement("input");
                                    inputId.type = "hidden";
                                    inputId.name = "ids";
                                    inputId.value = id;

                                    const inputQty = document.createElement("input");
                                    inputQty.type = "hidden";
                                    inputQty.name = "quantities";
                                    inputQty.value = qty;

                                    hiddenContainer.appendChild(inputId);
                                    hiddenContainer.appendChild(inputQty);
                                });
                            });
                        });
                    </script>

                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

                    <script src="/client/js/main.js"></script>

                </body>

                </html>