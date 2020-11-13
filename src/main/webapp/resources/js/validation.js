function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}


function setDescriptionValueDropdownValue(fieldName)
{
	
	var valueSelected=$("#"+fieldName+" option:selected").text();
	$("#"+fieldName+"Value").val(valueSelected);
	
}


$(document).ready(function() {
	
    $(".onlyNumberWithDecimal").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
    	
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) || 
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
        	
                 return;
        }
        
        if($(this).val().indexOf('.')!=-1){
        	
        	
        	var number = $(this).val().split('.');
        	//console.log(number);
        	if(number!= null && number.length>2){
	        	 e.preventDefault();
	       }
        	else if(number!= null && number[1].length>1){
		        	 e.preventDefault();
		       }
        }
       

        
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
        
            
            e.preventDefault();
        }
        
    });
    
    
    $(".onlyNumberWithDecimal").blur(function (e) {
    	var value=$(this).val();
    	if(value!=''){
    		if(!isNaN(value))
    		$(this).val(parseFloat(value).toFixed(2));
    		$(this).addAttr("title");
    		$(this).attr("title",value);
        
    	}
    	else
    	{
    		$(this).val(0);
    	}	
    });
    
    $(".onlyNumberWithOutDecimal").blur(function (e) {
    	var value=$(this).val();
    	if(value!=''){
    		if(!isNaN(value))
    		$(this).val(parseInt(value));
    		//$(this).addAttr("alt");
    		//$(this).attr("alt",value);
        
    	}
    	else
    	{
    		$(this).val(0);
    	}	
    });
    
    $(".onlyNumberWithOutDecimal").each(function (e) {
    	var value=$(this).val();
    	if(value!=''){
    		if(!isNaN(value))
    		$(this).val(parseInt(value));
    		
        
    	}
    	else
    	{
    		$(this).val(0);
    	}	
    });
    
    $(".onlyNumberWithDecimal").each(function (e) {
    	var value=$(this).val();
    	if(value!=''){
    		if(!isNaN(value))
    		$(this).val(parseFloat(value).toFixed(2));
    		
        
    	}
    	else
    	{
    		$(this).val(0);
    	}	
    });
    
    $(".onlyNumberWithOutDecimal").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) || 
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    
    $(".onlyAlphaNumeric").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) || 
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39) || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 97 && e.keyCode <= 122)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(".onlyCharacterAndHyphon").keydown(function (e) {
    	  // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110,45]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) || 
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39) || (e.keyCode >= 65 && e.keyCode <= 90) || (e.keyCode >= 97 && e.keyCode <= 122)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
    $(".onlyUpperCaseAllow").on('keypress', function(evt) {
    	  $(this).val(function (_, val) {
    	    return val + String.fromCharCode(evt.which).toUpperCase();
    	  });

    	  return false;
    	});
    
    
    $("#frm").submit(function(e){
    	/*var str="";
		$( ".select-style" ).each(function( index ) {
			
			if($( this ).val()=="")
			{
				var nameOfControl=$(this).attr("name");
			  str=str+"\n"+(nameOfControl+ "Should Not Be Empty" );
			  e.preventDefault();
			}
			  
			});

		if(str != "")
		alert(str);
		str="";*/
    });
    
    
    $("#allLetterToCaps").bind('keyup', function (e) {
        if (e.which >= 97 && e.which <= 122) {
            var newKey = e.which - 32;
            // I have tried setting those
            e.keyCode = newKey;
            e.charCode = newKey;
        }

        $("#textbox").val(($("#textbox").val()).toUpperCase());
    });
});



	
	function changeToCurrency(x)
	{
		//var x=1400000;
		x=x.toString();
		var lastThree = x.substring(x.length-3);
		var otherNumbers = x.substring(0,x.length-3);
		if(otherNumbers != '')
		    lastThree = ',' + lastThree;
		var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ",") + lastThree;
		return res;

	}
	
	
	function convertDateFromMMDDYYYY(vardate)
	{
		
		var dd=vardate.split('/')[1];
		var mm=parseInt(vardate.split('-')[1])-1
		var yyyy=vardate.split('/')[2];
		
		var dateNew=new Date(yyyy,mm,dd);
		
		return dateNew;
		
		
	}
	
	function convertDateFromYYYYMMDD(vardate)
	{
		
		var mm=parseInt(vardate.split('-')[1])-1
		var yyyy=vardate.split('-')[0];
		var dd=(vardate.split('-')[2]).substring(0,2);
		
		var dateNew=new Date(yyyy,mm,dd);
		
		return dateNew;
		
		
	}
	
	function convertDateFromYYYYMMDDToDDMMYYYY(vardate)
	{
		
		var mm=parseInt(vardate.split('-')[1])-1;
		var yyyy=vardate.split('-')[0];
		var dd=(vardate.split('-')[2]).substring(0,2);
		
		return dd+"/"+mm+"/"+yyyy;
		
		
	}
	function convertDateFromDDMMYYYY(vardate)
	{
		
		var dd=vardate.split('/')[1];
		var mm=parseInt(vardate.split('-')[1])-1;
		var yyyy=vardate.split('/')[2];
		
		var dateNew=new Date(yyyy,mm,dd);
		
		return dateNew;
		
		
	}
	
	
	/*
	 * jQuery Maxlength plugin 1.0.0
	 *
	 * Copyright (c) 2013 Viral Patel
	 * http://viralpatel.net
	 *
	 * Licensed under the MIT license:
	 *   http://www.opensource.org/licenses/mit-license.php
	 */

	(function ($) {

		$.fn.maxlength = function(){
			 
			$("textarea[maxlength], input[maxlength]").keypress(function(event){ 
				var key = event.which;
				 
				//all keys including return.
				if(key >= 33 || key == 13 || key == 32) {
					var maxLength = $(this).attr("maxlength");
					var length = this.value.length;
					if(length >= maxLength) {					 
						event.preventDefault();
					}
				}
			});
		}

	})(jQuery);
	
	
	
	jQuery(document).ready(function($) {
   	 //Set maxlength of all the textarea (call plugin)
   	 $().maxlength();
});