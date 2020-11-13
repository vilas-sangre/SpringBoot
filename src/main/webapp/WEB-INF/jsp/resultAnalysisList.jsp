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
                                 <h4><spring:message code="resultAnalysis.heading"/></h4>
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
					<th class="heading"><spring:message code="resultAnalysis.id"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.user_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.seat_no"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.student_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.branch_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.semester"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.month"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.year"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.college_code"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.college_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.result_date"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.sgpi"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.cgpi"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.created_date"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.created_user"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subect1_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject2_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject3_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject4_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject5_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject6_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject7_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject8_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject9_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject10_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.active"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject11"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject12"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject13"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject21"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject22"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject23"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject31"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject32"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject33"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject41"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject42"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject43"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject51"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject52"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject53"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject61"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject62"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject63"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject71"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject72"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject73"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject81"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject82"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject83"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject91"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject92"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject93"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject101"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject102"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.subject103"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.parent_record_id"/></th>				
				<th class="heading"><spring:message code="action.heading"/></th>
		</tr>
		
	</thead>
	<tbody>
		
				<c:forEach var="resultAnalysis" items="${resultAnalysisList}">
				<tr>
										<td>${resultAnalysis.id}</td>				
										<td>${resultAnalysis.user_name}</td>				
										<td>${resultAnalysis.seat_no}</td>				
										<td>${resultAnalysis.student_name}</td>				
										<td>${resultAnalysis.branch_name}</td>				
										<td>${resultAnalysis.semester}</td>				
										<td>${resultAnalysis.month}</td>				
										<td>${resultAnalysis.year}</td>				
										<td>${resultAnalysis.college_code}</td>				
										<td>${resultAnalysis.college_name}</td>				
										<td>${resultAnalysis.result_date}</td>				
										<td>${resultAnalysis.sgpi}</td>				
										<td>${resultAnalysis.cgpi}</td>				
										<td>${resultAnalysis.created_date}</td>				
										<td>${resultAnalysis.created_user}</td>				
										<td>${resultAnalysis.subect1_name}</td>				
										<td>${resultAnalysis.subject2_name}</td>				
										<td>${resultAnalysis.subject3_name}</td>				
										<td>${resultAnalysis.subject4_name}</td>				
										<td>${resultAnalysis.subject5_name}</td>				
										<td>${resultAnalysis.subject6_name}</td>				
										<td>${resultAnalysis.subject7_name}</td>				
										<td>${resultAnalysis.subject8_name}</td>				
										<td>${resultAnalysis.subject9_name}</td>				
										<td>${resultAnalysis.subject10_name}</td>				
										<td>${resultAnalysis.active}</td>				
										<td>${resultAnalysis.subject11}</td>				
										<td>${resultAnalysis.subject12}</td>				
										<td>${resultAnalysis.subject13}</td>				
										<td>${resultAnalysis.subject21}</td>				
										<td>${resultAnalysis.subject22}</td>				
										<td>${resultAnalysis.subject23}</td>				
										<td>${resultAnalysis.subject31}</td>				
										<td>${resultAnalysis.subject32}</td>				
										<td>${resultAnalysis.subject33}</td>				
										<td>${resultAnalysis.subject41}</td>				
										<td>${resultAnalysis.subject42}</td>				
										<td>${resultAnalysis.subject43}</td>				
										<td>${resultAnalysis.subject51}</td>				
										<td>${resultAnalysis.subject52}</td>				
										<td>${resultAnalysis.subject53}</td>				
										<td>${resultAnalysis.subject61}</td>				
										<td>${resultAnalysis.subject62}</td>				
										<td>${resultAnalysis.subject63}</td>				
										<td>${resultAnalysis.subject71}</td>				
										<td>${resultAnalysis.subject72}</td>				
										<td>${resultAnalysis.subject73}</td>				
										<td>${resultAnalysis.subject81}</td>				
										<td>${resultAnalysis.subject82}</td>				
										<td>${resultAnalysis.subject83}</td>				
										<td>${resultAnalysis.subject91}</td>				
										<td>${resultAnalysis.subject92}</td>				
										<td>${resultAnalysis.subject93}</td>				
										<td>${resultAnalysis.subject101}</td>				
										<td>${resultAnalysis.subject102}</td>				
										<td>${resultAnalysis.subject103}</td>				
										<td>${resultAnalysis.parent_record_id}</td>				
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
