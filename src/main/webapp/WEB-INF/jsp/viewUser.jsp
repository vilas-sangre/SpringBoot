<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveUser" name="frm" id="frm"  enctype="multipart/form-data" commandName="user">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.user_name"/></label>			
									<form:input path="user_name" id="user_name"  class="form-control " />			
									<form:errors path="user_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.password"/></label>			
									<form:input path="password" id="password"  class="form-control " />			
									<form:errors path="password" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.enrollement_no"/></label>			
									<form:input path="enrollement_no" id="enrollement_no"  class="form-control " />			
									<form:errors path="enrollement_no" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.first_name"/></label>			
									<form:input path="first_name" id="first_name"  class="form-control " />			
									<form:errors path="first_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.last_name"/></label>			
									<form:input path="last_name" id="last_name"  class="form-control " />			
									<form:errors path="last_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.mobile"/></label>			
									<form:input path="mobile" id="mobile"  class="form-control " />			
									<form:errors path="mobile" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.email_id"/></label>			
									<form:input path="email_id" id="email_id"  class="form-control " />			
									<form:errors path="email_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.address"/></label>			
									<form:input path="address" id="address"  class="form-control " />			
									<form:errors path="address" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.role"/></label>			
									<form:input path="role" id="role"  class="form-control " />			
									<form:errors path="role" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.active"/></label>			
									<form:input path="active" id="active"  class="form-control " />			
									<form:errors path="active" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="user.created_date"/></label>			
									<form:input path="created_date" id="created_date"  class="form-control " />			
									<form:errors path="created_date" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       