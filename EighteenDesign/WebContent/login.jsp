<!-- DOCTYPE -->
<!DOCTYPE html>

<html>

<head>
    <title>18 Design</title>
    <meta charset="utf-8">
    <!-- Viewport Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="img/fav-icon.png">


    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body style="background-image: url(img/login.jpg);
    background-attachment: fixed;
    background-size: cover;">

    <div class="parallax-login">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center">
                    <div class="row"> 
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <img src="img/18-logo-white.png" class="img-fluid">
                            </div> 
                    </div>
                    <h4 class="find-text">I Created Beautiful</h4>
                    <h1 class="template-text" style="font-size: 50px;">TEMPLATES</h1>
                    <h1 class="free-text"> <span class="for-rotate"> FOR </span> YOU</h1>
                </div>
                <div class="col-md-4">
                    <form action="login.action" method="post" class="login-form" style="box-shadow: 0px 15px 25px -10px #000000;">
                        <div class="row">
                            <div class="col-md-12"> 
                                    <h3 class="welcome-text text-center">User Login</h3>
                                    <%-- <div class="alert">${message}</div>  --%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text"> E-Mail </label>
                                    <input placeholder="E-mail" type="email"  name="email" class="form-control form-control" id="recipient-name" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text"> Password </label>
                                    <input type="Password" class="form-control" id="pwd" placeholder="Password" name="password" required>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                            	<input type="submit" class="btn btn-gradient btn-block" value="Log In">
                                <!-- <a href="index.html" class="btn btn-gradient btn-block">Log In</a> -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="caption2">Don't have an account? <a href="signup.jsp" class="sign-up-text"> Sign up. </a></p>
                            </div>
                        </div>
                        <hr>
                        <div class="text-center mt-2">
                            <i class="text-black fa fa-user"></i> <a class="primary-text" href="admin-login.jsp">ADMIN LOGIN</a>
                        </div>
                    </form>
                    <div class="white-text text-center" style="margin-bottom:20px;">
                        © 2018 <i class="fa fa-heart"></i> <a class="red-text" href="#">18design.com</a>, all rights reserved.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>

</html>
