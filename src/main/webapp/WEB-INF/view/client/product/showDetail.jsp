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
                    <!-- Spinner Start -->
                    <div id="spinner"
                        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                        <div class="spinner-border text-primary" role="status"></div>
                    </div>
                    <!-- Spinner End -->

                    <c:import url="../layout/header.jsp" />

                <!-- Product Detail Start -->
                <div class="container mt-5">
                    <div class="row">
                        <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-x.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
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

                            <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-11.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 11</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$699.00</span>
                                <span class="text-muted text-decoration-line-through">$749.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                iPhone 11 với chip A13 Bionic mạnh mẽ, hệ thống camera kép 12 MP và màn hình Liquid Retina 6.1 inch, mang lại hiệu suất cao và trải nghiệm hình ảnh tuyệt đẹp.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(230 reviews)</span>
                            </div>

                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 11</li>
                                <li><strong>Processor:</strong> A13 Bionic</li>
                                <li><strong>RAM:</strong> 4 GB</li>
                                <li><strong>Storage:</strong> 64 GB / 128 GB / 256 GB</li>
                                <li><strong>Camera:</strong> 12 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 3110 mAh (Fast Charging 18W)</li>
                                <li><strong>Display:</strong> 6.1-inch Liquid Retina HD</li>
                                <li><strong>Operating System:</strong> iOS 13 (upgradable to iOS 17)</li>
                                <li><strong>Connectivity:</strong> 4G LTE, Wi-Fi 6, Bluetooth 5.0</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-12.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 12</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$799.00</span>
                                <span class="text-muted text-decoration-line-through">$899.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                The powerful iPhone 12 with A14 Bionic chip, advanced dual-camera system, and Super Retina XDR display.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(200 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 12</li>
                                <li><strong>Processor:</strong> A14 Bionic</li>
                                <li><strong>RAM:</strong> 4 GB</li>
                                <li><strong>Storage:</strong> 64 GB / 128 GB / 256 GB</li>
                                <li><strong>Camera:</strong> 12 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 2815 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.1-inch Super Retina XDR OLED</li>
                                <li><strong>Operating System:</strong> iOS 14 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 6, Bluetooth 5.0</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-13.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 13</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$899.00</span>
                                <span class="text-muted text-decoration-line-through">$999.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                The next-generation iPhone 13 with A15 Bionic chip, improved dual-camera system, and Ceramic Shield protection.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(250 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 13</li>
                                <li><strong>Processor:</strong> A15 Bionic</li>
                                <li><strong>RAM:</strong> 4 GB</li>
                                <li><strong>Storage:</strong> 128 GB / 256 GB / 512 GB</li>
                                <li><strong>Camera:</strong> 12 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 3240 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.1-inch Super Retina XDR OLED</li>
                                <li><strong>Operating System:</strong> iOS 15 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 6, Bluetooth 5.0</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-14.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 14</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$799.00</span>
                                <span class="text-muted text-decoration-line-through">$899.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                The latest iPhone 14 with A15 Bionic chip, improved dual-camera system, and emergency SOS via satellite.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(300 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 14</li>
                                <li><strong>Processor:</strong> A15 Bionic</li>
                                <li><strong>RAM:</strong> 6 GB</li>
                                <li><strong>Storage:</strong> 128 GB / 256 GB / 512 GB</li>
                                <li><strong>Camera:</strong> 12 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 3279 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.1-inch Super Retina XDR OLED</li>
                                <li><strong>Operating System:</strong> iOS 16 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 6, Bluetooth 5.3</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-15.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 15</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$899.00</span>
                                <span class="text-muted text-decoration-line-through">$999.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                The latest iPhone 15 with A16 Bionic chip, advanced dual-camera system, and Dynamic Island for an immersive experience.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(500 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 15</li>
                                <li><strong>Processor:</strong> A16 Bionic</li>
                                <li><strong>RAM:</strong> 6 GB</li>
                                <li><strong>Storage:</strong> 128 GB / 256 GB / 512 GB / 1 TB</li>
                                <li><strong>Camera:</strong> 48 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 3500 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.1-inch Super Retina XDR OLED with Dynamic Island</li>
                                <li><strong>Operating System:</strong> iOS 17 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 6E, Bluetooth 5.3, USB-C</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-15-pro.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 15 Pro</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$999.00</span>
                                <span class="text-muted text-decoration-line-through">$1099.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                Experience the power of iPhone 15 Pro with the A17 Pro chip, titanium design, ProMotion display, and advanced camera system.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(750 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 15 Pro</li>
                                <li><strong>Processor:</strong> A17 Pro</li>
                                <li><strong>RAM:</strong> 8 GB</li>
                                <li><strong>Storage:</strong> 128 GB / 256 GB / 512 GB / 1 TB</li>
                                <li><strong>Camera:</strong> 48 MP + 12 MP + 12 MP (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 3650 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.1-inch Super Retina XDR OLED with ProMotion (120Hz)</li>
                                <li><strong>Operating System:</strong> iOS 17 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 6E, Bluetooth 5.3, USB-C</li>
                                <li><strong>Build Material:</strong> Titanium frame</li>
                                <li><strong>Availability:</strong> In Stock</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                                <!-- Ảnh sản phẩm -->
                        <div class="col-md-6">
                            <div class="product-img">
                                <img id="product-img" src="/client/img/iphone-16.jpg" alt="Product Image" class="img-fluid rounded shadow-sm">
                            </div>
                        </div>
                        <!-- Nội dung chi tiết -->
                        <div class="col-md-6">
                            <h2 id="product-title" class="mb-3">iPhone 16</h2>
                            <div class="mb-3">
                                <span class="text-primary h4" id="product-price">$1099.00</span>
                                <span class="text-muted text-decoration-line-through">$1199.00</span>
                            </div>
                            <p id="product-description" class="text-muted">
                                The future of smartphones is here with iPhone 16. Featuring the latest A18 Bionic chip, ultra-slim design, enhanced AI capabilities, and a groundbreaking camera system.
                            </p>

                            <!-- Nút thêm vào giỏ hàng -->
                            <div class="d-flex align-items-center mb-3">
                                <input type="number" class="form-control w-25 mr-2" value="1" min="1">
                                <button class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>

                            <!-- Xếp hạng sản phẩm -->
                            <div class="mb-3">
                                <span class="text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                                <span class="ml-2 text-muted">(500 reviews)</span>
                            </div>
                            
                            <!-- Thông số kỹ thuật -->
                            <ul class="list-unstyled">
                                <li><strong>Brand:</strong> Apple</li>
                                <li><strong>Model:</strong> iPhone 16</li>
                                <li><strong>Processor:</strong> A18 Bionic</li>
                                <li><strong>RAM:</strong> 10 GB</li>
                                <li><strong>Storage:</strong> 128 GB / 256 GB / 512 GB / 1 TB</li>
                                <li><strong>Camera:</strong> 48 MP + 12 MP + 12 MP + LiDAR (rear), 12 MP (front)</li>
                                <li><strong>Battery:</strong> 4000 mAh (Fast Charging, MagSafe support)</li>
                                <li><strong>Display:</strong> 6.3-inch Super Retina XDR OLED with ProMotion (120Hz)</li>
                                <li><strong>Operating System:</strong> iOS 18 (upgradable to latest iOS)</li>
                                <li><strong>Connectivity:</strong> 5G, Wi-Fi 7, Bluetooth 5.4, USB-C</li>
                                <li><strong>Build Material:</strong> Titanium frame with Ceramic Shield</li>
                                <li><strong>AI Features:</strong> Advanced AI-driven photography and voice assistant</li>
                                <li><strong>Availability:</strong> Coming Soon</li>
                                <li><strong>Shipping:</strong> Free shipping worldwide</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Product Detail End -->
                    <c:import url="../layout/footer.jsp" />

            </body>
            </html>
