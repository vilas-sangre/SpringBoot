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
                                            <a class="btn btn-primary" href="commitionMasterList"> <i class="fa fa-list"></i>  <spring:message code="commitionMaster.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="saveCommitionMaster" name="frm" id="frm"  enctype="multipart/form-data" commandName="commitionMaster">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.id"/></label>
<form:input path="id" id="id" type='number' class="form-control onlyNumberWithOutDecimal"    />
<form:errors path="id" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.vehicleType"/></label>
<form:input path="vehicleType" id="vehicleType"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="vehicleType" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.policyType"/></label>
<form:input path="policyType" id="policyType"  class="form-control textAreaClass"  maxlength="200"  />
<form:errors path="policyType" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.insurer"/></label>
<form:input path="insurer" id="insurer"  class="form-control textAreaClass"  maxlength="500"  />
<form:errors path="insurer" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.rto"/></label>
<form:input path="rto" id="rto"  class="form-control textAreaClass"  maxlength="500"  />
<form:errors path="rto" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.onType"/></label>
<form:input path="onType" id="onType"  class="form-control textAreaClass"  maxlength="500"  />
<form:errors path="onType" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.commition"/></label>
<form:input path="commition" id="commition" type='number' step='.01' class="form-control onlyNumberWithDecimal"     />
<form:errors path="commition" cssStyle="color:red"></form:errors> 
</div>

 <div class="col-sm-6 form-group">
<label><spring:message code="commitionMaster.paymentmode"/></label>
<form:input path="paymentmode" id="paymentmode"  class="form-control textAreaClass"  maxlength="100"  />
<form:errors path="paymentmode" cssStyle="color:red"></form:errors> 
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
                       