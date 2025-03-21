<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Password Reset - SB Admin</title>
        <link href="css/main.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="images/fg-img.png" alt="IMG">
                  </div>
                    <form class="login100-form validate-form">
                        <span class="login100-form-title">
                            <b>KHÔI PHỤC MẬT KHẨU</b>
                        </span>
                        <form action="custommer.html">
                            <div class="wrap-input100 validate-input"
                                data-validate="Bạn cần nhập đúng thông tin như: ex@abc.xyz">
                                <input class="input100" type="text" placeholder="Nhập email" name="emailInput"
                                    id="emailInput" value="" />
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class='bx bx-mail-send' ></i>
                                </span>
                            </div>
                            <div class="container-login100-form-btn">
                                <input type="button" onclick="return RegexEmail('emailInput')" value="Lấy mật khẩu" />
                            </div>
    
                            <div class="text-center p-t-12">
                                <a class="txt2" href="/index.html">
                                    Trở về đăng nhập
                                </a>
                            </div>
                        </form>
                    </form>
                </div>
            </div>
        </div>
       <!--===============================================================================================-->
       <script src="/js/main.js"></script>
       <!--===============================================================================================-->
       <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
       <!--===============================================================================================-->
       <script src="vendor/bootstrap/js/popper.js"></script>
       <!--===============================================================================================-->
       <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
       <!--===============================================================================================-->
       <script src="vendor/select2/select2.min.js"></script>
       <!--===============================================================================================-->
       
    </body>
</html>
