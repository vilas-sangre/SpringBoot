<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlSlaveServerDetails" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlSlaveServerDetails">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlSlaveServerDetails.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlSlaveServerDetails.port"/></label>			
									<form:input path="port" id="port"  class="form-control " />			
									<form:errors path="port" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlSlaveServerDetails.ip_address"/></label>			
									<form:input path="ip_address" id="ip_address"  class="form-control " />			
									<form:errors path="ip_address" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlSlaveServerDetails.server_local_name"/></label>			
									<form:input path="server_local_name" id="server_local_name"  class="form-control " />			
									<form:errors path="server_local_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       