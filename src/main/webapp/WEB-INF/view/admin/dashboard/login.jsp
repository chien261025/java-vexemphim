<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="css/main.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
     <body>
        
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="images/team.jpg" alt="IMG">
                    </div>
                    <!--=====TIÊU ĐỀ======-->
                    <form class="login100-form validate-form">
                        <span class="login100-form-title">
                            <b>ĐĂNG NHẬP HỆ THỐNG admin</b>
                        </span>
                        <!--=====FORM INPUT TÀI KHOẢN VÀ PASSWORD======-->
                        <form action="">
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="text" placeholder="Tài khoản quản trị" name="username"
                                    id="username">
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class='bx bx-user'></i>
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input">
                                <input autocomplete="off" class="input100" type="password" placeholder="Mật khẩu"
                                    name="current-password" id="password-field">
                                <span toggle="#password-field" class="bx fa-fw bx-hide field-icon click-eye"></span>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class='bx bx-key'></i>
                                </span>
                            </div>
    
                            <!--=====ĐĂNG NHẬP======-->
                            <div class="container-login100-form-btn">
                                <input type="button" value="Đăng nhập" id="submit" onclick="validate(); window.location.href='index.html';" />
                            </div>
                            <!--=====LINK TÌM MẬT KHẨU======-->
                            <div class="text-right p-t-12">
                                <a class="txt2" href="/password.html">
                                    Bạn quên mật khẩu?
                                </a>
                            </div>
                        </form>
                    </form>
                </div>
            </div>
        </div>
        <!--Javascript-->
        <script src="/js/main.js"></script>
        <script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script type="text/javascript">
            //show - hide mật khẩu
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text"
                } else {
                    x.type = "password";
                }
            }
            $(".click-eye").click(function () {
                $(this).toggleClass("bx-show bx-hide");
                var input = $($(this).attr("toggle"));
                if (input.attr("type") == "password") {
                    input.attr("type", "text");
                } else {
                    input.attr("type", "password");
                }
            });
        </script>
    </body> 
    
</html>