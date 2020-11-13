<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveUpcomingAnnouncements" name="frm" id="frm"  enctype="multipart/form-data" commandName="upcomingAnnouncements">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.description"/></label>			
									<form:input path="description" id="description"  class="form-control " />			
									<form:errors path="description" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.announcement_date"/></label>			
									<form:input path="announcement_date" id="announcement_date"  class="form-control " />			
									<form:errors path="announcement_date" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.validity"/></label>			
									<form:input path="validity" id="validity"  class="form-control " />			
									<form:errors path="validity" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.created_date"/></label>			
									<form:input path="created_date" id="created_date"  class="form-control " />			
									<form:errors path="created_date" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="upcomingAnnouncements.created_user"/></label>			
									<form:input path="created_user" id="created_user"  class="form-control " />			
									<form:errors path="created_user" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       