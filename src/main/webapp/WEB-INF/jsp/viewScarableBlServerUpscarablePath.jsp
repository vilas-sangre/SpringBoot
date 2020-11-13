<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveScarableBlServerUpscarablePath" name="frm" id="frm"  enctype="multipart/form-data" commandName="scarableBlServerUpscarablePath">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerUpscarablePath.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="scarableBlServerUpscarablePath.server_upscarable_path"/></label>			
									<form:input path="server_upscarable_path" id="server_upscarable_path"  class="form-control " />			
									<form:errors path="server_upscarable_path" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       