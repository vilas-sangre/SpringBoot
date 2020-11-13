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
                                            <a class="btn btn-primary" href="resultAnalysisFileList"> <i class="fa fa-list"></i>  <spring:message code="resultAnalysisFile.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="saveResultAnalysisFile" name="frm" id="frm"  enctype="multipart/form-data" commandName="resultAnalysisFile">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.id"/></label>
<form:input path="id" id="id" type='number' class="form-control onlyNumberWithOutDecimal"    />
<form:errors path="id" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.file_name"/></label>
<form:input path="file_name" id="file_name"  class="form-control textAreaClass"  maxlength="500"  />
<form:errors path="file_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.created_user"/></label>
<form:input path="created_user" id="created_user"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="created_user" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.created_date"/></label>
<form:input path="created_date" id="created_date" type='text' class="form-control dateControl"    />
<form:errors path="created_date" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.branch_name"/></label>
<form:input path="branch_name" id="branch_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="branch_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.semester"/></label>
<form:input path="semester" id="semester"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="semester" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.month"/></label>
<form:input path="month" id="month"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="month" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.year"/></label>
<form:input path="year" id="year"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="year" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.college_code"/></label>
<form:input path="college_code" id="college_code"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="college_code" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.college_name"/></label>
<form:input path="college_name" id="college_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="college_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="resultAnalysisFile.result_date"/></label>
<form:input path="result_date" id="result_date"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="result_date" cssStyle="color:red"></form:errors> 
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
                       