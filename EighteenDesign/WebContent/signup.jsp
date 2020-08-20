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
                    <form action="signup.action"  method="post"  class="login-form" style="box-shadow: 0px 15px 25px -10px #000000;">
                        <div class="row">
                            <div class="col-md-12"> 
                                    <h3 class="welcome-text text-center">User Sign Up</h3> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text">First Name </label>
                                    <input placeholder="Enter your full name" type="text" class="form-control form-control" id="recipient-name" name="firstName" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text"> Last Name </label>
                                    <input placeholder="Enter your full name" type="text" class="form-control form-control" id="recipient-name" name="lastName" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text"> E-Mail </label>
                                    <input placeholder="E-mail" type="email" class="form-control form-control" id="recipient-name"  name="email" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="" class="form-control-label gray-text"> Password </label>
                                    <input type="Password" class="form-control" id="pwd" placeholder="Password"  name="password" required>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                            	<input type="hidden" class="form-control form-control"  name="role" value="USER">
                               <input type="submit"  class="btn btn-gradient btn-block" value="Sign Up">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <p class="caption2"> Already have an account? <a href="login.jsp" class="log-in-text"> Log in. </a></p>
                            </div>
                        </div>
                        <hr>
                        <div class="text-center mt-2">
                            <i class="text-black fa fa-user"></i> <a class="primary-text" href="admin-signup.jsp">ADMIN SIGNUP</a>
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
