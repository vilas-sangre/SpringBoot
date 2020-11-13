package com.example.app.utility;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
	
	static String convertFirstLetter(String str) 
    { 
  
		String output ="";
		if(str!= null && str.length()>0)
				output=str.substring(0, 1).toUpperCase() + str.substring(1);
		
			
		return output;

    }
	
	
	public static String removeSpecialCharacter(String str)
	{
		Pattern pt = Pattern.compile("[^a-zA-Z0-9_\\s]");
        Matcher match= pt.matcher(str);
        while(match.find())
        {
            String s= match.group();
            str=str.replaceAll("\\"+s, "");
        }
        
        return str;
	}
	
	
	public static void main(String[] args) {
				// TODO Auto-generated method stub
		String str=removeSpecialCharacter("hi_th(is@_is_vil as");
		System.out.println(str);
	}

}
