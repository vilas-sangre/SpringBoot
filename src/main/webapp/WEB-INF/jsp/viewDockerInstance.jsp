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
                            <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>  
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
                                            <a class="btn btn-primary" href="dockerInstanceList"> <i class="fa fa-list"></i>  <spring:message code="dockerInstance.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="updateDockerInstance" name="frm" id="frm"  enctype="multipart/form-data" commandName="dockerInstance">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.id"/></label>
<form:textarea path="id" id="id"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="id" cssStyle="color:red"></form:errors> 
</div>

<div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.name"/></label>
<form:textarea path="name" id="name"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.command_1"/></label>
<form:textarea path="command_1" id="command_1"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="command_1" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.command_2"/></label>
<form:textarea path="command_2" id="command_2"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="command_2" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.command_3"/></label>
<form:textarea path="command_3" id="command_3"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="command_3" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.command_4"/></label>
<form:textarea path="command_4" id="command_4"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="command_4" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.parameter_1"/></label>
<form:textarea path="parameter_1" id="parameter_1"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="parameter_1" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.parameter_2"/></label>
<form:textarea path="parameter_2" id="parameter_2"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="parameter_2" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="dockerInstance.parameter_3"/></label>
<form:textarea path="parameter_3" id="parameter_3"  class="form-control textAreaClass"  maxlength="255"  />
<form:errors path="parameter_3" cssStyle="color:red"></form:errors> 
</div>


		  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
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
                       