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
                                 <h4><spring:message code="transaction.heading"/></h4>
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
					<th class="heading"><spring:message code="transaction.id"/></th>				
					<th class="heading"><spring:message code="transaction.f1"/></th>				
					<th class="heading"><spring:message code="transaction.branch"/></th>				
					<th class="heading"><spring:message code="transaction.policyNo"/></th>				
					<th class="heading"><spring:message code="transaction.companyName"/></th>				
					<th class="heading"><spring:message code="transaction.insuredName"/></th>				
					<th class="heading"><spring:message code="transaction.idv"/></th>				
					<th class="heading"><spring:message code="transaction.grossPremium"/></th>				
					<th class="heading"><spring:message code="transaction.netPremium"/></th>				
					<th class="heading"><spring:message code="transaction.ncb"/></th>				
					<th class="heading"><spring:message code="transaction.thirdParty"/></th>				
					<th class="heading"><spring:message code="transaction.llOwnerDriver"/></th>				
					<th class="heading"><spring:message code="transaction.totalTp"/></th>				
					<th class="heading"><spring:message code="transaction.odPremium"/></th>				
					<th class="heading"><spring:message code="transaction.addOnCover"/></th>				
					<th class="heading"><spring:message code="transaction.totalOd"/></th>				
					<th class="heading"><spring:message code="transaction.comm"/></th>				
					<th class="heading"><spring:message code="transaction.per"/></th>				
					<th class="heading"><spring:message code="transaction.agentName"/></th>				
					<th class="heading"><spring:message code="transaction.rmName"/></th>				
					<th class="heading"><spring:message code="transaction.modal"/></th>				
					<th class="heading"><spring:message code="transaction.vehicleType"/></th>				
					<th class="heading"><spring:message code="transaction.ccGvw"/></th>				
					<th class="heading"><spring:message code="transaction.offlineOnline"/></th>				
					<th class="heading"><spring:message code="transaction.city"/></th>				
					<th class="heading"><spring:message code="transaction.policyType"/></th>				
					<th class="heading"><spring:message code="transaction.yom"/></th>				
					<th class="heading"><spring:message code="transaction.vehicleno"/></th>				
					<th class="heading"><spring:message code="transaction.chassisNo"/></th>				
					<th class="heading"><spring:message code="transaction.engineNo"/></th>				
					<th class="heading"><spring:message code="transaction.address"/></th>				
					<th class="heading"><spring:message code="transaction.mobile"/></th>				
					<th class="heading"><spring:message code="transaction.emailId"/></th>				
					<th class="heading"><spring:message code="transaction.doe"/></th>				
					<th class="heading"><spring:message code="transaction.rsd"/></th>				
					<th class="heading"><spring:message code="transaction.punchingdate"/></th>				
					<th class="heading"><spring:message code="transaction.period"/></th>				
					<th class="heading"><spring:message code="transaction.expiredate"/></th>				
					<th class="heading"><spring:message code="transaction.occurrence"/></th>				
					<th class="heading"><spring:message code="transaction.paymentmode"/></th>				
					<th class="heading"><spring:message code="transaction.selfpayment"/></th>				
					<th class="heading"><spring:message code="transaction.chequeno"/></th>				
					<th class="heading"><spring:message code="transaction.bankname"/></th>				
					<th class="heading"><spring:message code="transaction.publicprivate"/></th>				
					<th class="heading"><spring:message code="transaction.reffno"/></th>				
					<th class="heading"><spring:message code="transaction.supplier"/></th>				
					<th class="heading"><spring:message code="transaction.comm1"/></th>				
					<th class="heading"><spring:message code="transaction.percentage"/></th>				
					<th class="heading"><spring:message code="transaction.f48"/></th>				
				<th class="heading"><spring:message code="action.heading"/></th>
		</tr>
		
	</thead>
	<tbody>
		
				<c:forEach var="transaction" items="${transactionList}">
				<tr>
										<td>${transaction.id}</td>				
										<td>${transaction.f1}</td>				
										<td>${transaction.branch}</td>				
										<td>${transaction.policyNo}</td>				
										<td>${transaction.companyName}</td>				
										<td>${transaction.insuredName}</td>				
										<td>${transaction.idv}</td>				
										<td>${transaction.grossPremium}</td>				
										<td>${transaction.netPremium}</td>				
										<td>${transaction.ncb}</td>				
										<td>${transaction.thirdParty}</td>				
										<td>${transaction.llOwnerDriver}</td>				
										<td>${transaction.totalTp}</td>				
										<td>${transaction.odPremium}</td>				
										<td>${transaction.addOnCover}</td>				
										<td>${transaction.totalOd}</td>				
										<td>${transaction.comm}</td>				
										<td>${transaction.per}</td>				
										<td>${transaction.agentName}</td>				
										<td>${transaction.rmName}</td>				
										<td>${transaction.modal}</td>				
										<td>${transaction.vehicleType}</td>				
										<td>${transaction.ccGvw}</td>				
										<td>${transaction.offlineOnline}</td>				
										<td>${transaction.city}</td>				
										<td>${transaction.policyType}</td>				
										<td>${transaction.yom}</td>				
										<td>${transaction.vehicleno}</td>				
										<td>${transaction.chassisNo}</td>				
										<td>${transaction.engineNo}</td>				
										<td>${transaction.address}</td>				
										<td>${transaction.mobile}</td>				
										<td>${transaction.emailId}</td>				
										<td>${transaction.doe}</td>				
										<td>${transaction.rsd}</td>				
										<td>${transaction.punchingdate}</td>				
										<td>${transaction.period}</td>				
										<td>${transaction.expiredate}</td>				
										<td>${transaction.occurrence}</td>				
										<td>${transaction.paymentmode}</td>				
										<td>${transaction.selfpayment}</td>				
										<td>${transaction.chequeno}</td>				
										<td>${transaction.bankname}</td>				
										<td>${transaction.publicprivate}</td>				
										<td>${transaction.reffno}</td>				
										<td>${transaction.supplier}</td>				
										<td>${transaction.comm1}</td>				
										<td>${transaction.percentage}</td>				
										<td>${transaction.f48}</td>				
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
