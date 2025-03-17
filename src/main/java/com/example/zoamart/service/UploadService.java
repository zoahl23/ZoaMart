package com.example.zoamart.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import jakarta.servlet.ServletContext;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UploadService {

    private final ServletContext servletContext;

    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {
        // don't upload file empty
        if (file.isEmpty()) {

            return "";
        }

        String rootPath = this.servletContext.getRealPath("/content/images");
        String finalName = "";

        try {
            byte[] bytes = file.getBytes();

            File dir = new File(rootPath + File.separator + targetFolder);
            if (!dir.exists())
                dir.mkdirs();

            // Create the file on server
            finalName = System.currentTimeMillis() + "-" + file.getOriginalFilename();
            File serverFile = new File(dir.getAbsolutePath() + File.separator + finalName);

            BufferedOutputStream stream = new BufferedOutputStream(
                    new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();
        } catch (Exception e) {
            // TODO: handle exception
        }

        return finalName;
    }

    public void deleteFile(String fileName, String targetFolder) {
        String rootPath = this.servletContext.getRealPath("/content/images");
        File fileToDelete = new File(rootPath + File.separator + targetFolder + File.separator + fileName);

        if (fileToDelete.exists()) {
            try {
                Files.delete(fileToDelete.toPath());
            } catch (IOException ex) {
                System.out.println("Could not delete file: " + fileName);
                ex.printStackTrace();
            }
        }
    }
}
