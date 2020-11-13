<!DOCTYPE html>
<html lang="en">
  <%@include file="common/taglib_includes.jsp" %> 

<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>CRM Admin Panel</title>
      <jsp:include page="common/template.jsp"></jsp:include>
     
   </head>
   <body class="hold-transition sidebar-mini">
   <!--preloader-->
      <div id="preloader">
         <div id="preloaderstatus"></div>
      </div>
      <!-- Site wrapper -->
      <div class="wrapper">
      
      <jsp:include page="common/menu.jsp"></jsp:include>
         
        
         <!-- =============================================== -->
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
           
            <section class="content">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                           <div class="btn-group" id="buttonexport">
                              <a href="#">
                                 <h4><spring:message code="resultAnalysisFile.heading"/></h4>
                              </a>
                           </div>
                        </div>
                        <div class="panel-body">
                        <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           
                           <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           <div class="table-responsive">
						                      <table cellpadding="0" cellspacing="0" border="0" class="display altrowstable" id="example4" width="100%">
	<thead>
		<tr>
					<th class="heading"><spring:message code="resultAnalysisFile.id"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.file_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.created_user"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.created_date"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.branch_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.semester"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.month"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.year"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.college_code"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.college_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysisFile.result_date"/></th>				
				<th class="heading"><spring:message code="action.heading"/></th>
		</tr>
		
	</thead>
	<tbody>
		
				<c:forEach var="resultAnalysisFile" items="${resultAnalysisFileList}">
				<tr>
										<td>${resultAnalysisFile.id}</td>				
										<td>${resultAnalysisFile.file_name}</td>				
										<td>${resultAnalysisFile.created_user}</td>				
										<td>${resultAnalysisFile.created_date}</td>				
										<td>${resultAnalysisFile.branch_name}</td>				
										<td>${resultAnalysisFile.semester}</td>				
										<td>${resultAnalysisFile.month}</td>				
										<td>${resultAnalysisFile.year}</td>				
										<td>${resultAnalysisFile.college_code}</td>				
										<td>${resultAnalysisFile.college_name}</td>				
										<td>${resultAnalysisFile.result_date}</td>				
									<td>
					<a href=""><span class="glyphicon glyphicon-eye-open"></span></a>
					</td>
			
				</tr>
			</c:forEach>
			
		
	</tbody>
	<tfoot>
	</tfoot>
</table>


                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               
               
               
                        
               
               
               
               
               
               
               
               <!-- /.modal -->
            </section>
            <!-- /.content -->
         </div>
         <!-- /.content-wrapper -->
        
      </div>
      <!-- ./wrapper -->
      <!-- Start Core Plugins
      
         =====================================================================-->
         
          <script>
    
    
      $(function () {
       
        $('#example4').DataTable();
        
      });
    </script>
     <jsp:include page="common/footerLib.jsp"></jsp:include>
   </body>

</html>
