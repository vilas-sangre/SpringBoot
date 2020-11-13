package com.example.app.utility;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class CommandPromtExecute {
	
	public static String getCommand(String command)
	{
		
		StringBuffer sb=new StringBuffer(); 
		try {
		    Process process = Runtime.getRuntime().exec(command);
		 
		    BufferedReader reader = new BufferedReader(
		            new InputStreamReader(process.getInputStream()));
		    
		    String line;
		    while ((line = reader.readLine()) != null) {
		        System.out.println(line);
		        sb.append(line+"<br>");
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    e.printStackTrace();
		}
		return sb.toString();
	}
	
	
	
	public static void main(String args[])
	{
		System.out.println(getCommand("ping www.codejava.net"));
	}

}
