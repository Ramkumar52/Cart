/*package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadFormController {
	//it is to make mapped b/w jsp and java
		@RequestMapping(value = "/upload",method=RequestMethod.POST)
		public @ResponseBody
		String uploadFileHandler(@RequestParam("name") String name,
				//it is to bring the parameter in it 
				@RequestParam("file") MultipartFile file) {
			//if statement is to check field is empty or not
			if (!file.isEmpty()) {
				
				
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					
					String rootPath = "H:/Workspace/DTBatchws/frontendproject/src/main/webapp/resources/";
					File dir = new File(rootPath + File.separator + "upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + name+".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();

		
					return "You successfully uploaded file=" + name;
				} catch (Exception e) {
					return "You failed to upload " + name + " => " + e.getMessage();
				}
			} else {
				return "You failed to upload " + name
						+ " because the file was empty.";
			}
		}

}
*/