<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlRoleMaster" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlRoleMaster">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRoleMaster.role_id"/></label>			
									<form:input path="role_id" id="role_id"  class="form-control " />			
									<form:errors path="role_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRoleMaster.role_name"/></label>			
									<form:input path="role_name" id="role_name"  class="form-control " />			
									<form:errors path="role_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRoleMaster.role_desc"/></label>			
									<form:input path="role_desc" id="role_desc"  class="form-control " />			
									<form:errors path="role_desc" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       