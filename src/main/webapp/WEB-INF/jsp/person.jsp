<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertAttribute name="taglib_includes" />
<html lang="en">


<tiles:insertAttribute name="header" />
    <body class="hold-transition sidebar-mini">        
        <!-- Site wrapper -->
        <div class="wrapper">
           <jsp:include page="common/menu.jsp"></jsp:include>
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <div class="header-title">
                            <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>  
                            <h1> Project</h1>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="/"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </div>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <!-- Form controls -->
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                    <div class="panel-heading">
                                        <div class="btn-group"> 
                                            <a class="btn btn-primary" href="personList"> <i class="fa fa-list"></i>  <spring:message code="person.heading"/> List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                           
                           
                           <form:form method="post" action="savePerson" name="frm" id="frm"  enctype="multipart/form-data" commandName="person">
                          
                          	<form:errors path="*" cssStyle="color:red"></form:errors> 
                           
                                 
                                <label><spring:message code="person.id"/> <i class='far fa-user'></i></label>
<input name="id" id="id" type='number' class="form-control onlyNumberWithOutDecimal"  value='person.id'  />
<label><spring:message code="person.personName"/> <i class='far fa-user'></i></label>
<input name="personName" id="personName" type='text' class="form-control" maxlength="100" value='person.personName'  />
<label><spring:message code="person.personPhone"/> <i class='far fa-user'></i></label>
<input name="personPhone" id="personPhone" type='text' class="form-control" maxlength="100" value='person.personPhone'  />
<select name="address" id="address" >
<c:forEach var='address' items="addressList"><option>address</option></c:forEach></select>

		  
		  
		
                                 
                                    
                             
                           <div class="col-sm-12 reset-button">
                                  <button type='submit' class="btn btn-add">Save</button>
                            </div>
                           </form:form>
                           
   </div>
                                 </div>
                             </div>
                         </div>
                         
                     </section> <!-- /.content -->
                 </div> <!-- /.content-wrapper -->
                
            </div> <!-- ./wrapper -->
      

        <!-- End Core Plugins
        =====================================================================-->
        <!-- Start Theme label Script
        =====================================================================-->
        <tiles:insertAttribute name="footer" />
    </body>
    

</html>
                       