<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ include file="header.jsp" %> 
   <div class="parallax-background">
        <div class="parallax">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h4 class="find-text">Find Your Beautiful</h4>
                        <h1 class="template-text">TEMPLATE</h1>
                        <h1 class="free-text2"> FOR BEST <span class="yellow-text"> PRICE </span></h1>
                    </div>
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-6">
                        <div class="search-box">
                            <div class="form-group" style="display:flex;">
                                <select class="form-control form-control-lg" id="exampleFormControlSelect1">
      <option>Select keywords ...</option>
      <option>All Templates</option> 
    </select>
                                <a href="#all-templates" class="btn btn-custom serach-btn"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-white" id="all-templates">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1 class="purple-text"> I Created Beautiful templates for You </h1>
                    <p class="caption">if you think math is hard , try web design </p>
                </div>
            </div>
        </div>
        <hr>
        <div class="col-md-12">
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
        </div>
    </div>
    <!--footer-->
 <%@ include file="footer.jsp" %>
