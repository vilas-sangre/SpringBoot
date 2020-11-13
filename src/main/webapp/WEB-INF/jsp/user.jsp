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
                                            <a class="btn btn-primary" href="userList"> <i class="fa fa-list"></i>  <spring:message code="user.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="saveUser" name="frm" id="frm"  enctype="multipart/form-data" commandName="user">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                 <div class="col-sm-6 form-group">
<label><spring:message code="user.id"/></label>
<form:input path="id" id="id" type='number' class="form-control onlyNumberWithOutDecimal"    />
<form:errors path="id" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.user_name"/></label>
<form:input path="user_name" id="user_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="user_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.password"/></label>
<form:input path="password" id="password"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="password" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.enrollement_no"/></label>
<form:input path="enrollement_no" id="enrollement_no"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="enrollement_no" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.first_name"/></label>
<form:input path="first_name" id="first_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="first_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.last_name"/></label>
<form:input path="last_name" id="last_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="last_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.mobile"/></label>
<form:input path="mobile" id="mobile"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="mobile" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.email_id"/></label>
<form:input path="email_id" id="email_id"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="email_id" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.address"/></label>
<form:input path="address" id="address"  class="form-control textAreaClass"  maxlength="500"  />
<form:errors path="address" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.role"/></label>
<form:input path="role" id="role"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="role" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.active"/></label>
<form:input path="active" id="active"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="active" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="user.created_date"/></label>
<form:input path="created_date" id="created_date" type='text' class="form-control dateControl"    />
<form:errors path="created_date" cssStyle="color:red"></form:errors> 
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
                       