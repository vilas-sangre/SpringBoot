/**
 * 
 */



function getDateDiffById(id1,id2)
{
	
		var id1date=id1.split('/')[1]+"/"+id1.split('/')[0]+"/"+id1.split('/')[2];
		var id2date=id2.split('/')[1]+"/"+id2.split('/')[0]+"/"+id2.split('/')[2];
		//alert(id1date+" "+id2date);
		var From_date = new Date(id1date);
		var To_date = new Date(id2date);
		var diff_date =  To_date - From_date;
		 
		var years = Math.floor(diff_date/31536000000);
		var months = Math.floor((diff_date % 31536000000)/2628000000);
		var days = Math.floor(((diff_date % 31536000000) % 2628000000)/86400000);
		return days;
		//alert( years+" year(s) "+months+" month(s) "+days+" and day(s)");
		
}



function dateAddDays( /*string dd/mm/yyyy*/ id1, /*int*/ ndays){
	  var dattmp = id1.split('/')[1]+"/"+id1.split('/')[0]+"/"+id1.split('/')[2];
	      nwdate =  new Date(dattmp);
	  nwdate.setDate(nwdate.getDate()+(ndays)||1);
	  return [ zeroPad(nwdate.getDate(),10)
	          ,zeroPad(nwdate.getMonth()+1,10)
	          ,nwdate.getFullYear() ].join('/');
	}

	//function to add zero to date/month < 10
	function zeroPad(nr,base){
	  var len = (String(base).length - String(nr).length)+1;
	  return len > 0? new Array(len).join('0')+nr : nr;
	}
	


	
	

	
	
	