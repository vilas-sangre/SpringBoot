<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlLoginMaster" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlLoginMaster">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.master_id"/></label>			
									<form:input path="master_id" id="master_id"  class="form-control " />			
									<form:errors path="master_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.user_id"/></label>			
									<form:input path="user_id" id="user_id"  class="form-control " />			
									<form:errors path="user_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.user_name"/></label>			
									<form:input path="user_name" id="user_name"  class="form-control " />			
									<form:errors path="user_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.role_id"/></label>			
									<form:input path="role_id" id="role_id"  class="form-control " />			
									<form:errors path="role_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.login_id"/></label>			
									<form:input path="login_id" id="login_id"  class="form-control " />			
									<form:errors path="login_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlLoginMaster.password"/></label>			
									<form:input path="password" id="password"  class="form-control " />			
									<form:errors path="password" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       