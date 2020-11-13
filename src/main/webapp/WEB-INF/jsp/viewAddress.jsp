<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveAddress" name="frm" id="frm"  enctype="multipart/form-data" commandName="address">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="address.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="address.personId"/></label>			
									<form:input path="personId" id="personId"  class="form-control " />			
									<form:errors path="personId" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       