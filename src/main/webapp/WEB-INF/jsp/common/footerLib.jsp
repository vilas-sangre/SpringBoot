<!-- Start Core Plugins
         =====================================================================-->
      
      
      
      <!-- jquery-ui --> 
      <!-- Bootstrap -->
      <script src="resources/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
      <!-- lobipanel -->
      <script src="resources/assets/plugins/lobipanel/lobipanel.min.js" type="text/javascript"></script>
      <!-- Pace js -->
      <script src="resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
      <!-- table-export js -->
      <script src="resources/assets/plugins/table-export/tableExport.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/table-export/jquery.base64.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/table-export/html2canvas.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/table-export/sprintf.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/table-export/jspdf.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/table-export/base64.js" type="text/javascript"></script>
      <!-- dataTables js -->
      <script src="resources/assets/plugins/datatables/dataTables.min.js" type="text/javascript"></script>
      <!-- SlimScroll -->
      <script src="resources/assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
      <!-- FastClick -->
      <script src="resources/assets/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
      <!-- CRMadmin frame -->
      <script src="resources/assets/dist/js/custom.js" type="text/javascript"></script>
      <!-- End Core Plugins
         =====================================================================-->
      <!-- Start Theme label Script
         =====================================================================-->
      <!-- Dashboard js -->
      <script src="resources/assets/dist/js/dashboard.js" type="text/javascript"></script>
      <!-- End Theme label Script
         =====================================================================-->
         
         <!-- ChartJs JavaScript -->
      <script src="resources/assets/plugins/chartJs/Chart.min.js" type="text/javascript"></script>
      <!-- Counter js -->
      <script src="resources/assets/plugins/counterup/waypoints.js" type="text/javascript"></script>
      <script src="resources/assets/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
      <!-- Monthly js -->
      <script src="resources/assets/plugins/monthly/monthly.js" type="text/javascript"></script>
      <!-- End Page Lavel Plugins
         =====================================================================-->
         <script>
         function getCurrentDate()
         {
         	var today = new Date();
         	var date = today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
         	return date;
         }
         $(document).ready(function() {
        	 
        	 $( ".dateControl" ).datepicker({dateFormat: 'dd/mm/yy',
     			changeMonth: true,
     			changeYear: true
        	 });
        	 //alert(getCurrentDate());
        	 var dateValue=$(".dateControl" ).val();
        	 if(dateValue!=null && dateValue=='')
        	 {
        		 $(".dateControl" ).val(getCurrentDate());
        	 }
        	 
         });
         
         
         
         </script>
       