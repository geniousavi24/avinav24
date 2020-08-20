<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!--Navbar End-->
<div class="parallax-background2"
	style="background-image: url(img/login6.jpg);">
	<div class="parallax2">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h4 class="find-text">Product Confirmation</h4>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="section-gray">
	<div class="container">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-success" role="alert">You are
						Successfully Done , Thank You for choosing this tamplete , Please
						Click the download Button for Download Your Template.</div>
				</div>
				<div class="col-md-12">
					<div class="mt-4 mb-4">
						<div class="detail-box-inside p-4">
							<div class="row">
								<div class="col-md-12">
									<p>
										<strong class="text-center pb-2">About Template</strong>
									</p>
									<p class="caption mt-0">This is a beautiful Bootstrap 4
										template. Developed on top of powerful Bootstrap 4 framework,
										This Template is fully Responsive, clean, easy to customize
										and creative template.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<table class="table table-white">
						<thead class="thead-inverse">
							<tr>
								<th scope="col">Customer Email ID</th>
								<th scope="col">Customer Name</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">${session.userDetail.email}</th>
								<td>${session.userDetail.firstName}
									${session.userDetail.lastName}</td>
							</tr>
						</tbody>
					</table>
				</div>


				<div class="col-md-12">
					<table class="table table-white">
						<thead class="thead-inverse">
							<tr>
								<th scope="col">Template ID</th>
								<th scope="col">Template Name</th>
								<th scope="col">Template Type</th>
								<th scope="col">Template Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">${themeContent.blogid}</th>
								<td>${themeContent.title}</td>
								<td>${themeContent.themeType}</td>
								<td>INR - ${themeContent.price}</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="col-md-12 mt-4">
					<center>
						<a  href="getImageByPath?imgpath=${themeContent.imagePath}"
							class="btn btn-gradient text-center mb-5" download="${themeContent.title}.jpg">Download Template</a>
					</center>
				</div>

			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
