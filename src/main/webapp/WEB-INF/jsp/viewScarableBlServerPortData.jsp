<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlServerPortData" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlServerPortData">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerPortData.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerPortData.port"/></label>			
									<form:input path="port" id="port"  class="form-control " />			
									<form:errors path="port" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerPortData.ip_address"/></label>			
									<form:input path="ip_address" id="ip_address"  class="form-control " />			
									<form:errors path="ip_address" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerPortData.session_id"/></label>			
									<form:input path="session_id" id="session_id"  class="form-control " />			
									<form:errors path="session_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       