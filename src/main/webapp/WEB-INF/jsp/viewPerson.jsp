<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="savePerson" name="frm" id="frm"  enctype="multipart/form-data" commandName="person">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="person.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="person.personName"/></label>			
									<form:input path="personName" id="personName"  class="form-control " />			
									<form:errors path="personName" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="person.personPhone"/></label>			
									<form:input path="personPhone" id="personPhone"  class="form-control " />			
									<form:errors path="personPhone" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       