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
                                            <a class="btn btn-primary" href="resultAnalysisList"> <i class="fa fa-list"></i>  <spring:message code="resultAnalysis.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="saveResultAnalysis" name="frm" id="frm"  enctype="multipart/form-data" commandName="resultAnalysis">
                          <form:hidden path="id" id="id"  class="form-control onlyNumberWithOutDecimal"    />
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                 

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.user_name"/></label>
<form:input path="user_name" id="user_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="user_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.seat_no"/></label>
<form:input path="seat_no" id="seat_no"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="seat_no" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.student_name"/></label>
<form:input path="student_name" id="student_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="student_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.branch_name"/></label>
<form:input path="branch_name" id="branch_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="branch_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.semester"/></label>
<form:input path="semester" id="semester"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="semester" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.month"/></label>
<form:input path="month" id="month"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="month" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.year"/></label>
<form:input path="year" id="year"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="year" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.college_code"/></label>
<form:input path="college_code" id="college_code"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="college_code" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.college_name"/></label>
<form:input path="college_name" id="college_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="college_name" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.result_date"/></label>
<form:input path="result_date" id="result_date"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="result_date" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.created_date"/></label>
<form:input path="created_date" id="created_date" type='text' class="form-control dateControl"    />
<form:errors path="created_date" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.created_user"/></label>
<form:input path="created_user" id="created_user"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="created_user" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subect1_name"/></label>
<form:input path="subect1_name" id="subect1_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subect1_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject11"/></label>
<form:input path="subject11" id="subject11" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject11" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject12"/></label>
<form:input path="subject12" id="subject12" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject12" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject13"/></label>
<form:input path="subject13" id="subject13" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject13" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject2_name"/></label>
<form:input path="subject2_name" id="subject2_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject2_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject21"/></label>
<form:input path="subject21" id="subject21" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject21" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject22"/></label>
<form:input path="subject22" id="subject22" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject22" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject23"/></label>
<form:input path="subject23" id="subject23" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject23" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject3_name"/></label>
<form:input path="subject3_name" id="subject3_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject3_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject31"/></label>
<form:input path="subject31" id="subject31" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject31" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject32"/></label>
<form:input path="subject32" id="subject32" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject32" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject33"/></label>
<form:input path="subject33" id="subject33" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject33" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject4_name"/></label>
<form:input path="subject4_name" id="subject4_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject4_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject41"/></label>
<form:input path="subject41" id="subject41" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject41" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject42"/></label>
<form:input path="subject42" id="subject42" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject42" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject43"/></label>
<form:input path="subject43" id="subject43" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject43" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject5_name"/></label>
<form:input path="subject5_name" id="subject5_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject5_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject51"/></label>
<form:input path="subject51" id="subject51" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject51" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject52"/></label>
<form:input path="subject52" id="subject52" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject52" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject53"/></label>
<form:input path="subject53" id="subject53" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject53" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject6_name"/></label>
<form:input path="subject6_name" id="subject6_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject6_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject61"/></label>
<form:input path="subject61" id="subject61" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject61" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject62"/></label>
<form:input path="subject62" id="subject62" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject62" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject63"/></label>
<form:input path="subject63" id="subject63" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject63" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject7_name"/></label>
<form:input path="subject7_name" id="subject7_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject7_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject71"/></label>
<form:input path="subject71" id="subject71" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject71" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject72"/></label>
<form:input path="subject72" id="subject72" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject72" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject73"/></label>
<form:input path="subject73" id="subject73" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject73" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject8_name"/></label>
<form:input path="subject8_name" id="subject8_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject8_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject81"/></label>
<form:input path="subject81" id="subject81" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject81" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject82"/></label>
<form:input path="subject82" id="subject82" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject82" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject83"/></label>
<form:input path="subject83" id="subject83" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject83" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject9_name"/></label>
<form:input path="subject9_name" id="subject9_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject9_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject91"/></label>
<form:input path="subject91" id="subject91" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject91" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject92"/></label>
<form:input path="subject92" id="subject92" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject92" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject93"/></label>
<form:input path="subject93" id="subject93" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject93" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject10_name"/></label>
<form:input path="subject10_name" id="subject10_name"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="subject10_name" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject101"/></label>
<form:input path="subject101" id="subject101" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject101" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject102"/></label>
<form:input path="subject102" id="subject102" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject102" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.subject103"/></label>
<form:input path="subject103" id="subject103" type='text' class="form-control" maxlength="10"   />
<form:errors path="subject103" cssStyle="color:red"></form:errors> 
</div>


 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.sgpi"/></label>
<form:input path="sgpi" id="sgpi"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="sgpi" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group">
<label><spring:message code="resultAnalysis.cgpi"/></label>
<form:input path="cgpi" id="cgpi"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="cgpi" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group"  style="display:none;">
<label><spring:message code="resultAnalysis.active"/></label>
<form:input path="active" id="active"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="active" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-3 form-group" style="display:none;">
<label><spring:message code="resultAnalysis.parent_record_id"/></label>
<form:input path="parent_record_id" id="parent_record_id" type='number' class="form-control onlyNumberWithOutDecimal"    />
<form:errors path="parent_record_id" cssStyle="color:red"></form:errors> 
</div>


		  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                   <button type='button' onclick="location.href='dashboard'" class="btn btn-add">Go To Dashboard</button>
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
                       