



<head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>CRM Admin Panel</title>

       <!-- Favicon and touch icons -->
      <link rel="shortcut icon" href="resources/assets/dist/img/ico/favicon.png" type="image/x-icon">
      <!-- Start Global Mandatory Style
         =====================================================================-->
         <!-- jQuery -->
	  
	  
	  <script src="resources/assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
	  <!-- jquery-ui --> 
      <script src="resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.js" type="text/javascript"></script>
    <!-- jquery-ui css -->
      <link href="resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
      <!-- Bootstrap -->
      <link href="resources/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
      <!-- Bootstrap rtl -->
      <!--<link href="resources/assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
      <!-- Lobipanel css -->
      <link href="resources/assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css"/>
      <!-- Pace css -->
      <link href="resources/assets/plugins/pace/flash.css" rel="stylesheet" type="text/css"/>
      <!-- Font Awesome -->
      <link href="resources/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
      <!-- Pe-icon -->
      <link href="resources/assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
      <!-- Themify icons -->
      <link href="resources/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
      <!-- dataTables css -->
      <link href="resources/assets/plugins/datatables/dataTables.min.css" rel="stylesheet" type="text/css"/>
      <!-- End Global Mandatory Style
         =====================================================================-->
      <!-- Start Theme Layout Style
         =====================================================================-->
      <!-- Theme style -->
      <link href="resources/assets/dist/css/stylecrm.css" rel="stylesheet" type="text/css"/>
      <!-- Theme style rtl -->
      <!--<link href="resources/assets/dist/css/stylecrm-rtl.css" rel="stylesheet" type="text/css"/>-->
      <!-- End Theme Layout Style
         =====================================================================-->
	<!-- Start page Label Plugins 
         =====================================================================-->
      <!-- fullcalendar css -->
      <link href="resources/assets/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
      <!-- fullcalendar print css -->
      <link href="resources/assets/plugins/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media='print' type="text/css"/>
      <!-- End page Label Plugins 
         =====================================================================-->
	<style type="text/css" title="currentStyle">
			@import "resources/JTable/media/css/demo_table.css";
		</style>
		<script type="text/javascript" language="javascript" src="resources/JTable/media/js/jquery.dataTables.js"></script>
  <script type="text/javascript" language="javascript" src="resources/js/validation.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
  
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
<link href="resources/themes/metro/blue/jtable.css" rel="stylesheet" type="text/css" />
		<link href="resources/themes/metro/blue/jtable.min.css" rel="stylesheet" type="text/css" />
		<!-- Include jTable script file. -->
		<script src="resources/js/jquery.jtable.js" type="text/javascript"></script>
		 <script src="resources/js/jquery.jtable.min.js" type="text/javascript"></script>
		  <script src="resources/assets/js/jquery.mockjax.js"></script>
        <script src="resources/assets/js/bootstrap-typeahead.js"></script>
        <link href="http://hayageek.github.io/jQuery-Upload-File/4.0.11/uploadfile.css" rel="stylesheet">
<script src="http://hayageek.github.io/jQuery-Upload-File/4.0.11/jquery.uploadfile.min.js"></script> 
<!--  -->
<script type="text/javascript">


function getEditLookupValue(id,fieldName)
{
	
	$.ajax({
	  	url: "getEditLookupValue?id="+id,
	  	type: "GET",
	
	  	success: function(data) {
	  		
			$("#"+fieldName).val(data);	
			
	
	  		//$("#sPhoneFromResponse").html(respContent);   		
	  	}
	  });
}
/* function getAccessArabicDescription()
{
	var lease_Group="ADA";
    var url = "leaseGroups/getEditModelLookupValue?";
	getEditModelLookupValue(url,lease_Group,'description','LeaseGroups','description');
} */
 function getEditModelLookupValueWithURL(url,id,fieldName,lookupType,propName)
{
	
	$.ajax({
	  	url: url+"id="+id+"&propName="+propName+"&lookupType="+lookupType,
	  	type: "GET",
	
	  	success: function(data) {
	  		
			$("#"+fieldName).val(data);			
			return data;
	  		//$("#sPhoneFromResponse").html(respContent);   		
	  	}
	  });
} 
function getEditModelLookupValue(id,fieldName,lookupType,propName)
{
	$.ajax({
	  	url: "getEditModelLookupValue?id="+id+"&propName="+propName+"&lookupType="+lookupType,
	  	type: "GET",
	
	  	success: function(data) {
	  		
	  		
			$("#"+fieldName).val(data);			
			return data;
	  		//$("#sPhoneFromResponse").html(respContent);   		
	  	}
	  });
}



function getEditCurrencyModelLookupValue(currencyCode,fieldName,lookupType,propName)
{
	$.ajax({
	  	url: "getEditCurrencyModelLookupValue?currencyCode="+currencyCode+"&propName="+propName+"&lookupType="+lookupType,
	  	type: "GET",
	
	  	success: function(data) {
	  		
			$("#"+fieldName).val(data);			
	
	  		//$("#sPhoneFromResponse").html(respContent);   		
	  	}
	  });
}


function getEditExchangeRateModelLookupValue(currencyCode,fieldName,lookupType,propName)
{
	$.ajax({
	  	url: "getEditExchangeRateModelLookupValue?currencyCode="+currencyCode+"&propName="+propName+"&lookupType="+lookupType,
	  	type: "GET",
	
	  	success: function(data) {
	  		
			$("#"+fieldName).val(data);			
	
	  		//$("#sPhoneFromResponse").html(respContent);   		
	  	}
	  });
}


function dobToAgeCalculatorInYear(dateString)
{

    //var dateString = $("#dob").val();

	  var now = new Date();
  var today = new Date(now.getFullYear(),now.getMonth(),now.getDate());
//alert("Today is "+today);	
  var yearNow = now.getFullYear();
  var monthNow = now.getMonth();
  var dateNow = now.getDate();

  var dob = new Date(dateString.substring(0,3),        	                                        
          dateString.substring(5,6) ,dateString.substring(8,9)                 
          );
//alert("Date is "+dob);
  var yearDob = dob.getFullYear();
  var monthDob = dob.getMonth();
  var dateDob = dob.getDate();
//alert(monthDob);	

	//alert(monthNow+" "+monthDob);
  var years = yearNow - yearDob;
  var months=monthNow-monthDob;

  if(months < 0 || (months == 0)) {
	  years = parseInt(years);
	  if(months<0){
	  		months=12+months;
	  		years=years-1;
	  }
	 // return years;
	
	 // document.getElementById('lblAge').innerHTML = years +' Years= '+months
	  }
	  else {
		//  return years;
        	
    	
	  //document.getElementById('lblAge').innerHTML = years +' Years ='+months
	  }
  return years;

}


function dobToAgeCalculatorInMonth(dateString)
{

    //var dateString = $("#dob").val();

	  var now = new Date();
  var today = new Date(now.getFullYear(),now.getMonth(),now.getDate());
//alert("Today is "+today);	
  var yearNow = now.getFullYear();
  var monthNow = now.getMonth();
  var dateNow = now.getDate();

  var dob = new Date(dateString.substring(0,3),        	                                        
                     dateString.substring(5,6) ,dateString.substring(8,9)                 
                     );
	//alert("Date is "+dateString.substring(0,4)+" "+dateString.substring(5,7)+" "+dateString.substring(8,10));
  var yearDob = dob.getFullYear();
  var monthDob = dob.getMonth();
  var dateDob = dob.getDate();
//alert(monthDob);	

	//alert(monthNow+" "+monthDob);
  var years = yearNow - yearDob;
  var months=monthNow-monthDob;

  if(months < 0 || (months == 0)) {
	  years = parseInt(years);
	  if(months<0){
	  		months=12+months;
	  		years=years-1;
	  }
	  return months;
	
	 // document.getElementById('lblAge').innerHTML = years +' Years= '+months
	  }
	  else {
		  return months;
        	
    	
	  //document.getElementById('lblAge').innerHTML = years +' Years ='+months
	  }
  	    

}

function showFilesInView(fileName)
{
	
	//downloadFiles?fileName=
	var left = (screen.width/2)-(800/2);
	  var top = (screen.height/2)-(400/2);
   window.open("getVehicleFileView?fileName="+fileName,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);

}
</script>


<script type="text/javascript">
function force_logout() {
  // AJAX request to server notifying that the browser has been closed.
}
</script>

<link rel="stylesheet" href="resources/css/jquery.timepicker.min.css">
<script src="resources/js/jquery.timepicker.min.js"></script>
<style>
#breadcumTextToDisplay {
  text-align: center !important;
}

</style>
<script type="text/javascript" charset="utf-8">
			
			$(document).ready(function() {
				
				$("#breadcumTextToDisplay").text($("h2:first").text());
				//$("h2:first").hide();
				$("h2:first").css("text-align", "center");
				
				 var attachedFileIndex=0;     
				 $('#addAttachedFile').click(function() {
					 
						$('#fileTable').append('<tr> <td>'
								+'	<input type="file" onchange="checkFileSize(this)"  name="files['+ (++attachedFileIndex) +']" />'+'</td>  <td>'
								+'	<textarea  name="desc" ></textarea>'+'</td> <td>'
								+'	<textarea  name="desc_arabic" ></textarea>'+'<input type="hidden" name="request_ref_type"></td></tr>');
						
					});
				
				
			} );
			
			function getDayHoursAndMinuteDiff(StartDate,StartTime,EndDate,EndTime,field)
			{
				  
				 //alert(currencyCode+""+baseCurrencyCode);
				  //var json = { "currencyCode" : currencyCode, "baseCurrencyCode" : baseCurrencyCode};
				  var data="StartTime="+StartTime+"&StartDate="+StartDate+"&EndDate="+EndDate+"&EndTime="+EndTime+"&action=getDayHoursAndMinuteDiff";
					  $.ajax({
					  	url: "getDayHoursAndMinuteDiff?"+data,
					  	type: "GET",
					
					  	success: function(response) {
					  		
							
							
					
					  		$("#"+field).val(response);   		
					  	}
					  });
					
			}
			
			function viewPdf(pdfName) 
			{
				if(pdfName != '') 
				{	
			  		var left = (screen.width/2)-(800/2);
				  	var top = (screen.height/2)-(400/2);
				  	var data = "displayPDFReport?fileName="+pdfName;
			  		window.open(data,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
				}
			}
			
			function viewPdfAndPrint(pdfName) 
			{
				if(pdfName != '') 
				{	
			  		var left = (screen.width/2)-(800/2);
				  	var top = (screen.height/2)-(400/2);
				  	var data = "displayPDFReport?fileName="+pdfName;
			  		var www=window.open(data,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
			  		www.print();
				}
			}
			function downloadFile(fileName,fileType) 
			{
			if(fileName != '' && fileType != '') 
			{	var left = (screen.width/2)-(800/2);
				var top = (screen.height/2)-(400/2);
				var data = "downloadFile?fileName="+fileName+"&fileType="+fileType;
				window.open(data,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
			}
			}


			function viewImage(imageName) {
				 
				if(imageName != '') 
				{	
			        $('#vehicleProductImage').attr('src','showImageForVehicleProduct?fileName='+imageName);
			  		var left = (screen.width/2)-(800/2);
				  	var top = (screen.height/2)-(400/2);
					    var pathNew = $('#vehicleProductImage').attr('src');
			  		window.open(pathNew,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
				}

			}
			
			
			function JTableDateFunctionConvert(data)
			{
				var d = new Date(data),
				 month = '' + (d.getMonth() + 1),
                 day = '' + d.getDate(),
                 year = d.getFullYear();

             if (month.length < 2) month = '0' + month;
             if (day.length < 2) day = '0' + day;

             return [day, month, year].join('/');
				
			}

			function viewVehicleProductImage(imageName) {
				 
				if(imageName != '') 
				{	
			        $('#vehicleProductImage').attr('src','showImageForParts?fileName='+imageName);
			  		var left = (screen.width/2)-(800/2);
				  	var top = (screen.height/2)-(400/2);
					    var pathNew = $('#vehicleProductImage').attr('src');
			  		window.open(pathNew,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
				}

			}

			function viewVehicleProductByPdf(pdfName) 
			{
				if(pdfName != '') 
				{	
			  		var left = (screen.width/2)-(800/2);
				  	var top = (screen.height/2)-(400/2);
				  	var data = "displayPDFReport?fileName="+pdfName;
			  		window.open(data,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
				}
			}
			function downloadVehicleProductFile(fileName,fileType) 
			{
			if(fileName != '' && fileType != '') 
			{	var left = (screen.width/2)-(800/2);
			var top = (screen.height/2)-(400/2);
			var data = "downloadFileForParts?fileName="+fileName+"&fileType="+fileType;
				window.open(data,'_blank','height=400,width=800,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no, top='+top+', left='+left);
			}
			}
			</script>
			
			 


</head>

