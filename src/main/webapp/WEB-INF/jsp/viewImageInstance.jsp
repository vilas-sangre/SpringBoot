<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveImageInstance" name="frm" id="frm"  enctype="multipart/form-data" commandName="imageInstance">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.command_1"/></label>			
									<form:input path="command_1" id="command_1"  class="form-control " />			
									<form:errors path="command_1" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.command_2"/></label>			
									<form:input path="command_2" id="command_2"  class="form-control " />			
									<form:errors path="command_2" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.command_3"/></label>			
									<form:input path="command_3" id="command_3"  class="form-control " />			
									<form:errors path="command_3" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.command_4"/></label>			
									<form:input path="command_4" id="command_4"  class="form-control " />			
									<form:errors path="command_4" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.parameter_1"/></label>			
									<form:input path="parameter_1" id="parameter_1"  class="form-control " />			
									<form:errors path="parameter_1" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.parameter_2"/></label>			
									<form:input path="parameter_2" id="parameter_2"  class="form-control " />			
									<form:errors path="parameter_2" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.parameter_3"/></label>			
									<form:input path="parameter_3" id="parameter_3"  class="form-control " />			
									<form:errors path="parameter_3" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.name"/></label>			
									<form:input path="name" id="name"  class="form-control " />			
									<form:errors path="name" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.description"/></label>			
									<form:input path="description" id="description"  class="form-control " />			
									<form:errors path="description" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="imageInstance.type"/></label>			
									<form:input path="type" id="type"  class="form-control " />			
									<form:errors path="type" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       