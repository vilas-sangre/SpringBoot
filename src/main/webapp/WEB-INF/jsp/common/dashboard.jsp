<!DOCTYPE html>



<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@include file="taglib_includes.jsp" %>
<html lang="en">
<%
if(session.getAttribute("j_username")==null)
{
response.sendRedirect("login");	
}


%>
 

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>LEOSERP</title>

     <jsp:include page="template.jsp"></jsp:include>
    
     <script><!--
     $(document).ready(function(){
    	  $("a").click(function(){
    		  var data=$(this).text();
    		  
    		  var altValue=$(this).attr('title');
    		  if(altValue=='headings'){
    			   alert(data);
		    	    $.get("getCommandDetails?command="+data, function(data, status){
		    	      alert("Data: " + data + "\nStatus: " + status);
		    	    });
    		  }
    	  });
    	});
    
     function createDockerInstance(id)
     {
    	 $.get("createDockerInstance?id="+id, function(data, status){
   	      alert("Data: " + data + "\nStatus: " + status);
   	      location.href="dashboard";
   	    });
    	 
     }
     
     function stopConstainerById(id)
     {
    	 $.get("stopConstainerById?id="+id, function(data, status){
   	      alert("Data: " + data + "\nStatus: " + status);
   	      location.href="dashboard";
   	    });
    	 
     }
     
     function startConstainerById(id)
     {
    	 $.get("startConstainerById?id="+id, function(data, status){
   	      alert("Data: " + data + "\nStatus: " + status);
   	      location.href="dashboard";
   	    });
    	 
     }
     
     function killConstainerById(id)
     {
    	 $.get("killConstainerById?id="+id, function(data, status){
   	      alert("Data: " + data + "\nStatus: " + status);
   	      location.href="dashboard";
   	    });
    	 
     }
  
</script>
    </head>
    <body class="hold-transition sidebar-mini">        
        <!-- Site wrapper -->
        <div class="wrapper">
           <jsp:include page="menu.jsp"></jsp:include>
                <!-- =============================================== -->
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <div class="header-icon">
                  <i class="fa fa-dashboard"></i>
               </div>
               <div class="header-title">
                  <h1>Assured Ensure</h1>
                  <small>Very detailed & featured admin.</small>
               </div>
            </section>
            <!-- Main content -->
            <section class="content">
               <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                     <div id="cardbox1">
                        <div class="statistic-box">
                           <i class="fa fa-user-plus fa-3x"></i>
                           <div class="counter-number pull-right">
                              <span class="count-number">11</span> 
                              <span class="slight"><i class="fa fa-play fa-rotate-270"> </i>
                              </span>
                           </div>
                           <h3> Active Client</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                     <div id="cardbox2">
                        <div class="statistic-box">
                           <i class="fa fa-user-secret fa-3x"></i>
                           <div class="counter-number pull-right">
                              <span class="count-number">4</span> 
                              <span class="slight"><i class="fa fa-play fa-rotate-270"> </i>
                              </span>
                           </div>
                           <h3>  Active Admin</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                     <div id="cardbox3">
                        <div class="statistic-box">
                           <i class="fa fa-money fa-3x"></i>
                           <div class="counter-number pull-right">
                              <i class="ti ti-money"></i><span class="count-number">965</span> 
                              <span class="slight"><i class="fa fa-play fa-rotate-270"> </i>
                              </span>
                           </div>
                           <h3>  Total Expenses</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                     <div id="cardbox4">
                        <div class="statistic-box">
                           <i class="fa fa-files-o fa-3x"></i>
                           <div class="counter-number pull-right">
                              <span class="count-number">11</span> 
                              <span class="slight"><i class="fa fa-play fa-rotate-270"> </i>
                              </span>
                           </div>
                           <h3> Running Projects</h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Upcoming Events</h4>
                           </div>
                        </div>
                        <div class="panel-body">
                           <div class="work-touchpoint">
                              <div class="work-touchpoint-date">
                                 <span class="day">28</span>
                                 <span class="month">Apr</span>
                              </div>
                           </div>
                           <div class="detailswork">
                              <span class="label-custom label label-default pull-right">Email</span>
                              <a href="#" title="headings">Marketing policy</a> <br>
                              <p>Green Road - Dhaka,Bangladesh</p>
                           </div>
                           <div class="work-touchpoint">
                              <div class="work-touchpoint-date">
                                 <span class="day">2</span>
                                 <span class="month">Apr</span>
                              </div>
                           </div>
                           <div class="detailswork">
                              <span class="label-custom label label-default pull-right">skype</span>
                              <a href="#" title="headings">Accounting policy</a> <br>
                              <p>Kolkata, India</p>
                           </div>
                           <div class="work-touchpoint">
                              <div class="work-touchpoint-date2">
                                 <span class="day">17</span>
                                 <span class="month">Mrc</span>
                              </div>
                           </div>
                           <div class="detailswork">
                              <span class="label-custom label label-default pull-right">phone</span>
                              <a href="#" title="headings">Marketing policy</a> <br>
                              <p>Madrid  - spain</p>
                           </div>
                           <div class="work-touchpoint">
                              <div class="work-touchpoint-date2">
                                 <span class="day">3</span>
                                 <span class="month">jan</span>
                              </div>
                           </div>
                           <div class="detailswork">
                              <span class="label-custom label label-default pull-right">Mobile</span>
                              <a href="#" title="headings">Finance policy</a> <br>
                              <p>south Australia  - Australia</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Running Projects</h4>
                           </div>
                        </div>
                        <div class="panel-body">
                           <div class="runnigwork">
                              <span class="label-danger label label-default pull-right">Failed</span>
                              <i class="fa fa-dot-circle-o"></i>        
                              <a href="#">Database configuration</a><br>                          
                              <div class="progress runningprogress">
                                 <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="" data-original-title="25%"></div>
                              </div>
                           </div>
                           <div class="runnigwork">
                              <span class="label-warning label label-default pull-right">progressing</span>
                              <i class="fa fa-dot-circle-o"></i>        
                              <a href="#">Design tool</a><br>                          
                              <div class="progress runningprogress">
                                 <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="" data-original-title="15%"></div>
                              </div>
                           </div>
                           <div class="runnigwork">
                              <span class="label-success label label-default pull-right">progressing</span>
                              <i class="fa fa-dot-circle-o"></i>        
                              <a href="#">Internet configuration</a><br>                          
                              <div class="progress runningprogress">
                                 <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="" data-original-title="45%"></div>
                              </div>
                           </div>
                           <div class="runnigwork">
                              <span class="label-info label label-default pull-right">progressing</span>
                              <i class="fa fa-dot-circle-o"></i>        
                              <a href="#">Banner completation</a><br>                          
                              <div class="progress runningprogress">
                                 <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="" data-original-title="75%"></div>
                              </div>
                           </div>
                           <div class="runnigwork">
                              <span class="label-success label label-default pull-right">Success</span>
                              <i class="fa fa-dot-circle-o"></i>        
                              <a href="#">IT Solution</a><br>                          
                              <div class="progress runningprogress">
                                 <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="" data-original-title="50%"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
                <c:if test="${user.role=='Student'}">
	               <div class="row">
	                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                  <div class="panel panel-bd lobidisable">
	                  <div class="panel-heading">
	                          
	                           
	                            <form action="getResultAnalysisBySeatNo" method="get">
	                   <div class="col-sm-6 form-group">
						<label>Enter Seat No To Search</label>
						<input type="text" id="seat_no"  name="seat_no"  class="form-control textAreaClass"  maxlength="100"  />
						<span>
						<c:if test="${seatNoErrorMessage!=null}">
							${seatNoErrorMessage}
						</c:if>
						</span>
					  </div>
					  <div class="col-sm-6 reset-button">
					  <label>&nbsp;</label>
                                  <button type='submit' class="btn btn-add">Search</button>
                      </div>
	                  </form>
	                   </div>
	                  
	                  </div>
	                  </div>
	                </div>  
	                
	                 <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="panel panel-bd lobidisable">
                  <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Uploaded Result Anlysis</h4>
                           </div>
                        </div>
                  <div class="panel-body">
                        <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           
                           <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           <div class="table-responsive">
						                      <table cellpadding="0" cellspacing="0" border="0" class="display altrowstable" id="example4" width="100%">
	<thead>
		<tr>
									
					<th class="heading"><spring:message code="resultAnalysis.seat_no"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.student_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.branch_name"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.semester"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.month"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.year"/></th>	
					<th class="heading"><spring:message code="resultAnalysis.result_date"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.sgpi"/></th>				
					<th class="heading"><spring:message code="resultAnalysis.cgpi"/></th>						
					<th class="heading">View Details</th>
		</tr>
		
	</thead>
	<tbody>
		
				<c:forEach var="resultAnalysis" items="${resultAnalysisList}">
				<tr>
													
										<td>${resultAnalysis.seat_no}</td>				
										<td>${resultAnalysis.student_name}</td>				
										<td>${resultAnalysis.branch_name}</td>				
										<td>${resultAnalysis.semester}</td>				
										<td>${resultAnalysis.month}</td>				
										<td>${resultAnalysis.year}</td>				
													
										<td>${resultAnalysis.result_date}</td>				
										<td>${resultAnalysis.sgpi}</td>				
										<td>${resultAnalysis.cgpi}</td>							
									<td>
					<a href="viewResultAnalysis?id=${resultAnalysis.id}"><span class="glyphicon glyphicon-eye-open"></span></a>
					
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
                
                
	              </c:if>  
              
	               <div class="row">
	                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                  <div class="panel panel-bd lobidisable">
	                  <div class="panel-heading">
	                           <div class="panel-title">
	                              <h4>Upload CSV</h4>
	                           </div>
	                        </div>
	                  <div id="fileuploader" style="vertical-align: top;width: 100% !important;">Upload</div>
	                  </div>
	                  </div>
	                </div>  
	                
	                <div class="row">
                  
                  
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Branch's Business</h4>
                           </div>
                        </div>
                        <div class="panel-body">
                           <div class="Workslist">
                              <div class="worklistdate">
                                 <table class="table table-hover">
                                    <thead>
                                       <tr>
                                          <th>Works Type</th>
                                          <th>Name Of Worker</th>
                                       </tr>
                                    </thead>
                                    <tbody><tr>
                                        <th>Branch
                                        </th>
                                        <th style="text-align: right">Gross Premium
                                        </th>
                                        <th style="text-align: right">Net Premium
                                        </th>
                                        <th style="text-align: right">OD Premium
                                        </th>
                                         <th style="text-align: right">COMM Premium
                                        </th>
                                    </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=11&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Muzaffarnagar</a>
                                    </td>
                                    <td style="text-align: right">
                                        76,64,004.63
                                    </td>
                                    <td style="text-align: right">
                                        66,65,560.97
                                    </td>
                                    <td style="text-align: right">
                                        5,01,797.97
                                    </td>
                                     <td style="text-align: right">
                                        64,20,760.97
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=14&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">CHANDIGARH</a>
                                    </td>
                                    <td style="text-align: right">
                                        27,68,971.82
                                    </td>
                                    <td style="text-align: right">
                                        23,77,508.00
                                    </td>
                                    <td style="text-align: right">
                                        8,62,337.00
                                    </td>
                                     <td style="text-align: right">
                                        16,47,859.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=16&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">YAMUNANAGAR</a>
                                    </td>
                                    <td style="text-align: right">
                                        25,08,121.15
                                    </td>
                                    <td style="text-align: right">
                                        21,65,014.38
                                    </td>
                                    <td style="text-align: right">
                                        70,965.38
                                    </td>
                                     <td style="text-align: right">
                                        21,61,103.38
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=20&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">INDRI</a>
                                    </td>
                                    <td style="text-align: right">
                                        16,23,942.18
                                    </td>
                                    <td style="text-align: right">
                                        13,84,542.00
                                    </td>
                                    <td style="text-align: right">
                                        49,067.00
                                    </td>
                                     <td style="text-align: right">
                                        3,89,920.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=37&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">JAMMU</a>
                                    </td>
                                    <td style="text-align: right">
                                        15,21,948.07
                                    </td>
                                    <td style="text-align: right">
                                        13,08,663.42
                                    </td>
                                    <td style="text-align: right">
                                        2,86,945.42
                                    </td>
                                     <td style="text-align: right">
                                        5,78,673.57
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=15&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">MORADABAD</a>
                                    </td>
                                    <td style="text-align: right">
                                        15,14,103.13
                                    </td>
                                    <td style="text-align: right">
                                        12,95,271.52
                                    </td>
                                    <td style="text-align: right">
                                        71,115.52
                                    </td>
                                     <td style="text-align: right">
                                        12,41,410.52
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=43&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">MUMBAI</a>
                                    </td>
                                    <td style="text-align: right">
                                        9,61,890.26
                                    </td>
                                    <td style="text-align: right">
                                        8,16,599.00
                                    </td>
                                    <td style="text-align: right">
                                        20,585.00
                                    </td>
                                     <td style="text-align: right">
                                        8,16,599.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=13&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">JALANDHAR</a>
                                    </td>
                                    <td style="text-align: right">
                                        9,46,006.86
                                    </td>
                                    <td style="text-align: right">
                                        8,07,876.00
                                    </td>
                                    <td style="text-align: right">
                                        3,76,052.00
                                    </td>
                                     <td style="text-align: right">
                                        5,46,217.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=21&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">MEERUT</a>
                                    </td>
                                    <td style="text-align: right">
                                        7,16,801.90
                                    </td>
                                    <td style="text-align: right">
                                        6,21,230.00
                                    </td>
                                    <td style="text-align: right">
                                        21,953.00
                                    </td>
                                     <td style="text-align: right">
                                        5,34,856.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=10&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">DEHRADUN</a>
                                    </td>
                                    <td style="text-align: right">
                                        3,11,754.00
                                    </td>
                                    <td style="text-align: right">
                                        2,74,797.00
                                    </td>
                                    <td style="text-align: right">
                                        41,333.00
                                    </td>
                                     <td style="text-align: right">
                                        2,74,797.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=23&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">HAPUR</a>
                                    </td>
                                    <td style="text-align: right">
                                        2,08,109.68
                                    </td>
                                    <td style="text-align: right">
                                        1,81,168.00
                                    </td>
                                    <td style="text-align: right">
                                        17,067.00
                                    </td>
                                     <td style="text-align: right">
                                        1,81,168.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=18&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">NEW DELHI</a>
                                    </td>
                                    <td style="text-align: right">
                                        1,34,793.76
                                    </td>
                                    <td style="text-align: right">
                                        1,14,232.00
                                    </td>
                                    <td style="text-align: right">
                                        1,02,157.00
                                    </td>
                                     <td style="text-align: right">
                                        1,05,967.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=22&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">KARNAL</a>
                                    </td>
                                    <td style="text-align: right">
                                        1,18,606.94
                                    </td>
                                    <td style="text-align: right">
                                        1,01,315.00
                                    </td>
                                    <td style="text-align: right">
                                        3,286.00
                                    </td>
                                     <td style="text-align: right">
                                        1,01,315.00
                                    </td>
                                </tr>
                            
                                <tr>

                                    <td>
                                      <a href="ViewAgentYTD.aspx?id=36&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Kota</a>
                                    </td>
                                    <td style="text-align: right">
                                        1,10,374.84
                                    </td>
                                    <td style="text-align: right">
                                        93,538.00
                                    </td>
                                    <td style="text-align: right">
                                        0.00
                                    </td>
                                     <td style="text-align: right">
                                        93,538.00
                                    </td>
                                </tr>
                            
                                <tr>
                                    <th>Total</th>
                                    <th style="text-align: right">2,11,09,429.22</th>
                                    <th style="text-align: right">1,82,07,315.29</th>
                                    <th style="text-align: right">24,24,661.29</th>
                                     <th style="text-align: right">1,50,94,184.44</th>
                                </tr>
                                </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Company's Business</h4>
                           </div>
                        </div>
                        <div class="panel-body">
                           <div class="Workslist">
                              <div class="worklistdate">
                                 <table class="table table-hover">
                                    <thead>
                                       <tr>
                                          <th>Notice</th>
                                          <th>Published By</th>
                                          <th>Date Added</th>
                                       </tr>
                                    </thead>
                                    <tbody><tr>
                                    <th>Company
                                    </th>
                                    <th style="text-align: right">Gross Premium
                                    </th>
                                    <th style="text-align: right">Net Premium
                                    </th>
                                    <th style="text-align: right">OD Premium
                                    </th>
                                     <th style="text-align: right">COMM Premium
                                    </th>
                                </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=30&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Future Generali</a>
                                </td>
                                <td style="text-align: right">
                                    87,84,889.42
                                </td>
                                <td style="text-align: right">
                                    75,10,435.00
                                </td>
                                <td style="text-align: right">
                                    2,48,708.00
                                </td>
                                 <td style="text-align: right">
                                    61,54,828.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=32&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">HDFC ERGO</a>
                                </td>
                                <td style="text-align: right">
                                    44,94,878.38
                                </td>
                                <td style="text-align: right">
                                    39,79,579.00
                                </td>
                                <td style="text-align: right">
                                    1,02,932.00
                                </td>
                                 <td style="text-align: right">
                                    35,52,137.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=49&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Universal Sompo</a>
                                </td>
                                <td style="text-align: right">
                                    17,98,871.90
                                </td>
                                <td style="text-align: right">
                                    15,83,585.00
                                </td>
                                <td style="text-align: right">
                                    2,37,469.00
                                </td>
                                 <td style="text-align: right">
                                    14,57,977.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=33&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">ICICI LOMBARD</a>
                                </td>
                                <td style="text-align: right">
                                    8,90,359.56
                                </td>
                                <td style="text-align: right">
                                    7,54,542.00
                                </td>
                                <td style="text-align: right">
                                    4,83,481.00
                                </td>
                                 <td style="text-align: right">
                                    5,32,015.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=31&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Digit</a>
                                </td>
                                <td style="text-align: right">
                                    7,42,758.08
                                </td>
                                <td style="text-align: right">
                                    6,29,456.00
                                </td>
                                <td style="text-align: right">
                                    25,870.00
                                </td>
                                 <td style="text-align: right">
                                    6,00,965.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=14&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Tata AIG</a>
                                </td>
                                <td style="text-align: right">
                                    7,17,313.01
                                </td>
                                <td style="text-align: right">
                                    6,08,901.10
                                </td>
                                <td style="text-align: right">
                                    2,05,205.10
                                </td>
                                 <td style="text-align: right">
                                    5,16,686.10
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=23&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Bajaj Allianz</a>
                                </td>
                                <td style="text-align: right">
                                    6,51,093.32
                                </td>
                                <td style="text-align: right">
                                    5,51,774.00
                                </td>
                                <td style="text-align: right">
                                    10,653.00
                                </td>
                                 <td style="text-align: right">
                                    5,51,774.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=34&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">IFFCO TOKIO</a>
                                </td>
                                <td style="text-align: right">
                                    6,43,285.62
                                </td>
                                <td style="text-align: right">
                                    5,45,157.29
                                </td>
                                <td style="text-align: right">
                                    3,07,468.29
                                </td>
                                 <td style="text-align: right">
                                    2,64,350.29
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=36&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Liberty</a>
                                </td>
                                <td style="text-align: right">
                                    5,72,108.35
                                </td>
                                <td style="text-align: right">
                                    4,84,837.60
                                </td>
                                <td style="text-align: right">
                                    3,31,433.60
                                </td>
                                 <td style="text-align: right">
                                    2,65,543.75
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=35&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Kotak Mahindra</a>
                                </td>
                                <td style="text-align: right">
                                    5,70,584.02
                                </td>
                                <td style="text-align: right">
                                    4,99,301.99
                                </td>
                                <td style="text-align: right">
                                    1,57,319.99
                                </td>
                                 <td style="text-align: right">
                                    3,85,745.99
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=17&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Reliance</a>
                                </td>
                                <td style="text-align: right">
                                    3,15,942.83
                                </td>
                                <td style="text-align: right">
                                    2,68,177.21
                                </td>
                                <td style="text-align: right">
                                    20,424.21
                                </td>
                                 <td style="text-align: right">
                                    2,31,024.21
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=44&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">SGIC</a>
                                </td>
                                <td style="text-align: right">
                                    2,44,590.34
                                </td>
                                <td style="text-align: right">
                                    2,07,709.00
                                </td>
                                <td style="text-align: right">
                                    65,703.00
                                </td>
                                 <td style="text-align: right">
                                    1,53,304.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=43&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">SBI General</a>
                                </td>
                                <td style="text-align: right">
                                    2,12,540.80
                                </td>
                                <td style="text-align: right">
                                    1,85,374.00
                                </td>
                                <td style="text-align: right">
                                    53,127.00
                                </td>
                                 <td style="text-align: right">
                                    1,52,915.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=46&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">New India</a>
                                </td>
                                <td style="text-align: right">
                                    2,08,497.74
                                </td>
                                <td style="text-align: right">
                                    1,76,693.00
                                </td>
                                <td style="text-align: right">
                                    93,970.00
                                </td>
                                 <td style="text-align: right">
                                    93,970.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=39&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">National Insurance</a>
                                </td>
                                <td style="text-align: right">
                                    73,511.64
                                </td>
                                <td style="text-align: right">
                                    62,298.00
                                </td>
                                <td style="text-align: right">
                                    2,518.00
                                </td>
                                 <td style="text-align: right">
                                    62,298.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=37&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Magma HDI General</a>
                                </td>
                                <td style="text-align: right">
                                    72,389.46
                                </td>
                                <td style="text-align: right">
                                    61,347.00
                                </td>
                                <td style="text-align: right">
                                    9,568.00
                                </td>
                                 <td style="text-align: right">
                                    61,347.00
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=42&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Royal Sundaram</a>
                                </td>
                                <td style="text-align: right">
                                    68,188.36
                                </td>
                                <td style="text-align: right">
                                    57,786.75
                                </td>
                                <td style="text-align: right">
                                    33,949.75
                                </td>
                                 <td style="text-align: right">
                                    33,949.75
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=24&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Bharti-AXA</a>
                                </td>
                                <td style="text-align: right">
                                    46,326.03
                                </td>
                                <td style="text-align: right">
                                    39,259.35
                                </td>
                                <td style="text-align: right">
                                    34,861.35
                                </td>
                                 <td style="text-align: right">
                                    22,252.35
                                </td>
                            </tr>
                        
                            <tr>

                                <td>
                                    <a href="ViewBrokerYTD.aspx?id=19&amp;dtFrom=01-Mar-2020&amp;dtTo=31-Mar-2020">Acko</a>
                                </td>
                                <td style="text-align: right">
                                    1,300.36
                                </td>
                                <td style="text-align: right">
                                    1,102.00
                                </td>
                                <td style="text-align: right">
                                    0.00
                                </td>
                                 <td style="text-align: right">
                                    1,102.00
                                </td>
                            </tr>
                        
                            <tr>
                                <th>Total</th>
                                <th style="text-align: right">2,11,09,429.22</th>
                                <th style="text-align: right">1,82,07,315.29</th>
                                <th style="text-align: right">24,24,661.29</th>
                                  <th style="text-align: right">1,50,94,184.44</th>
                            </tr>
                            </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div> 
	                
	                
	                
                
                 <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="panel panel-bd lobidisable">
                  <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Todays New Policy Uploaded</h4>
                           </div>
                        </div>
                  <div class="panel-body">
                        <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           
                           <!-- Plugin content:powerpoint,txt,pdf,png,word,xl -->
                           <div class="table-responsive">
						                      <table cellpadding="0" cellspacing="0" border="0" class="display altrowstable" id="example4" width="100%">
	<thead>
                            <tr>
                                <th>Control No
                                </th>
                                <th>Policy No
                                </th>
                                 <th>Company
                                </th>
                                <th>Insured Name
                                </th>
                                <th>Branch
                                </th>
                                <th>Agent
                                </th>
                                 <th>Points
                                </th>
                                <th>Action
                                </th>
                            </tr>
                             </thead>
	<tbody id="myTable">
                    
                        <tr style="display: table-row;">

                            <td>
                                9277
                            </td>
                            <td>
                                D012614591
                            </td>
                            <td>
                                Digit
                            </td>
                            <td>
                                GURPREET Singh 
                            </td>
                            <td>
                                AMRITSAR
                            </td>
                            <td>
                                RAMA SHARMA
                            </td>
                             <td>
                                0.0000
                            </td>

                            <td class="styTD">

                              <a href=""><span class="glyphicon glyphicon-edit"></span></a>
                              <a href=""><span class="glyphicon glyphicon-eye-open"></span></a>
                             <a href=""><span class="glyphicon glyphicon-remove	"></span></a>
                             <a href=""><span class="glyphicon glyphicon-download-alt"></span></a>
                            </td>
                        </tr>
                    
                        <tr style="display: table-row;">

                            <td>
                                8927
                            </td>
                            <td>
                                3005/A/192149761/00/000
                            </td>
                            <td>
                                ICICI LOMBARD
                            </td>
                            <td>
                                SURINDERKUMAR
                            </td>
                            <td>
                                AMRITSAR
                            </td>
                            <td>
                                RAMA SHARMA
                            </td>
                             <td>
                                0.0000
                            </td>

                            <td class="styTD">

                              <a href=""><span class="glyphicon glyphicon-edit"></span></a>
                              <a href=""><span class="glyphicon glyphicon-eye-open"></span></a>
                             <a href=""><span class="glyphicon glyphicon-remove	"></span></a>
                             <a href=""><span class="glyphicon glyphicon-download-alt"></span></a>
                            </td>
                        </tr>
                    
                        <tr style="display: table-row;">

                            <td>
                                8925
                            </td>
                            <td>
                                2319100582894100000
                            </td>
                            <td>
                                HDFC ERGO
                            </td>
                            <td>
                                CHARAN SINGH
                            </td>
                            <td>
                                AMRITSAR
                            </td>
                            <td>
                                RAMA SHARMA
                            </td>
                             <td>
                                0.0000
                            </td>

                            <td class="styTD">

                               
                             <a href=""><span class="glyphicon glyphicon-edit"></span></a>
                              <a href=""><span class="glyphicon glyphicon-eye-open"></span></a>
                             <a href=""><span class="glyphicon glyphicon-remove	"></span></a>
                             <a href=""><span class="glyphicon glyphicon-download-alt"></span></a>
                             

                            </td>
                        </tr>
                    
                        </tbody>
	<tfoot>
	</tfoot>
</table>


                           </div>
                        </div>
                  </div>
                  </div>
                </div>  
               
               
               
               
                
                
                
                
                
                
                
               <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Upcoming Announcements</h4>
                           </div>
                        </div>
                        
                        
                        
                        <div class="panel-body">
                        
                        <c:forEach items="${upcomingAnnouncementsList}" var="upcomingAnnouncements">
                        
                         <div class="work-touchpoint">
                             <div class="work-touchpoint-date">
                                 <span class="day"><fmt:formatDate pattern = "dd" value = "${upcomingAnnouncements.created_date}" />/<fmt:formatDate pattern = "MM" value = "${upcomingAnnouncements.created_date}" /></span>
                                 <span class="month"><fmt:formatDate pattern = "yyyy" value = "${upcomingAnnouncements.created_date}" /></span>
                              </div>
                           </div>
                           <div class="detailswork">
                              <span class="label-custom label label-default pull-right">Active</span>
                              <a href="#" title="headings">
Events
Upcoming Events(active tab)Past Events
Connected Claims USA 2020</a> <br>
                              <p>Understand your customers, develop products to meet their needs and deliver an outstanding claims experience</p>
                           </div>
                           </c:forEach>
                        
                           
                        </div>
                     </div>
                  </div>
                  
               </div>
               
               <div class="row">
                  <!-- Barchart -->
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                     <div class="panel panel-bd lobidisable">
                        <div class="panel-heading">
                           <div class="panel-title">
                           <c:if test="${user.role=='Student'}">                           
                              <h4>Year Wise Student Result Analysis</h4>
                            </c:if>
                            <c:if test="${user.role=='Faculty'}">                           
                              <h4>This Year Earnings & Expenses</h4>
                            </c:if>
                           </div>
                        </div>
                        <div class="panel-body">
                           <canvas id="barChart" height="150"></canvas>
                        </div>
                     </div>
                  </div>
                 
               </div>
               <!-- /.row -->
               <div class="row">
                  <div class="col-xs-12 col-sm-8">
                     <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Google Map</h4>
                           </div>
                        </div>
                        <div class="panel-body">
                           <div class="google-maps">
                              <iframe src="https://maps.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=15+Springfield+Way,+Hythe,+CT21+5SH&amp;aq=t&amp;sll=52.8382,-2.327815&amp;sspn=8.047465,13.666992&amp;ie=UTF8&amp;hq=&amp;hnear=15+Springfield+Way,+Hythe+CT21+5SH,+United+Kingdom&amp;t=m&amp;z=14&amp;ll=51.077429,1.121722&amp;output=embed"></iframe>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-12 col-sm-4">
                     <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                           <div class="panel-title">
                              <h4>Calender</h4>
                           </div>
                        </div>
                        <!-- Monthly calender widget -->
                        <div class="panel panel-bd">
                           <div class="panel-body">
                              <div class="monthly_calender">
                                 <div class="monthly" id="m_calendar"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <!-- /.content -->
         </div>
         <!-- /.content-wrapper -->
                
            </div> <!-- ./wrapper -->
      

        <!-- End Core Plugins
        =====================================================================-->
        <!-- Start Theme label Script
        =====================================================================-->
        <jsp:include page="footerLib.jsp"></jsp:include>
        
    </body>
   
       
       <c:if test="${user.role=='Faculty'}"> 
    <script>
         function dash() {
       
         
         //bar chart
         var ctx = document.getElementById("barChart");
         var myChart = new Chart(ctx, {
         type: 'bar',
         data: {
         <%-- labels: <%=data11%>, --%>
         labels: ["January", "February", "March", "April", "May", "June", "July", "august", "september","october", "Nobemver", "December"],
         datasets: [
         {
        	 label: "My First dataset",
             data: [65, 59, 80, 81, 56, 55, 40, 65, 59, 80, 81, 56],
         <%-- data: <%=data12%>, --%>
         
         borderColor: "rgba(0, 150, 136, 0.8)",
         width: "1",
         borderWidth: "0",
         backgroundColor: "rgba(0, 150, 136, 0.8)"
         },
                                 
         {
        	 label: "My Second dataset",
             data: [28, 48, 40, 19, 86, 27, 90, 28, 48, 40, 19, 86],
            <%--  data: <%=data13%>, --%>
             borderColor: "rgba(51, 51, 51, 0.55)",
             width: "1",
             borderWidth: "0",
             backgroundColor: "rgba(51, 51, 51, 0.55)"
             }
      
         ]
         },
         options: {
         scales: {
         yAxes: [{
             ticks: {
                 beginAtZero: true
             }
         }]
         }
         }
         });
             //counter
             $('.count-number').counterUp({
                 delay: 10,
                 time: 5000
             });
         }
         dash();         
      </script>
       </c:if>
      <script>
$(document).ready(function()
{
	$("#fileuploader").uploadFile({
	url:"http://localhost:8888/api/post",
	fileName:"file"
	});
	
	
});


</script>
      

</html>
                       