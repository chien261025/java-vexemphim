<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
                <a href="/" class="navbar-brand ms-4 ms-lg-0">
                    <h1 class="fw-bold text-primary m-0">Ph<span class="text-secondary">o</span>ne</h1>
                </a>
                <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex" id="navbarCollapse">
                    <div class="navbar-nav ms-auto p-4 p-lg-0">
                        <a href="/" class="nav-item nav-link active">Home</a>
                        <a href="/product" class="nav-item nav-link">Products</a>
                    </div>
                    <div class="navbar-nav ms-auto p-4 p-lg-0">
                        <c:if test="${not empty pageContext.request.userPrincipal}">
                            <div class="d-flex ms-3">
                                <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                                    <small class="fa fa-shopping-bag text-body fa-2x"></small>
                                </a>
                                <a class="btn-sm-square bg-white rounded-circle ms-3" id="navbarDropdown" href=""
                                    role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <small class="fa fa-user text-body fa-2x"></small>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <li>
                                        <c:out value="${sessionScope.fullName}" />
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li>
                                        <form action="/logout" method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <button class="dropdown-item">Logout</button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </c:if>

                        <c:if test="${empty pageContext.request.userPrincipal}">
                            <a href="/login" class="btn">Login</a>
                            <a href="/register" class="btn">Register</a>
                        </c:if>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->