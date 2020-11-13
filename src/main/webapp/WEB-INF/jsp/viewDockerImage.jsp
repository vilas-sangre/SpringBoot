<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveDockerImage" name="frm" id="frm"  enctype="multipart/form-data" commandName="dockerImage">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="dockerImage.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="dockerImage.emailid"/></label>			
									<form:input path="emailid" id="emailid"  class="form-control " />			
									<form:errors path="emailid" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="dockerImage.parent_id"/></label>			
									<form:input path="parent_id" id="parent_id"  class="form-control " />			
									<form:errors path="parent_id" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       