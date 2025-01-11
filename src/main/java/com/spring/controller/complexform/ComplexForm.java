package com.spring.controller.complexform;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.spring.entity.Entity;

@Controller
public class ComplexForm {

	@RequestMapping("/form")
	public String complexform() {
		return "complex_Form";
	}
	@RequestMapping("/submit")
	public String submit(@ModelAttribute("entity")Entity entity,BindingResult result,@RequestParam("File") CommonsMultipartFile file,HttpServletRequest s,Model m) {
		System.out.println(file.getName());
		System.out.println(file.getSize());
		System.out.println(file.getStorageDescription());
		System.out.println(file.getOriginalFilename());
		byte[] data=file.getBytes();
		String path=s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"files"+File.separator+file.getOriginalFilename();
		System.out.println(path);
		try {
			FileOutputStream fos=new FileOutputStream(path);
			fos.write(data);
			fos.close();
			m.addAttribute("msg","Uploaded successfully");
			m.addAttribute("filename", file.getOriginalFilename());
		}catch(IOException e) {
			e.getStackTrace();
			System.out.println("uploading error");
			m.addAttribute("msg","Uploading Error");
		}
		if(result.hasErrors()) {
			return "complex_Form";
		}
		return "success";
	}
}
