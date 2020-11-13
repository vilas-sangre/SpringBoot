<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlRegMaster" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlRegMaster">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.user_id"/></label>			
									<form:input path="user_id" id="user_id"  class="form-control " />			
									<form:errors path="user_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.roll_id"/></label>			
									<form:input path="roll_id" id="roll_id"  class="form-control " />			
									<form:errors path="roll_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.group_name"/></label>			
									<form:input path="group_name" id="group_name"  class="form-control " />			
									<form:errors path="group_name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.group_id"/></label>			
									<form:input path="group_id" id="group_id"  class="form-control " />			
									<form:errors path="group_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.firstname"/></label>			
									<form:input path="firstname" id="firstname"  class="form-control " />			
									<form:errors path="firstname" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.lastname"/></label>			
									<form:input path="lastname" id="lastname"  class="form-control " />			
									<form:errors path="lastname" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.useraddress"/></label>			
									<form:input path="useraddress" id="useraddress"  class="form-control " />			
									<form:errors path="useraddress" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.emailid"/></label>			
									<form:input path="emailid" id="emailid"  class="form-control " />			
									<form:errors path="emailid" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.password"/></label>			
									<form:input path="password" id="password"  class="form-control " />			
									<form:errors path="password" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.phoneno"/></label>			
									<form:input path="phoneno" id="phoneno"  class="form-control " />			
									<form:errors path="phoneno" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.operating_system"/></label>			
									<form:input path="operating_system" id="operating_system"  class="form-control " />			
									<form:errors path="operating_system" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.ram"/></label>			
									<form:input path="ram" id="ram"  class="form-control " />			
									<form:errors path="ram" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlRegMaster.disk_storage"/></label>			
									<form:input path="disk_storage" id="disk_storage"  class="form-control " />			
									<form:errors path="disk_storage" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       