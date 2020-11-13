package com.example.app.common.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.pdfbox.text.PDFTextStripperByArea;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import com.example.app.common.pojos.User;
import com.example.app.common.service.ExcelStorageService;
import com.example.app.common.service.StorageService;
import com.example.app.utility.AdvancedDb2ExcelExporter;
import com.example.app.utility.Utility;
 
 
@CrossOrigin(origins = {"*"})
@RestController
@RequestMapping("/api")
public class UploadController {
 
  @Autowired
  StorageService storageService;
  @Autowired
  ExcelStorageService excelStorageService;
  
  
  List<String> files = new ArrayList<String>();
  private final Path rootLocation = Paths.get("upload-dir");
  private final Path excelRootLocation = Paths.get("excel-upload-dir");
  @PostMapping("/post")
  public ResponseEntity<String> handleFileUpload(@RequestParam("file") MultipartFile fileParameter,HttpServletRequest request) {
	  
	  String j_username=(String)request.getSession().getAttribute("j_username");
	  User user=(User)request.getSession().getAttribute("user");
    String message = "";
    try {
    	storageService.deleteAll();	
    	 storageService.init();
      storageService.store(fileParameter);
     
      files.add(fileParameter.getOriginalFilename());
 
      message = "You successfully uploaded " + fileParameter.getOriginalFilename() + "!";
     
      return ResponseEntity.status(HttpStatus.OK).body(message);
    } catch (Exception e) {
      message = "FAIL to upload " + fileParameter.getOriginalFilename() + "!";
      return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(message);
    }
  }
  
 
  @GetMapping("/getallfiles")
  public ResponseEntity<List<String>> getListFiles(Model model) {
    List<String> fileNames = files
        .stream().map(fileName -> MvcUriComponentsBuilder
            .fromMethodName(UploadController.class, "getFile", fileName).build().toString())
        .collect(Collectors.toList());
 
    return ResponseEntity.ok().body(fileNames);
  }
 
  @GetMapping("/files/{filename:.+}")
  @ResponseBody
  public ResponseEntity<Resource> getFile(@PathVariable String filename) {
    Resource file = excelStorageService.loadFile(filename);
    return ResponseEntity.ok()
        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
        .body(file);
  }
}