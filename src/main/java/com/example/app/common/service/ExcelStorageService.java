package com.example.app.common.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;
 
@Service
public class ExcelStorageService {
 
  Logger log = LoggerFactory.getLogger(this.getClass().getName());
  private final Path excelRootLocation = Paths.get("excel-upload-dir");
 
  public void store(MultipartFile file) {
    try {
      Files.copy(file.getInputStream(), this.excelRootLocation.resolve(file.getOriginalFilename()));
    } catch (Exception e) {
      throw new RuntimeException("FAIL!");
    }
  }
 
  public Resource loadFile(String filename) {
    try {
      Path file = excelRootLocation.resolve(filename);
      Resource resource = new UrlResource(file.toUri());
      if (resource.exists() || resource.isReadable()) {
        return resource;
      } else {
        throw new RuntimeException("FAIL!");
      }
    } catch (MalformedURLException e) {
      throw new RuntimeException("FAIL!");
    }
  }
 
  public void deleteAll() {
    FileSystemUtils.deleteRecursively(excelRootLocation.toFile());
  }
 
  public void init() {
    try {
      Files.createDirectory(excelRootLocation);
    } catch (IOException e) {
      //throw new RuntimeException("Could not initialize storage!");
    	System.out.println(excelRootLocation+" Already Created");
    }
  }
}