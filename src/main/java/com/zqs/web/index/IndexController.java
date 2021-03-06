package com.zqs.web.index;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zqs.model.user.UserInfo;

@Controller
public class IndexController {
	
	/**
	 * 首页
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="index/",method=RequestMethod.GET)
	public String index(Model model){
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
		model.addAttribute("isActive", 0);
		return "index";
	}
	
	/**
	 * 案例
	 * 
	 * @return String
	 */
	@RequestMapping(value="cases/",method=RequestMethod.GET)
	public String cases(Model model){
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
		model.addAttribute("isActive", 2);
		return "case/case";
	}
	
	/**
	 * 服务
	 * 
	 * @return String
	 */
	@RequestMapping(value="service/",method=RequestMethod.GET)
	public String service(Model model){
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
		model.addAttribute("isActive", 3);
		return "case/service";
	}
	
	/**
	 * 帮助 
	 * 
	 * @return String
	 */
	@RequestMapping(value="help/",method=RequestMethod.GET)
	public String help(Model model){
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
		model.addAttribute("isActive", 4);
		return "case/help";
	}
}
