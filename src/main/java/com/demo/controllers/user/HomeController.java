package com.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.services.CategoryService;
import com.demo.services.ProductService;
import com.demo.services.StoreService;

@Controller
@RequestMapping(value = {"","user/home","home"})
public class HomeController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private JavaMailSender javaMailSender;
	

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(ModelMap modelMap , HttpSession session  ) {
		modelMap.put("productsdaily", productService.findByCategoryIdOrderPriceDesc(3));
		modelMap.put("listProductTrending", productService.findAllByInOrder());
		modelMap.put("listProductTrending1", productService.findByCategoryIdOrderPriceDesc(2));
		modelMap.put("listProductTrending2", productService.findByCategoryIdOrderPriceDesc(3));
		modelMap.put("listProductTrending3", productService.findByCategoryIdOrderPriceDesc(4));
		modelMap.put("stores", storeService.findAll());
		session.setAttribute("categories",categoryService.findByStatus(true));
		// =======================================================================================//
		return "user/home/index";
	}

	@RequestMapping(value = "sendMail", method = RequestMethod.POST)
	public String sendMail(@RequestParam("email") String email, @RequestParam("name") String name, @RequestParam("content") String content) {
		try {
			if(content.equalsIgnoreCase("")){
				return "user/home/failed";
			}else {
			
				SimpleMailMessage msg = new SimpleMailMessage();
				String toAddress = "tesstmail29@gmail.com";
				String subject = "Contact Infomation";
				String message = "CUSTOMER INFOMATION \n" 
						+ "	Name: "+ name + "\n"
						+ "	Email: "+ email + "\n"
						+ "	Content: "+ content + "\n";
				msg.setTo(toAddress);
				msg.setSubject(subject);
				msg.setText(message);
				javaMailSender.send(msg);
				return "user/home/success";
			}
		} catch (Exception e) {
			return "user/home/failed";
		}
	}
	
	
	
}
