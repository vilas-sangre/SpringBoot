<%@include file="taglib_includes.jsp" %>
<style>
.form-submit-button {

background: #3a8dd4;

color: #fff;

border: 1px solid #eee;

border-radius: 5px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;
font-size:17px;
padding: 6px 6px 6px 6px;

}

.form-submit-button:hover {

background: #016ABC;

color: #fff;

border: 1px solid #eee;

border-radius: 20px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;
margin-bottom: 10px;
}

</style>
			
<style>

.select-style {
    border-radius: 0;
    box-shadow: none;
    border: 1px solid #e4e5e7;
}
.select-style:focus {
    border-color: #009688;
    box-shadow: none;
}


.select-style{
    display: block;
    width: 95%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}


</style>
 <header class="main-header">
            <a href="index" class="logo">
               <!-- Logo -->
               <span class="logo-mini">
              <img src="resources/images/LEOS2.jpg" alt="" style="height: 40px;">
               </span>
               <span class="logo-lg">
                <img src="resources/images/LEOS2.jpg" alt="" style="height: 40px;">
               </span>
            </a>
            <!-- Header Navbar -->
            <nav class="navbar navbar-static-top">
               <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                  <!-- Sidebar toggle button-->
                  <span class="sr-only">Toggle navigation</span>
                  <span class="pe-7s-angle-left-circle"></span>
               </a>
               <!-- searchbar-->
               <a href=""><img src="resources/images/dec2014-logo33333.png" style="width: 130px;"></a>
              <div class="navbar-custom-menu">
                  <ul class="nav navbar-nav">
                     <!-- Orders -->
                     <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle admin-notification" data-toggle="dropdown"> 
                        <i class="pe-7s-cart"></i>
                        <span class="label label-primary">5</span>
                        </a>
                        <ul class="dropdown-menu">
                           <li>
                              <ul class="menu">
                                 <li >
                                    <!-- start Orders -->
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/basketball-jersey.png" class="img-thumbnail" alt="User Image">
                                       </div>
                                       <h4>polo shirt</h4>
                                       <p><strong>total item:</strong> 21
                                       </p>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/shirt.png" class="img-thumbnail" alt="User Image">
                                       </div>
                                       <h4>Kits</h4>
                                       <p><strong>total item:</strong> 11
                                       </p>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/football.png" class="img-thumbnail" alt="User Image">
                                       </div>
                                       <h4>Football</h4>
                                       <p><strong>total item:</strong> 16
                                       </p>
                                    </a>
                                 </li>
                                 <li class="nav-list">
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/shoe.png" class="img-thumbnail" alt="User Image">
                                       </div>
                                       <h4>Sports sheos</h4>
                                       <p><strong>total item:</strong> 10
                                       </p>
                                    </a>
                                 </li>
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <!-- Messages -->
                     <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="pe-7s-mail"></i>
                        <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                           <li>
                              <ul class="menu">
                                 <li>
                                    <!-- start message -->
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/avatar.png" class="img-circle" alt="User Image">
                                       </div>
                                       <h4>Ronaldo</h4>
                                       <p>Please oreder 10 pices of kits..</p>
                                       <span class="badge badge-success badge-massege"><small>15 hours ago</small>
                                       </span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/avatar2.png" class="img-circle" alt="User Image">
                                       </div>
                                       <h4>Leo messi</h4>
                                       <p>Please oreder 10 pices of Sheos..</p>
                                       <span class="badge badge-info badge-massege"><small>6 days ago</small>
                                       </span>   
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left" >
                                          <img src="resources/assets/dist/img/avatar3.png" class="img-circle" alt="User Image">
                                       </div>
                                       <h4>Modric</h4>
                                       <p>Please oreder 6 pices of bats..</p>
                                       <span class="badge badge-info badge-massege"><small>1 hour ago</small>
                                       </span>
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/avatar4.png" class="img-circle" alt="User Image">
                                       </div>
                                       <h4>Salman</h4>
                                       <p>Hello i want 4 uefa footballs</p>
                                       <span class="badge badge-danger badge-massege">
                                       <small>6 days ago</small>
                                       </span>  
                                    </a>
                                 </li>
                                 <li>
                                    <a href="#" class="border-gray">
                                       <div class="pull-left">
                                          <img src="resources/assets/dist/img/avatar5.png" class="img-circle" alt="User Image">
                                       </div>
                                       <h4>Sergio Ramos</h4>
                                       <p>Hello i want 9 uefa footballs</p>
                                       <span class="badge badge-info badge-massege"><small>5 hours ago</small>
                                       </span>
                                    </a>
                                 </li>
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <!-- Notifications -->
                     <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="pe-7s-bell"></i>
                        <span class="label label-warning">${fn:length(activityList)}</span>
                        </a>
                        <ul class="dropdown-menu">
                           <li>
                              <ul class="menu">
                              <c:forEach items="${activityList}" var="activity">
                                 <li>
                                    <a href="#" class="border-gray">
                                    <i class="fa fa-dot-circle-o color-green"></i>${activity.activityName}-${activity.activityDesc}</a>
                                 </li>
                                </c:forEach> 
                                
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <!-- Tasks -->
                     <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="pe-7s-note2"></i>
                        <span class="label label-danger">6</span>
                        </a>
                        <ul class="dropdown-menu">
                           <li>
                              <ul class="menu">
                                 <li>
                                    <!-- Task item -->
                                    <a href="#" class="border-gray">
                                       <span class="label label-success pull-right">50%</span>
                                       <h3><i class="fa fa-check-circle"></i> Theme color should be change</h3>
                                    </a>
                                 </li>
                                 <!-- end task item -->
                                 <li>
                                    <!-- Task item -->
                                    <a href="#" class="border-gray">
                                       <span class="label label-warning pull-right">90%</span>
                                       <h3><i class="fa fa-check-circle"></i> Fix Error and bugs</h3>
                                    </a>
                                 </li>
                                 <!-- end task item -->
                                 <li>
                                    <!-- Task item -->
                                    <a href="#" class="border-gray">
                                       <span class="label label-danger pull-right">80%</span>
                                       <h3><i class="fa fa-check-circle"></i> Sidebar color change</h3>
                                    </a>
                                 </li>
                                 <!-- end task item -->
                                 <li>
                                    <!-- Task item -->
                                    <a href="#" class="border-gray">
                                       <span class="label label-info pull-right">30%</span>   
                                       <h3><i class="fa fa-check-circle"></i> font-family should be change</h3>
                                    </a>
                                 </li>
                                 <li>
                                    <!-- Task item -->
                                    <a href="#"  class="border-gray">
                                       <span class="label label-success pull-right">60%</span>
                                       <h3><i class="fa fa-check-circle"></i> Fix the database Error</h3>
                                    </a>
                                 </li>
                                 <li>
                                    <!-- Task item -->
                                    <a href="#"  class="border-gray">
                                       <span class="label label-info pull-right">20%</span>
                                       <h3><i class="fa fa-check-circle"></i> data table data missing</h3>
                                    </a>
                                 </li>
                                 <!-- end task item -->
                              </ul>
                           </li>
                        </ul>
                     </li>
                     <!-- Help -->
                     <li class="dropdown dropdown-help hidden-xs">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="pe-7s-settings"></i></a>
                        <ul class="dropdown-menu" >
                           <li>
                              <a href="profile.html">
                              <i class="fa fa-line-chart"></i> Networking</a>
                           </li>
                           <li><a href="#"><i class="fa fa fa-bullhorn"></i> Lan settings</a></li>
                           <li><a href="#"><i class="fa fa-bar-chart"></i> Settings</a></li>
                           <li><a href="login.html">
                              <i class="fa fa-wifi"></i> wifi</a>
                           </li>
                        </ul>
                     </li>
                     <!-- user -->
                     <li class="dropdown dropdown-user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="resources/assets/dist/img/avatar5.png" class="img-circle" width="45" height="45" alt="user"></a>
                        <ul class="dropdown-menu" >
                           <li>
                              <a href="editUser?id=${user.id}">
                              <i class="fa fa-user"></i> User Profile</a>
                           </li>
                           <li><a href="logout">
                              <i class="fa fa-sign-out"></i> Signout</a>
                           </li>
                        </ul>
                     </li>
                  </ul>
               </div>
             
            </nav>
         </header>
         <!-- =============================================== --> 




<!-- Left side column. contains the sidebar -->
         <aside class="main-sidebar">
            <!-- sidebar -->
            <div class="sidebar">
               <!-- sidebar menu -->
               <ul class="sidebar-menu">
                  <li>
                     <a href="index"><i class="fa fa-tachometer"></i><span>Dashboard</span>
                     <span class="pull-right-container">
                     </span>
                     </a>
                  </li>
                  
                   <li>
                     <a href="index"><i class="fa fa-tachometer"></i><span>Business Associates</span>
                     <span class="pull-right-container">
                     </span>
                     </a>
                  </li>
                   <li class="treeview">
                     <a href="#">
                     <i class="fa fa-users"></i><span>Praposal</span>
                     <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                     </span>
                     </a>
                     <ul class="treeview-menu">
                        <li><a href="user">Motor</a></li>
                        <li><a href="userList">Non Motor</a></li>
                     </ul>
                  </li>
                  
                  
                  
                  <c:if test="${j_username=='admin@gmail.com'}">
                  
                  <li class="treeview">
                     <a href="#">
                     <i class="fa fa-users"></i><span>Users</span>
                     <span class="pull-right-container">
                     <i class="fa fa-angle-left pull-right"></i>
                     </span>
                     </a>
                     <ul class="treeview-menu">
                        <li><a href="user">Add User</a></li>
                        <li><a href="userList">List</a></li>
                     </ul>
                  </li>
                  
				
                  </c:if>
                  
                  
					${menuStructureListMenu}
                  <li>
                     <a href="logout">
                     <i class="fa fa-sign-out"></i> <span>Logout</span>
                     <span class="pull-right-container">
                     </span>
                     </a>
                  </li>
               </ul>
            </div>
            <!-- /.sidebar -->
         </aside>
         
          <!-- =============================================== -->
          
          
          
          <script type="text/javascript" >
function onalertdisplay(str) {
	
	
	
	var optForUpdateDelete = {
		    autoOpen: false,
		    modal: true,
		    width: 650,
		    height:200,
		    title: 'Confirm',
		    buttons: { 
				Ok: function() {
				     	
				    $(this).dialog("close");
				   // location.href=src;
				}
			}
		};
	
	$("#genericAlertMessage").html(str);
	$("#genericAlertMessage").show();
	$("#genericAlertMessage").dialog(optForUpdateDelete).dialog("open");
	
	
	
}

	$(function() {
		
		$("#successListDialogBoxForDeleteUpdate").hide();
		$("input[type='submit']").addClass("form-submit-button");
		$("input[type='reset']").addClass("form-submit-button");
		$("input[type='button']").addClass("form-submit-button");
		$("button").addClass("form-submit-button");
	});
		
</script>


			

<script type="text/javascript">
function onChangeForDeleteUpdate(id) {
	
	var src=$("#actionValue"+id).val();
	
	var optForUpdateDelete = {
		    autoOpen: false,
		    modal: true,
		    width: 650,
		    height:200,
		    title: 'Confirm',
		    buttons: { 
				Yes: function() {
				     	
				    $(this).dialog("close");
				    location.href=src;
				},
				No: function () {
				        	
				    $(this).dialog("close");
				    $("#actionValue"+id).val("");
				    //location.href=src;
				}
			}
		};
	
	$("#successListDialogBoxForDeleteUpdate").show();
	$("#successListDialogBoxForDeleteUpdate").dialog(optForUpdateDelete).dialog("open");
	
	
	
}



function onalertdisplay(str) {
	
	
	
	var optForUpdateDelete = {
		    autoOpen: false,
		    modal: true,
		    width: 650,
		    height:200,
		    title: 'Confirm',
		    buttons: { 
				Ok: function() {
				     	
				    $(this).dialog("close");
				   // location.href=src;
				}
			}
		};
	
	$("#genericAlertMessage").html(str);
	$("#genericAlertMessage").show();
	$("#genericAlertMessage").dialog(optForUpdateDelete).dialog("open");
	
	
	
}

</script>



<script>
function changeLanguage()
{

	var languageChange=$('#languageChange', '#languageChangeFrm').val();
	
	if(languageChange=="en")
		location.href="?lang=en";
	else if(languageChange=="de")
		location.href="?lang=de";
	else if(languageChange=="ar")
		location.href="?lang=ar";
	
	
	
}
</script>
	<div id="successListDialogBoxForDeleteUpdate">		
		<p>Do You Want to Perform this Action?</p>   
	</div>
	
	<div id="genericAlertMessage">

	</div>