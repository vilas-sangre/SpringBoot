package com.example.app.utility;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utility {
	
	public static Float convertToFloat(String str) {
        Pattern p = Pattern.compile("\\d+");
        Matcher m = p.matcher(str);
        boolean flag=false;
        Float returnValue=0f;
        while(m.find()) {
        	flag=true;
        	returnValue=Float.parseFloat(m.group());
            //System.out.println(m.group());
        }
        if(flag)
        	return returnValue;
        else
        return 0f;
    }
	
	public static Float convertStringToFloat(String str) {
       
		try
		{
			return Float.parseFloat(str.trim());
		}
		catch(Exception e)
		{
			return 0f;
		}
    }

}
