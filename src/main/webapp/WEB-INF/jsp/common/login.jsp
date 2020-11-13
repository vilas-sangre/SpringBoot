<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="taglib_includes.jsp" %>


<!DOCTYPE html>
<html lang="en">
    
<head>
<script type="text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
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
            <div class="container-center">
            <div class="login-area">
                <div class="panel panel-bd panel-custom">
                    <div class="panel-heading">
                        <div class="view-header">
                            <div class="header-icon">
                                <i class="pe-7s-unlock"></i>
                            </div>
                            <div class="header-title">
                                <h3>Login</h3>
                                <small><strong>Please enter your credentials to login.</strong></small>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form name='f' action="login" method='POST'>
                           
                            
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="j_username" id="j_username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="j_password" id="j_password" class="form-control">
                                <span class="help-block small">Your strong password</span>
                            </div>
                            <div>
                                <button type='submit' class="btn btn-add">Login</button>
                                <button type='button' onclick="location.href='register'" class="btn btn-add">Register</button>
                                <!-- <a class="btn btn-warning" href="register.html">Register</a> -->
                            </div>
                        </form>
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
