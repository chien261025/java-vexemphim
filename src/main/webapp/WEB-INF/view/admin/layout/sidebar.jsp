<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="/dashboard/index.jsp">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-tachometer-alt"></i> <!-- FontAwesome icon for the dashboard -->
                                </div>
                                dashboard
                            </a>
                            <a class="nav-link" href="/admin/table">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-tachometer-alt"></i> <!-- FontAwesome icon for the dashboard -->
                                </div>
                                User
                            </a>
                            <a class="nav-link" href="/dashboard/index.jsp">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-tachometer-alt"></i> <!-- FontAwesome icon for the dashboard -->
                                </div>
                                Product
                            </a>
                            <a class="nav-link" href="/dashboard/index.jsp">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-tachometer-alt"></i> <!-- FontAwesome icon for the dashboard -->
                                </div>
                                Order
                            </a>
                        </div>
                    </div>
                </nav>
            </div>