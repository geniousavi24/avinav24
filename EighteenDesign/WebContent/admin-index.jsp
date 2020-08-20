  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %> 
  <%@ include file="admin-header.jsp" %> 

    <div class="parallax-background2" style="background-image: url(img/login6.jpg);">
        <div class="parallax2">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h4 class="find-text">Upload New Template</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section-gray pt-2 pb-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form action="insertThemeContent"  method="POST" enctype="multipart/form-data" class="detail-box-inside p-3 mt-4 mb-4">
                        <div class="row">
                            <div class="form-group col-md-3">
                                <label>Choose File</label>
                                <input type="file" class="form-control-file" name="uploadFile">
                            </div>
                            <div class="form-group col-md-3">
                                <label>Template Name</label>
                                <input type="text" class="form-control" placeholder="Enter Name" name="themeType">
                            </div>
                            <div class="form-group col-md-2">
                                <label>Template Type</label>
                                <input type="text" class="form-control" placeholder="Enter Type" name="title">
                            </div>
                            <div class="form-group col-md-2">
                                <label>Template Price</label>
                                <input type="number" class="form-control" placeholder="Enter Price" name="price">
                            </div>
                            <div class="form-group col-md-2 mt-4">
                               <input type="submit" value="ADD" class="btn btn-gradient btn-block text-center">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
 <script>
	$(document).ready(function() {
				/* setTimeout(template-list-plugin, 3000); */
				template_list_plugin();
	});

	function template_list_plugin()
	{
		var formURL = "template-list-plugin";
		console.debug("going to submit");
		$.ajax({
			url : formURL,
			type : "GET",
			data : "",
			success : function(data,textStatus,jqXHR) {
				if (jqXHR.status == 200) {
					console.debug(jqXHR.status);
					console.debug(data);
					$("#theme-list").html(data);
					setInterval(function() {
						$("#theme-list").show();
					}, 1000); 
				} 
			},
			error : function(jqXHR,textStatus,errorThrown) {
				console.debug(jqXHR.status);
				$("#theme-list").html("No Theme Found");
			}
		});
	}
	</script>
 <div id="theme-list">
</div>       

     <!--footer-->
 <%@ include file="footer.jsp" %>