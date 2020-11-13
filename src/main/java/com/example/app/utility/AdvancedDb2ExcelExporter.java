package com.example.app.utility;

import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.*;

import javassist.expr.Instanceof;
 

public class AdvancedDb2ExcelExporter {
	
	private static int firstRowHeadingPos=0;
	private static int secondRowHeadingPos=1;
	private static int resultHeadingPos=2;
	private static int rerordId=0;
	private static int getLineCount=0;
	List<Float> subjectSGPIList=new ArrayList<Float>();

 
    public static void main(String[] args) {
        AdvancedDb2ExcelExporter exporter = new AdvancedDb2ExcelExporter();
        exporter.setRerordId(1);
       String fileName=exporter.export("result_analysis");
        //exporter.export("Product");
      
       System.out.println("File name="+fileName);
    }

	private float passingAbove60;
	private float noOfDistinctionStudent;
	private float noOfIClassStudent;
	private float noOfIIClassStudent;
	private float noOfPassClassStudent;
	private float noOfFailedStudent;
	private float noOfStudentAppeared;
	private float noOfStudentPassed;
	private float noOfPercentageOfPassing;
 
    private String getFileName(String baseName) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
        String dateTimeInfo = dateFormat.format(new Date());
        return getRerordId()+"_"+baseName.concat(String.format("_%s.xlsx", dateTimeInfo));
    }
 
    public String export(String table) {
        String jdbcURL = "jdbc:mysql://localhost:3306/academic_performance";
        String username = "root";
        String password = "root";
 
        String excelFilePath = getFileName(table.concat("_Export"));
 
        try (Connection connection = DriverManager.getConnection(jdbcURL, username, password)) {
            
 
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet sheet = workbook.createSheet(table);
            
            getColumnValueByTableName(connection, workbook, sheet,firstRowHeadingPos);
            writeHeaderLine(connection, sheet,table);
            
            int lastRowCount=writeDataLines(connection, workbook, sheet,table);
            lastRowCount++;
            getColumnValueByTableName(connection, workbook, sheet,lastRowCount);
            lastRowCount++;
            lastRowCount=writeFooter1Line(sheet,lastRowCount, workbook);
            lastRowCount=writeFooter2Line(sheet,lastRowCount, workbook);
            getSGPIData(connection,table);
            FileOutputStream outputStream = new FileOutputStream(new File("excel-upload-dir",excelFilePath));
            workbook.write(outputStream);
            workbook.close();
 
            
 
        } catch (SQLException e) {
            System.out.println("Datababse error:");
            e.printStackTrace();
        } catch (IOException e) {
            System.out.println("File IO error:");
            e.printStackTrace();
        }
        catch (Exception e) {
            System.out.println("File IO error:");
            e.printStackTrace();
        }
        
        return excelFilePath;
    }
 
   

	private void writeHeaderLine(Connection connection, XSSFSheet sheet,String table) throws SQLException {
        // write header line containing column names
		String sql = "SELECT id,seat_no,student_name,subject11,subject12,subject13,subject21,subject22,subject23,subject31,subject32,subject33,subject41,subject42,subject43,subject51,subject52,subject53,subject61,subject62,subject63,subject71,subject72,subject73,subject81,subject82,subject83,subject91,subject92,subject93,subject101,subject102,subject103,sgpi,cgpi FROM ".concat(table)+" where parent_record_id="+getRerordId();
		 
        Statement statement = connection.createStatement();

        ResultSet result = statement.executeQuery(sql);
        ResultSetMetaData metaData = result.getMetaData();
        int numberOfColumns = metaData.getColumnCount();
 
        Row headerRow = sheet.createRow(secondRowHeadingPos);
 
        // exclude the first column which is the ID field
        for (int i = 2; i <= numberOfColumns; i++) {
            String columnName = metaData.getColumnName(i);
            Cell headerCell = headerRow.createCell(i - 2);
            headerCell.setCellValue(columnName);
        }
    }
    
    private int writeFooter2Line( XSSFSheet sheet,int lastRowCount, XSSFWorkbook workbook) throws SQLException {
    	FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();

    	//Start of Total No Of Distinction Student
        //////////////////////////////////////////
    	//Start of CGPI & SGPI Total
        //////////////////////////////////////////
    	int rowNum=lastRowCount;
    	Row row = sheet.createRow(rowNum);
        Cell  cell = row.createCell(0);  
        cell.setCellValue("");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("CGPI");
        cell = row.createCell(4);  
        cell.setCellValue("SGPI");                   
        
      //End of Total No Of Distinction Student
        rowNum++;
   	 	 row = sheet.createRow(rowNum);
         cell = row.createCell(0);  
        cell.setCellValue("Total No Of Distinction Student");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\">=8\")"); 
        
        
        rowNum++;
      //End of Total No Of Distinction Student
        
      //Start of Total No Of I Class Student
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of I Class Student");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\">=7.0\",AG3:AG"+(lastRowCount)+",\"<=7.99\")"); 
        
        
        rowNum++;
      //End of Total No Of I Class Student
        
      //Start of Total No Of  II Class Student
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of  II Class Student");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\">=6.0\",AG3:AG"+(lastRowCount)+",\"<7.0\")"); 
        
        
        rowNum++;
      //End of Total No Of  II Class Student
        
      //Start of Total No Of Pass Class Student
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of Pass Class Student");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\">=4.0\",AG3:AG"+(lastRowCount)+",\"<6.0\")");  
        
        
        rowNum++;
      //End of Total No Of Pass Class Student
        
     
        
      //Start of Total No of Failed Student
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of Failed Student");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\"F\")");  
        
        
        rowNum++;
      //End of Total No Of Failed Student
        
        
        //Start of Total No of Student Appeared
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of Student Appeared");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellValue(""+(lastRowCount));               
        
        
        rowNum++;
        
      //End of Total No Of Student Appeared
        
        
      //Start of Total No Of Student passed
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Total No Of Student passed");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("COUNTIFS(AG3:AG"+(lastRowCount)+",\">=4.0\",AG3:AG"+(lastRowCount)+",\"<=10.0\")");
        
        
        rowNum++;
      //End of Total No Of Student passed
        
      //Start of Percentage of Passing
        //////////////////////////////////////////
        row = sheet.createRow(rowNum);
          cell = row.createCell(0);  
        cell.setCellValue("Percentage of Passing");
        cell = row.createCell(1);  
        cell.setCellValue("");
        cell = row.createCell(2);
        
        cell.setCellValue("");
        cell = row.createCell(3);  
        cell.setCellValue("0");
        cell = row.createCell(4);  
        cell.setCellFormula("(E"+(rowNum)+"/E"+(rowNum-1)+")*100");  
                
        rowNum++;
        return rowNum;
    	
    }
    
    private int writeFooter1Line(XSSFSheet sheet,int lastRowCount, XSSFWorkbook workbook) throws SQLException {
    	int rowNum=lastRowCount;
    	
       //Start of Absent
         //////////////////////////////////////////
         Row row = sheet.createRow(rowNum);
         Cell cell = row.createCell(0); 
         int cellNo=1;
         cell.setCellValue("ABSENT");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(O3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(R3:I"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(U3:L"+(lastRowCount)+",\"AB\")");
         
         
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(X3:C"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AA3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AD3:I"+(lastRowCount)+",\"AB\")");
         rowNum++;
       //End of Absent
         
       //Start of Appeared
         //////////////////////////////////////////
          row = sheet.createRow(rowNum);
          cell = row.createCell(0); 
          cellNo=1;
         cell.setCellValue("Appeared");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\"AB\")");
         
         
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(O3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(R3:I"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(U3:L"+(lastRowCount)+",\"AB\")");
         
         
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(X3:C"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(AA3:F"+(lastRowCount)+",\"AB\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue(""+(lastRowCount));//cell.setCellValue(""+(lastRowCount));//cell.setCellFormula("COUNTIFS(AD3:I"+(lastRowCount)+",\"AB\")");
         rowNum++;
       //End of Appeared
         
         
       //Start of Passing Student(>=32)
         //////////////////////////////////////////
         
          row = sheet.createRow(rowNum);
         cell = row.createCell(0); 
         cellNo=1;
         cell.setCellValue("Passing Student(>=32)");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\">=32\",C3:C"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\">=32\",F3:F"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\">=32\",I3:I"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\">=32\",L3:L"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(O3:O"+(lastRowCount)+",\">=32\",O3:O"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(R3:R"+(lastRowCount)+",\">=32\",R3:R"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(U3:U"+(lastRowCount)+",\">=32\",U3:U"+(lastRowCount)+",\"<=80\")"); 
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(X3:X"+(lastRowCount)+",\">=32\",X3:X"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AA3:AA"+(lastRowCount)+",\">=32\",AA3:AA"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AD3:AD"+(lastRowCount)+",\">=32\",AD3:AD"+(lastRowCount)+",\"<=80\")");
         rowNum++;
       //End of Passing Student(>=32)
         

         //Start of Fail
           //////////////////////////////////////////
           
            row = sheet.createRow(rowNum);
           cell = row.createCell(0); 
           cellNo=1;
           cell.setCellValue("Fail");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\">=0\",C3:C"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\">=0\",F3:F"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\">=0\",I3:I"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\">=0\",L3:L"+(lastRowCount)+",\"<=32\")");
           
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(O3:O"+(lastRowCount)+",\">=0\",O3:O"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(R3:R"+(lastRowCount)+",\">=0\",R3:R"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(U3:U"+(lastRowCount)+",\">=0\",U3:U"+(lastRowCount)+",\"<=32\")"); 
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(X3:X"+(lastRowCount)+",\">=0\",X3:X"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(AA3:AA"+(lastRowCount)+",\">=0\",AA3:AA"+(lastRowCount)+",\"<=32\")");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellValue("");
           cell = row.createCell(cellNo);
           cellNo++;
           cell.setCellFormula("COUNTIFS(AD3:AD"+(lastRowCount)+",\">=0\",AD3:AD"+(lastRowCount)+",\"<=32\")");
           rowNum++;
         //End of Fail
         
         //Start of Passing %
         //////////////////////////////////////////
         row = sheet.createRow(rowNum);
           cell = row.createCell(0);  
         cell.setCellValue("Passing %");
         cell = row.createCell(1);  
         cell.setCellValue("");
         cell = row.createCell(2);
         
         cell.setCellFormula("(C"+(rowNum-1)+"/C"+(rowNum-2)+"*100)");
         cell = row.createCell(3);  
         cell.setCellValue("");
         cell = row.createCell(4);  
         cell.setCellValue("");
         cell = row.createCell(5);  
         cell.setCellFormula("(F"+(rowNum-1)+"/F"+(rowNum-2)+"*100)");
         cell = row.createCell(6);  
         cell.setCellValue("");
         cell = row.createCell(7);  
         cell.setCellValue("");
         cell = row.createCell(8);  
         cell.setCellFormula("(I"+(rowNum-1)+"/I"+(rowNum-2)+"*100)");
         cell = row.createCell(9);  
         cell.setCellValue("");
         cell = row.createCell(10);  
         cell.setCellValue("");
         cell = row.createCell(11);  
         cell.setCellFormula("(L"+(rowNum-1)+"/L"+(rowNum-2)+"*100)");
         cell = row.createCell(12);  
         cell.setCellValue("");
         cell = row.createCell(13);  
         cell.setCellValue("");
         cell = row.createCell(14);  
         cell.setCellFormula("(O"+(rowNum-1)+"/O"+(rowNum-2)+"*100)");
         cell = row.createCell(15);  
         cell.setCellValue("");
         cell = row.createCell(16);  
         cell.setCellValue("");
         cell = row.createCell(17);  
         cell.setCellFormula("(R"+(rowNum-1)+"/R"+(rowNum-2)+"*100)");
         cell = row.createCell(18);  
         cell.setCellValue("");
         cell = row.createCell(19);  
         cell.setCellValue("");
         cell = row.createCell(20);  
         cell.setCellFormula("(U"+(rowNum-1)+"/U"+(rowNum-2)+"*100)");
         cell = row.createCell(21);  
         cell.setCellValue("");
         cell = row.createCell(22);  
         cell.setCellValue("");
         cell = row.createCell(23);  
         cell.setCellFormula("(X"+(rowNum-1)+"/X"+(rowNum-2)+"*100)");
         cell = row.createCell(24);  
         cell.setCellValue("");
         cell = row.createCell(25);  
         cell.setCellValue("");
         cell = row.createCell(26);  
         cell.setCellFormula("(AA"+(rowNum-1)+"/AA"+(rowNum-2)+"*100)");
         cell = row.createCell(27);  
         cell.setCellValue("");
         cell = row.createCell(28);  
         cell.setCellValue("");
         cell = row.createCell(29);  
         cell.setCellFormula("(AD"+(rowNum-1)+"/AD"+(rowNum-2)+"*100)");
         rowNum++;
       //End of Passing %
         
         //Start of Passing % between 40-60(betwwen 32 & 48)
         //////////////////////////////////////////
         
          row = sheet.createRow(rowNum);
         cell = row.createCell(0); 
         cellNo=1;
         cell.setCellValue("Passing % between 40-60(betwwen 32 & 48)");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\">=32\",C3:C"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\">=32\",F3:F"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\">=32\",I3:I"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\">=32\",L3:L"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(O3:O"+(lastRowCount)+",\">=32\",O3:O"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(R3:R"+(lastRowCount)+",\">=32\",R3:R"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(U3:U"+(lastRowCount)+",\">=32\",U3:U"+(lastRowCount)+",\"<=47\")"); 
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(X3:X"+(lastRowCount)+",\">=32\",X3:X"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AA3:AA"+(lastRowCount)+",\">=32\",AA3:AA"+(lastRowCount)+",\"<=47\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AD3:AD"+(lastRowCount)+",\">=32\",AD3:AD"+(lastRowCount)+",\"<=47\")");
         rowNum++;
       //End of Passing % between 40-60(betwwen 32 & 48)
         
         
         //Start of Passing Above 60%(>=48)
         //////////////////////////////////////////
         
          row = sheet.createRow(rowNum);
         cell = row.createCell(0); 
         cellNo=1;
         cell.setCellValue("Passing Above 60%(>=48)");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(C3:C"+(lastRowCount)+",\">=48\",C3:C"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(F3:F"+(lastRowCount)+",\">=48\",F3:F"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(I3:I"+(lastRowCount)+",\">=48\",I3:I"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(L3:L"+(lastRowCount)+",\">=48\",L3:L"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(O3:O"+(lastRowCount)+",\">=48\",O3:O"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(R3:R"+(lastRowCount)+",\">=48\",R3:R"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(U3:U"+(lastRowCount)+",\">=48\",U3:U"+(lastRowCount)+",\"<=80\")"); 
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(X3:X"+(lastRowCount)+",\">=48\",X3:X"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AA3:AA"+(lastRowCount)+",\">=48\",AA3:AA"+(lastRowCount)+",\"<=80\")");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellValue("");
         cell = row.createCell(cellNo);
         cellNo++;
         cell.setCellFormula("COUNTIFS(AD3:AD"+(lastRowCount)+",\">=48\",AD3:AD"+(lastRowCount)+",\"<=80\")");
         rowNum++;
       //End of Passing Above 60%(>=48)
         
         
         
         
         
         
         return rowNum;
    }
 
    private int writeDataLines(Connection connection,XSSFWorkbook workbook, XSSFSheet sheet,String table)
            throws SQLException {
    	// write header line containing column names
    			String sql = "SELECT id,seat_no,student_name,subject11,subject12,subject13,subject21,subject22,subject23,subject31,subject32,subject33,subject41,subject42,subject43,subject51,subject52,subject53,subject61,subject62,subject63,subject71,subject72,subject73,subject81,subject82,subject83,subject91,subject92,subject93,subject101,subject102,subject103,sgpi,cgpi FROM ".concat(table) +" where parent_record_id="+getRerordId();
    			 
    	        Statement statement = connection.createStatement();

    	        ResultSet result = statement.executeQuery(sql);
        ResultSetMetaData metaData = result.getMetaData();
        int numberOfColumns = metaData.getColumnCount();
 
        int rowCount = 2;
 
        while (result.next()) {
            Row row = sheet.createRow(rowCount++);
 
            for (int i = 2; i <= numberOfColumns; i++) {
                Object valueObject = result.getObject(i);
 
                Cell cell = row.createCell(i - 2);
 
                if (valueObject instanceof Boolean)
                    cell.setCellValue((Boolean) valueObject);
                else if (valueObject instanceof Double)
                    cell.setCellValue((double) valueObject);
                else if (valueObject instanceof Float)
                    cell.setCellValue((float) valueObject);
                else if (valueObject instanceof Date) {
                    cell.setCellValue((Date) valueObject);
                    formatDateCell(workbook, cell);
                }
                else if (valueObject instanceof Integer) {
                	cell.setCellValue((Integer) valueObject);
                }else 
                	if (valueObject instanceof String){
                		try{
                		cell.setCellValue(Double.parseDouble(valueObject.toString()));
                		}
                		catch(Exception e)
                		{
                			cell.setCellValue((String)valueObject);	
                		}
                	}
 
            }
 
        }
        return rowCount;
    }
    
    
    private int getSGPIData(Connection connection,String table)
            throws SQLException {
    	// write header line containing column names
    			String sql = "SELECT sgpi,cgpi FROM ".concat(table) +" where parent_record_id="+getRerordId();
    			 
    	        Statement statement = connection.createStatement();

    	        ResultSet result = statement.executeQuery(sql);
       
 
        int rowCount = 2;
 
        while (result.next()) {
        	float sgpi=result.getFloat("sgpi");
        	subjectSGPIList.add(sgpi);
        	rowCount++;
        	
        }
        
        for(Float temp:subjectSGPIList){
        	
        	if(temp>8)
        	{
        		this.noOfDistinctionStudent++;
        	}
        	if(temp>=7 && temp<=7.99)
        	{
        		this.noOfIClassStudent++;
        	}
        	if(temp>=6 && temp<=6.99)
        	{
        		this.noOfIIClassStudent++;
        	}
        	if(temp>=4 && temp<6)
        	{
        		this.noOfPassClassStudent++;
        	}
        	if(temp<4)
        	{
        		this.noOfFailedStudent++;
        	}
        	if(temp>=4 && temp<=10)
        	{
        		this.noOfStudentPassed++;
        	}
        }
        
        this.noOfPercentageOfPassing=(this.noOfStudentPassed/(rowCount-2))*100;
        
        
        
        return rowCount;
    }
    
    
    private String getColumnValueByTableName(Connection connection,XSSFWorkbook workbook,XSSFSheet sheet,int pos)
            throws SQLException {
    	try{
    	
             String sql = "SELECT subject1_name,subject2_name,subject3_name,subject4_name,subject5_name,subject6_name,"
             		+ "subject7_name,subject8_name,subject9_name,subject10_name FROM result_analysis_file where id="+getRerordId();
  
             Statement statement = connection.createStatement();
  
             ResultSet result = statement.executeQuery(sql);
             Row row = sheet.createRow(pos);
             if(result.next()){
            	 //return result.getString(columnName);
            	CellStyle style = workbook.createCellStyle(); 
            	style = workbook.createCellStyle(); 
            	int startCell=2;
				//////////////1////////////////
				Cell cell = row.createCell(startCell);  
				String subjectName=result.getString(1);
				cell.setCellValue(subjectName);                
				sheet.addMergedRegion(CellRangeAddress.valueOf("C"+(pos+1)+":E"+(pos+1)+""));
				style.setFillForegroundColor(IndexedColors.BRIGHT_GREEN.getIndex());  
				style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				cell.setCellStyle(style);
				
				//////////////2////////////////
				startCell=startCell+3;
				  cell = row.createCell(startCell);  
				  subjectName=result.getString(2);
				  cell.setCellValue(subjectName);                
				  sheet.addMergedRegion(CellRangeAddress.valueOf("F"+(pos+1)+":H"+(pos+1)+""));  
				  style = workbook.createCellStyle(); 
				  style.setFillForegroundColor(IndexedColors.DARK_YELLOW.getIndex());  
				  style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				  cell.setCellStyle(style);
				  
				  
				//////////////1////////////////
				  startCell=startCell+3;
				  cell = row.createCell(startCell);  
				subjectName=result.getString(3);
				cell.setCellValue(subjectName);                
				sheet.addMergedRegion(CellRangeAddress.valueOf("I"+(pos+1)+":K"+(pos+1)+""));
				style = workbook.createCellStyle(); 
				style.setFillForegroundColor(IndexedColors.BRIGHT_GREEN.getIndex());  
				style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				cell.setCellStyle(style);
				
				//////////////2////////////////
				startCell=startCell+3;
				  cell = row.createCell(startCell);   
				  subjectName=result.getString(4);
				  cell.setCellValue(subjectName);                
				  sheet.addMergedRegion(CellRangeAddress.valueOf("L"+(pos+1)+":N"+(pos+1)+""));
				  style = workbook.createCellStyle(); 
				  style.setFillForegroundColor(IndexedColors.DARK_YELLOW.getIndex());  
				  style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				  cell.setCellStyle(style);
				  
				//////////////1////////////////
				  startCell=startCell+3;
				  cell = row.createCell(startCell);   
				subjectName=result.getString(5);
				cell.setCellValue(subjectName);                
				sheet.addMergedRegion(CellRangeAddress.valueOf("O"+(pos+1)+":Q"+(pos+1)+""));
				style = workbook.createCellStyle(); 
				style.setFillForegroundColor(IndexedColors.BRIGHT_GREEN.getIndex());  
				style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				cell.setCellStyle(style);
				
				//////////////2////////////////
				startCell=startCell+3;
				  cell = row.createCell(startCell);    
				  subjectName=result.getString(6);
				  cell.setCellValue(subjectName);                
				  sheet.addMergedRegion(CellRangeAddress.valueOf("R"+(pos+1)+":T"+(pos+1)+""));
				  style = workbook.createCellStyle(); 
				  style.setFillForegroundColor(IndexedColors.DARK_YELLOW.getIndex());  
				  style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				  cell.setCellStyle(style);
				  
				//////////////1////////////////
				  startCell=startCell+3;
				  cell = row.createCell(startCell);   
				subjectName=result.getString(7);
				cell.setCellValue(subjectName);                
				 sheet.addMergedRegion(CellRangeAddress.valueOf("U"+(pos+1)+":W"+(pos+1)+""));
				 style = workbook.createCellStyle(); 
				style.setFillForegroundColor(IndexedColors.BRIGHT_GREEN.getIndex());  
				style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				cell.setCellStyle(style);
				
				//////////////2////////////////
				startCell=startCell+3;
				  cell = row.createCell(startCell);    
				  subjectName=result.getString(8);
				  cell.setCellValue(subjectName);                
				  sheet.addMergedRegion(CellRangeAddress.valueOf("X"+(pos+1)+":Z"+(pos+1)+""));
				  style = workbook.createCellStyle(); 
				  style.setFillForegroundColor(IndexedColors.DARK_YELLOW.getIndex());  
				  style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				  cell.setCellStyle(style);
				  
				//////////////1////////////////
				  startCell=startCell+3;
				  cell = row.createCell(startCell);    
				subjectName=result.getString(9);
				cell.setCellValue(subjectName);                
				 sheet.addMergedRegion(CellRangeAddress.valueOf("AA"+(pos+1)+":AC"+(pos+1)+""));
				 style = workbook.createCellStyle(); 
				style.setFillForegroundColor(IndexedColors.BRIGHT_GREEN.getIndex());  
				style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				cell.setCellStyle(style);
				
				//////////////2////////////////
				startCell=startCell+3;
				  cell = row.createCell(startCell);   
				  subjectName=result.getString(10);
				  cell.setCellValue(subjectName);                
				  sheet.addMergedRegion(CellRangeAddress.valueOf("AD"+(pos+1)+":AF"+(pos+1)+""));
				  style = workbook.createCellStyle(); 
				  style.setFillForegroundColor(IndexedColors.DARK_YELLOW.getIndex());  
				  style.setFillPattern(FillPatternType.SOLID_FOREGROUND);  
				  cell.setCellStyle(style);
                  
                  
           
                
                
                
                
                
                
                
                
             }
    	   }
        catch(Exception e)
        {
       	 e.printStackTrace();
        }
          
             
             
             return "";
    	
    }
 
    private void formatDateCell(XSSFWorkbook workbook, Cell cell) {
        CellStyle cellStyle = workbook.createCellStyle();
        CreationHelper creationHelper = workbook.getCreationHelper();
        cellStyle.setDataFormat(creationHelper.createDataFormat().getFormat("yyyy-MM-dd HH:mm:ss"));
        cell.setCellStyle(cellStyle);
    }

	public static int getRerordId() {
		return rerordId;
	}

	public static void setRerordId(int rerordId) {
		AdvancedDb2ExcelExporter.rerordId = rerordId;
	}

	public static int getFirstRowHeadingPos() {
		return firstRowHeadingPos;
	}

	public static void setFirstRowHeadingPos(int firstRowHeadingPos) {
		AdvancedDb2ExcelExporter.firstRowHeadingPos = firstRowHeadingPos;
	}

	public static int getSecondRowHeadingPos() {
		return secondRowHeadingPos;
	}

	public static void setSecondRowHeadingPos(int secondRowHeadingPos) {
		AdvancedDb2ExcelExporter.secondRowHeadingPos = secondRowHeadingPos;
	}

	public static int getResultHeadingPos() {
		return resultHeadingPos;
	}

	public static void setResultHeadingPos(int resultHeadingPos) {
		AdvancedDb2ExcelExporter.resultHeadingPos = resultHeadingPos;
	}

	public float getPassingAbove60() {
		return passingAbove60;
	}

	public void setPassingAbove60(float passingAbove60) {
		this.passingAbove60 = passingAbove60;
	}

	public float getNoOfDistinctionStudent() {
		return noOfDistinctionStudent;
	}

	public void setNoOfDistinctionStudent(float noOfDistinctionStudent) {
		this.noOfDistinctionStudent = noOfDistinctionStudent;
	}

	public float getNoOfIClassStudent() {
		return noOfIClassStudent;
	}

	public void setNoOfIClassStudent(float noOfIClassStudent) {
		this.noOfIClassStudent = noOfIClassStudent;
	}

	public float getNoOfIIClassStudent() {
		return noOfIIClassStudent;
	}

	public void setNoOfIIClassStudent(float noOfIIClassStudent) {
		this.noOfIIClassStudent = noOfIIClassStudent;
	}

	public float getNoOfPassClassStudent() {
		return noOfPassClassStudent;
	}

	public void setNoOfPassClassStudent(float noOfPassClassStudent) {
		this.noOfPassClassStudent = noOfPassClassStudent;
	}

	public float getNoOfFailedStudent() {
		return noOfFailedStudent;
	}

	public void setNoOfFailedStudent(float noOfFailedStudent) {
		this.noOfFailedStudent = noOfFailedStudent;
	}

	public float getNoOfStudentAppeared() {
		return noOfStudentAppeared;
	}

	public void setNoOfStudentAppeared(float noOfStudentAppeared) {
		this.noOfStudentAppeared = noOfStudentAppeared;
	}

	public float getNoOfStudentPassed() {
		return noOfStudentPassed;
	}

	public void setNoOfStudentPassed(float noOfStudentPassed) {
		this.noOfStudentPassed = noOfStudentPassed;
	}

	public float getNoOfPercentageOfPassing() {
		return noOfPercentageOfPassing;
	}

	public void setNoOfPercentageOfPassing(float noOfPercentageOfPassing) {
		this.noOfPercentageOfPassing = noOfPercentageOfPassing;
	}
    
   
    
}
