<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="taglib_includes.jsp" %>


<!DOCTYPE html>
<html lang="en">
    
<head>

<jsp:include page="template.jsp"></jsp:include>
  <script>

/**
 * Get the user IP throught the webkitRTCPeerConnection
 * @param onNewIP {Function} listener function to expose the IP locally
 * @return undefined
 */
function getUserIP(onNewIP) { //  onNewIp - your listener function for new IPs
    //compatibility for firefox and chrome
    var myPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;
    var pc = new myPeerConnection({
        iceServers: []
    }),
    noop = function() {},
    localIPs = {},
    ipRegex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/g,
    key;

    function iterateIP(ip) {
        if (!localIPs[ip]) onNewIP(ip);
        localIPs[ip] = true;
    }

     //create a bogus data channel
    pc.createDataChannel("");

    // create offer and set local description
    pc.createOffer(function(sdp) {
        sdp.sdp.split('\n').forEach(function(line) {
            if (line.indexOf('candidate') < 0) return;
            line.match(ipRegex).forEach(iterateIP);
        });
        
        pc.setLocalDescription(sdp, noop, noop);
    }, noop); 

    //listen for candidate events
    pc.onicecandidate = function(ice) {
        if (!ice || !ice.candidate || !ice.candidate.candidate || !ice.candidate.candidate.match(ipRegex)) return;
        ice.candidate.candidate.match(ipRegex).forEach(iterateIP);
    };
}

// Usage

getUserIP(function(ip){
	
		document.getElementById("ip").innerHTML = 'Got your IP ! : '  + ip;
		document.getElementById("ipaddress").value =ip;
		
});



function changeLegalMaster()
{
	var legalEntity=$("#legalEntity").val();
	
	if(legalEntity!=null && legalEntity.length>0)
	location.href="index?legalEntityForDataBase="+legalEntity;
	
}
function validate()
{
	var legalEntity=$("#legalEntity").val();
	var j_password=$("#j_password").val();
	var j_username=$("#j_username").val();
	if(legalEntity=='')
	{
		alert("Please Select Legal Entity");
		return false;
	}
	else if(j_username=='')
	{
		alert("Please Enter Username");
		return false;
	}
	else if(j_password=='')
	{
		alert("Please Enter Password");
		return false;
	}
	else
		{
			return true;
		}
	
}
</script>      
    </head>
    <body>
        <!-- Content Wrapper -->
        <div class="login-wrapper">
            <div class="back-link">
                <a href="logout" class="btn btn-add"><img src="resources/images/LEOS.jpg" height="120px" width="150px"/></a>
            </div>
            <div class="container-center lg">
             <div class="login-area">
                <div class="panel panel-bd panel-custom">
                    <div class="panel-heading">
                        <div class="view-header">
                            <div class="header-icon">
                                <i class="pe-7s-unlock"></i>
                            </div>
                            <div class="header-title">
                                <h3>Register</h3>
                                <small><strong>Please enter your data to register.</strong></small>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                         <form:form method="post" action="register" name="frm" id="frm"  enctype="multipart/form-data" commandName="user">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.user_name"/></label>
								<form:input path="user_name" id="user_name"  class="form-control textAreaClass"  maxlength="200"  />
								<form:errors path="user_name" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.password"/></label>
								<form:password path="password" id="password"  class="form-control textAreaClass"  maxlength="200"  />
								<form:errors path="password" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.enrollement_no"/></label>
								<form:input path="enrollement_no" id="enrollement_no"  class="form-control textAreaClass"  maxlength="100"  />
								<form:errors path="enrollement_no" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.first_name"/></label>
								<form:input path="first_name" id="first_name"  class="form-control textAreaClass"  maxlength="200"  />
								<form:errors path="first_name" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.last_name"/></label>
								<form:input path="last_name" id="last_name"  class="form-control textAreaClass"  maxlength="200"  />
								<form:errors path="last_name" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.mobile"/></label>
								<form:input path="mobile" id="mobile"  class="form-control textAreaClass"  maxlength="100"  />
								<form:errors path="mobile" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.email_id"/></label>
								<form:input path="email_id" id="email_id"  class="form-control textAreaClass"  maxlength="200"  />
								<form:errors path="email_id" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.address"/></label>
								<form:input path="address" id="address"  class="form-control textAreaClass"  maxlength="500"  />
								<form:errors path="address" cssStyle="color:red"></form:errors> 
								</div>
								
								 <div class="col-sm-6 form-group">
								<label><spring:message code="user.role"/></label>
								<form:select path="role" id="role"  class="form-control textAreaClass"  maxlength="100"  >
								<form:option value="Student">Student</form:option>
								<form:option value="Faculty">Faculty</form:option>
								</form:select>
								<form:errors path="role" cssStyle="color:red"></form:errors> 
								</div>
								
								 


                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                                   <button type='button' onclick="location.href='login'" class="btn btn-add">Go To Login</button>
                            </div>
                           </form:form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
       
    </body>

<script>

var legalEntityMaster='${param.legal_entity}';
if(legalEntityMaster!='' && legalEntityMaster!=null && legalEntityMaster!='NA')
{
	$("#legalEntity").val(legalEntityMaster);
}


</script>




<c:remove var="menuStructureListMenu" scope="session" />
<c:remove var="username" scope="session" />

</html>
