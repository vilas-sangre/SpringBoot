package com.example.app.utility;


public class CapitalizeFirstWord {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
String str=generateFirstLetterCapital("hi_this_is_vilas");
System.out.println(str);
	}
	
	
	public static String collect(String text) {

	    
		text=text.replace("_", " ");
		int pos = 0;
		boolean capitalize = true;
		StringBuilder sb = new StringBuilder(text);
		while (pos < sb.length()) {
		    if (sb.charAt(pos) == ' ') {
		        capitalize = true;
		    } else if (capitalize && !Character.isWhitespace(sb.charAt(pos))) {
		        sb.setCharAt(pos, Character.toUpperCase(sb.charAt(pos)));
		        capitalize = false;
		    }
		    pos++;
		}
		return sb.toString();
		}
	
	
public static String generateClassName(String text) {

	    
		text=text.replace("_", " ");
		int pos = 0;
		boolean capitalize = true;
		StringBuilder sb = new StringBuilder(text);
		while (pos < sb.length()) {
		    if (sb.charAt(pos) == ' ') {
		        capitalize = true;
		    } else if (capitalize && !Character.isWhitespace(sb.charAt(pos))) {
		        sb.setCharAt(pos, Character.toUpperCase(sb.charAt(pos)));
		        capitalize = false;
		    }
		    pos++;
		}
		String className=sb.toString().replace(" ", "");
		return className;
		}



public static String generateObjectName(String text) {

    
	text=text.replace("_", " ");
	int pos = 0;
	boolean capitalize = true;
	StringBuilder sb = new StringBuilder(text);
	int count=0;
	while (pos < sb.length()) {
	    if (sb.charAt(pos) == ' ') {
	        capitalize = true;
	        
	    } else if (capitalize && !Character.isWhitespace(sb.charAt(pos))) {
	        if(pos!=0)
	        	sb.setCharAt(pos, Character.toUpperCase(sb.charAt(pos)));
	        else
	        	sb.setCharAt(pos, Character.toLowerCase(sb.charAt(pos)));
	        capitalize = false;
	    }
	    pos++;
	}
	String className=sb.toString().replace(" ", "");
	return className;
	}

public static String generateFirstLetterCapital(String text) {

	//text=text.toLowerCase();
	//text=text.replace("_", " ");
	int pos = 0;
	boolean capitalize = true;
	StringBuilder sb = new StringBuilder(text);
	while (pos < sb.length()) {
		
		
		
		 if (pos==0) {
		        capitalize = false;
		    }
		 else if (sb.charAt(pos) == ' ') {
	        capitalize = true;
	    }
	    else if (sb.charAt(pos) == '_') {
	        capitalize = true;
	    }
	    else if (capitalize && !Character.isWhitespace(sb.charAt(pos))) {
	        sb.setCharAt(pos, Character.toUpperCase(sb.charAt(pos)));
	        capitalize = false;
	    }
	    pos++;
	}
	String className=sb.toString().replace(" ", "");
	className=className.toString().replace("_", "");
	return className;
	}



}
