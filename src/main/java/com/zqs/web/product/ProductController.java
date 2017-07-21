package com.zqs.web.product;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zqs.model.user.UserInfo;

@Controller
@RequestMapping(value="product")
public class ProductController {
	
	/**
	 * 产品页
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String products(Model model){
		//根据用户是否登录返回相应数据
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()){
			UserInfo user = (UserInfo) subject.getPrincipal();
			if(user != null){
				model.addAttribute("mobile", user.getMobile());
			}
			model.addAttribute("isLogin", "1");
		}else{
			model.addAttribute("isLogin", "0");
		}
		model.addAttribute("isActive", 1);
		return "product/product";
	}
}
