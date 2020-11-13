<!DOCTYPE html>
  <%@include file="common/taglib_includes.jsp" %>



                           
                           
                           <form:form method="post" action="saveTransaction" name="frm" id="frm"  enctype="multipart/form-data" commandName="transaction">
                          
                                 
                                                       			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.id"/></label>			
									<form:input path="id" id="id"  class="form-control " />			
									<form:errors path="id" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.f1"/></label>			
									<form:input path="f1" id="f1"  class="form-control " />			
									<form:errors path="f1" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.branch"/></label>			
									<form:input path="branch" id="branch"  class="form-control " />			
									<form:errors path="branch" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.policyNo"/></label>			
									<form:input path="policyNo" id="policyNo"  class="form-control " />			
									<form:errors path="policyNo" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.companyName"/></label>			
									<form:input path="companyName" id="companyName"  class="form-control " />			
									<form:errors path="companyName" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.insuredName"/></label>			
									<form:input path="insuredName" id="insuredName"  class="form-control " />			
									<form:errors path="insuredName" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.idv"/></label>			
									<form:input path="idv" id="idv"  class="form-control " />			
									<form:errors path="idv" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.grossPremium"/></label>			
									<form:input path="grossPremium" id="grossPremium"  class="form-control " />			
									<form:errors path="grossPremium" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.netPremium"/></label>			
									<form:input path="netPremium" id="netPremium"  class="form-control " />			
									<form:errors path="netPremium" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.ncb"/></label>			
									<form:input path="ncb" id="ncb"  class="form-control " />			
									<form:errors path="ncb" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.thirdParty"/></label>			
									<form:input path="thirdParty" id="thirdParty"  class="form-control " />			
									<form:errors path="thirdParty" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.llOwnerDriver"/></label>			
									<form:input path="llOwnerDriver" id="llOwnerDriver"  class="form-control " />			
									<form:errors path="llOwnerDriver" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.totalTp"/></label>			
									<form:input path="totalTp" id="totalTp"  class="form-control " />			
									<form:errors path="totalTp" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.odPremium"/></label>			
									<form:input path="odPremium" id="odPremium"  class="form-control " />			
									<form:errors path="odPremium" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.addOnCover"/></label>			
									<form:input path="addOnCover" id="addOnCover"  class="form-control " />			
									<form:errors path="addOnCover" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.totalOd"/></label>			
									<form:input path="totalOd" id="totalOd"  class="form-control " />			
									<form:errors path="totalOd" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.comm"/></label>			
									<form:input path="comm" id="comm"  class="form-control " />			
									<form:errors path="comm" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.per"/></label>			
									<form:input path="per" id="per"  class="form-control " />			
									<form:errors path="per" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.agentName"/></label>			
									<form:input path="agentName" id="agentName"  class="form-control " />			
									<form:errors path="agentName" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.rmName"/></label>			
									<form:input path="rmName" id="rmName"  class="form-control " />			
									<form:errors path="rmName" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.modal"/></label>			
									<form:input path="modal" id="modal"  class="form-control " />			
									<form:errors path="modal" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.vehicleType"/></label>			
									<form:input path="vehicleType" id="vehicleType"  class="form-control " />			
									<form:errors path="vehicleType" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.ccGvw"/></label>			
									<form:input path="ccGvw" id="ccGvw"  class="form-control " />			
									<form:errors path="ccGvw" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.offlineOnline"/></label>			
									<form:input path="offlineOnline" id="offlineOnline"  class="form-control " />			
									<form:errors path="offlineOnline" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.city"/></label>			
									<form:input path="city" id="city"  class="form-control " />			
									<form:errors path="city" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.policyType"/></label>			
									<form:input path="policyType" id="policyType"  class="form-control " />			
									<form:errors path="policyType" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.yom"/></label>			
									<form:input path="yom" id="yom"  class="form-control " />			
									<form:errors path="yom" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.vehicleno"/></label>			
									<form:input path="vehicleno" id="vehicleno"  class="form-control " />			
									<form:errors path="vehicleno" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.chassisNo"/></label>			
									<form:input path="chassisNo" id="chassisNo"  class="form-control " />			
									<form:errors path="chassisNo" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.engineNo"/></label>			
									<form:input path="engineNo" id="engineNo"  class="form-control " />			
									<form:errors path="engineNo" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.address"/></label>			
									<form:input path="address" id="address"  class="form-control " />			
									<form:errors path="address" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.mobile"/></label>			
									<form:input path="mobile" id="mobile"  class="form-control " />			
									<form:errors path="mobile" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.emailId"/></label>			
									<form:input path="emailId" id="emailId"  class="form-control " />			
									<form:errors path="emailId" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.doe"/></label>			
									<form:input path="doe" id="doe"  class="form-control " />			
									<form:errors path="doe" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.rsd"/></label>			
									<form:input path="rsd" id="rsd"  class="form-control " />			
									<form:errors path="rsd" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.punchingdate"/></label>			
									<form:input path="punchingdate" id="punchingdate"  class="form-control " />			
									<form:errors path="punchingdate" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.period"/></label>			
									<form:input path="period" id="period"  class="form-control " />			
									<form:errors path="period" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.expiredate"/></label>			
									<form:input path="expiredate" id="expiredate"  class="form-control " />			
									<form:errors path="expiredate" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.occurrence"/></label>			
									<form:input path="occurrence" id="occurrence"  class="form-control " />			
									<form:errors path="occurrence" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.paymentmode"/></label>			
									<form:input path="paymentmode" id="paymentmode"  class="form-control " />			
									<form:errors path="paymentmode" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.selfpayment"/></label>			
									<form:input path="selfpayment" id="selfpayment"  class="form-control " />			
									<form:errors path="selfpayment" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.chequeno"/></label>			
									<form:input path="chequeno" id="chequeno"  class="form-control " />			
									<form:errors path="chequeno" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.bankname"/></label>			
									<form:input path="bankname" id="bankname"  class="form-control " />			
									<form:errors path="bankname" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.publicprivate"/></label>			
									<form:input path="publicprivate" id="publicprivate"  class="form-control " />			
									<form:errors path="publicprivate" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.reffno"/></label>			
									<form:input path="reffno" id="reffno"  class="form-control " />			
									<form:errors path="reffno" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.supplier"/></label>			
									<form:input path="supplier" id="supplier"  class="form-control " />			
									<form:errors path="supplier" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.comm1"/></label>			
									<form:input path="comm1" id="comm1"  class="form-control " />			
									<form:errors path="comm1" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.percentage"/></label>			
									<form:input path="percentage" id="percentage"  class="form-control " />			
									<form:errors path="percentage" cssStyle="color:red"></form:errors> 
								</div>
	   	  						                      			 <div class="col-sm-6 form-group">
									<label><spring:message code="transaction.f48"/></label>			
									<form:input path="f48" id="f48"  class="form-control " />			
									<form:errors path="f48" cssStyle="color:red"></form:errors> 
								</div>
	   	  								  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
                       