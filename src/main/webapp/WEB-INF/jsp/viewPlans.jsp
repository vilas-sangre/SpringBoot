<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="savePlans" name="frm" id="frm"  enctype="multipart/form-data" commandName="plans">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.plan_id"/></label>			
									<form:input path="plan_id" id="plan_id"  class="form-control " />			
									<form:errors path="plan_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.operating_system"/></label>			
									<form:input path="operating_system" id="operating_system"  class="form-control " />			
									<form:errors path="operating_system" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.ram"/></label>			
									<form:input path="ram" id="ram"  class="form-control " />			
									<form:errors path="ram" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.disk_storage"/></label>			
									<form:input path="disk_storage" id="disk_storage"  class="form-control " />			
									<form:errors path="disk_storage" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.plan_price"/></label>			
									<form:input path="plan_price" id="plan_price"  class="form-control " />			
									<form:errors path="plan_price" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="plans.server_id"/></label>			
									<form:input path="server_id" id="server_id"  class="form-control " />			
									<form:errors path="server_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       