<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="section-white">
	<div class="col-md-12">
		<div class="row text-center">
			<s:iterator value="themeContentList" var="theme" status="rowstatus">
				<div class="col-md-3">
					<div class="templates-box">
						<div class="btns-top">
							<!-- <a href="product-details.html" class="btn btn-primary">UPDATE</a> -->
							<s:if
								test="#session.email != null && #session.userDetail.role == 'ADMIN' ">
								<a href="deleteTheme?blogid=${theme.blogid}" class="btn btn-danger">DELETE</a>
								<a href="product-detail?blogid=${theme.blogid}" class="btn btn-primary">DETAIL</a>
							</s:if>
							<s:if
								test="#session.email != null && #session.userDetail.role != 'ADMIN' ">
								<a href="product-detail?blogid=${theme.blogid}" class="btn btn-gradient text-center">MORE DETAIL</a>
							</s:if>
							<s:if test="#session.email == null">
								<a href="product-detail?blogid=${theme.blogid}" class="btn btn-gradient text-center">MORE DETAIL</a>
							</s:if>
						</div>
						<img src="getImageByPath?imgpath=${theme.imagePath}"
							class="img-fluid" alt="profile image" />
					</div>
				</div>
			</s:iterator>
		</div>
	</div>
</div>