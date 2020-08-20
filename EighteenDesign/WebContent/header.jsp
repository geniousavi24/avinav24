<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body> 
     <!--Navbar Start-->
    <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
    <a href="" class="menu-icn"><i class="fa fa-bars" aria-hidden="true"></i></a>
  </button>
        <a class="navbar-brand" href="index.jsp"><img class="img-fluid" src="img/logo.png"></a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp"><i class="fa fa-home"></i> Home</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp"><i class="fa fa-info-circle" aria-hidden="true"></i> About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contacts.jsp"><i class="fa fa-phone"></i> Contact us</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
            	<%-- <s:if test="#session.email != null">
					<i class="fa fa-user-circle-o" aria-hidden="true"></i>   ${session.userDetail.firstName}
	            	<a href="logout.action" class="pp-up"><i class="fa fa-user-circle-o" aria-hidden="true"></i>  Log Out </a>
                </s:if> --%> <%-- <%= request.getContextPath()%>/ --%>
                
                <s:if test="#session.email != null">
           			<span class="pp-up"><i class="fa fa-user-circle-o" aria-hidden="true"></i> ${session.userDetail.firstName} </span>
           			<a href="logout.action" class="pp-up" style="border-left: 1px dotted #888;"><i class="fa fa-user-circle-o" aria-hidden="true"></i>  Log Out </a> 
        		</s:if>
                
                
                 <s:if test="#session.email == null">
           			<a href="login.jsp" class="pp-up"><i class="fa fa-user-circle-o" aria-hidden="true"></i>  Log In </a>
        			<a href="login.jsp" class="pp-up" style="border-left: 1px dotted #888;"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Sign Up </a>
        		</s:if>
                
            </form>
        </div>
    </nav>
    <!--Navbar End--> 
</body>
</html>