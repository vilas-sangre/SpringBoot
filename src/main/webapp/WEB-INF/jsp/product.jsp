<!DOCTYPE html>


<%@include file="common/taglib_includes.jsp" %>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>LEOSERP</title>

     <jsp:include page="common/template.jsp"></jsp:include>
     <script src="resources/assets/js/jquery.mockjax.js"></script>
        <script src="resources/assets/js/bootstrap-typeahead.js"></script>
     <script><!--
	$(document).ready(function() {
		
		
		
		
		
	});
    
     
  
</script>
    </head>
    <body class="hold-transition sidebar-mini">        
        <!-- Site wrapper -->
        <div class="wrapper">
           <jsp:include page="common/menu.jsp"></jsp:include>
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <div class="header-title">
                              
                            <h1> Project</h1>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="/"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </div>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <!-- Form controls -->
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                    <div class="panel-heading">
                                        <div class="btn-group"> 
                                            <a class="btn btn-primary" href="productList"> <i class="fa fa-list"></i>  <spring:message code="product.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           				<form:form method="post" action="saveProduct" name="frm" id="frm"  enctype="multipart/form-data" commandName="product">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
<div class="col-md-6 form-group">
<label><spring:message code="product.productname"/> <i class='far fa-user'></i></label>
<input name="productname" id="productname" type='text' class="form-control" maxlength="10" value='product.productname'  />

</div>
<div class="col-md-6 form-group">
<label><spring:message code="product.description"/> <i class='far fa-user'></i></label>
<input name="description" id="description" type='text' class="form-control" maxlength="10" value='product.description'  />

</div><div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
   </div>
                                 </div>
                             </div>
                         </div>
                         
                     </section> <!-- /.content -->
                 </div> <!-- /.content-wrapper -->
                
            </div> <!-- ./wrapper -->
      

        <!-- End Core Plugins
        =====================================================================-->
        <!-- Start Theme label Script
        =====================================================================-->
        <jsp:include page="common/footerLib.jsp"></jsp:include>
    </body>
    

</html>
                       