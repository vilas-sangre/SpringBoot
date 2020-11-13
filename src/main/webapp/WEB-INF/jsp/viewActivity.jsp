<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveActivity" name="frm" id="frm"  enctype="multipart/form-data" commandName="activity">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="activity.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="activity.activity_name"/></label>			
									<form:input path="activity_name" id="activity_name"  class="form-control " />			
									<form:errors path="activity_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="activity.activity_desc"/></label>			
									<form:input path="activity_desc" id="activity_desc"  class="form-control " />			
									<form:errors path="activity_desc" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="activity.activity_date"/></label>			
									<form:input path="activity_date" id="activity_date"  class="form-control " />			
									<form:errors path="activity_date" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="activity.emailId"/></label>			
									<form:input path="emailId" id="emailId"  class="form-control " />			
									<form:errors path="emailId" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       