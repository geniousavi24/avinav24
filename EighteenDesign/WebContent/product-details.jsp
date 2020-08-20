<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ include file="header.jsp" %> 
    <!--Navbar End-->
    <div class="parallax-background2" style="background-image: url(img/login5.jpg);">
        <div class="parallax2">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h4 class="find-text">Product Information</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-gray">
        <div class="container">
            <div class="col-md-12">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="product-details mb-4">
                        <img src="getImageByPath?imgpath=${themeContent.imagePath}" class="img-fluid  full-view-img" alt="profile image" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="detail-box mb-4">
                            <div class="detail-box-inside pt-4 pb-4">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <h1 class="purple-text dark-text font-25 mt-4"> ${themeContent.title} </h1>
                                        <p class="caption">${themeContent.themeType} </p>
                                        <div class="" style="margin-bottom: 25px;">
                                            <a href="#!" style="text-decoration: none;"> <i class="fa fa-star"></i> </a>
                                            <a href="#!" style="text-decoration: none;"> <i class="fa fa-star"></i> </a>
                                            <a href="#!" style="text-decoration: none;"> <i class="fa fa-star"></i> </a>
                                            <a href="#!" style="text-decoration: none;"> <i class="fa fa-star"></i> </a>
                                            <span class="ml-2"> 4/5 </span>
                                            <h1 class="purple-text mt-4 mb-4 font-40"> <i class="fa fa-inr"></i> ${themeContent.price} </h1>
                                            <s:if test="#session.email != null">
												<a href="product-confirmation?blogid=${themeContent.blogid}" class="btn btn-gradient text-center">Continue</a>
                							</s:if>
						                 <s:if test="#session.email == null">
						           				<a href="login.jsp" class="btn btn-pink-outline">Log In</a>
						        		</s:if>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-box-inside mt-4 p-4">
                                <div class="row text-left">
                                    <div class="col-md-12">
                                        <h1 class="purple-text dark-text font-25 mt-0"> Features: </h1>
                                        <%-- <li class="caption">${themeContent.description}</li> --%>
                                        <li class="caption">Bootstrap 4</li>
                                        <li class="caption">Responsive design</li>
                                        <li class="caption">Clean &amp; well-commented code</li>
                                        <li class="caption">HTML5 &amp; CSS3</li>
                                        <li class="caption">Fully responsive design</li>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <%@ include file="footer.jsp" %>