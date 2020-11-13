<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveCommitionMaster" name="frm" id="frm"  enctype="multipart/form-data" commandName="commitionMaster">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.vehicleType"/></label>			
									<form:input path="vehicleType" id="vehicleType"  class="form-control " />			
									<form:errors path="vehicleType" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.policyType"/></label>			
									<form:input path="policyType" id="policyType"  class="form-control " />			
									<form:errors path="policyType" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.insurer"/></label>			
									<form:input path="insurer" id="insurer"  class="form-control " />			
									<form:errors path="insurer" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.rto"/></label>			
									<form:input path="rto" id="rto"  class="form-control " />			
									<form:errors path="rto" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.onType"/></label>			
									<form:input path="onType" id="onType"  class="form-control " />			
									<form:errors path="onType" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.commition"/></label>			
									<form:input path="commition" id="commition"  class="form-control " />			
									<form:errors path="commition" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="commitionMaster.paymentmode"/></label>			
									<form:input path="paymentmode" id="paymentmode"  class="form-control " />			
									<form:errors path="paymentmode" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       