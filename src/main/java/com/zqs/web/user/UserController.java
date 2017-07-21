package com.zqs.web.user;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqs.model.user.UserInfo;
import com.zqs.service.user.IUserService;
import com.zqs.utils.json.JacksonUtils;

@Controller
@RequestMapping(value="user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	
	/**
	 * 登录页面
	 * 
	 * @return String
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "user/login";
	}
	
	/**
	 * 登录认证
	 * 
	 * @param 用户名、密码
	 * @return String
	 */
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	@ResponseBody
	public String signin(@RequestBody String parameters){
		UserInfo user = (UserInfo)JacksonUtils.json2object(parameters, UserInfo.class);
		return userService.signin(user);
	}
	
	/**
	 * 退出登录
	 * 
	 * @return String
	 */
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(){
		Subject subject = SecurityUtils.getSubject();
		if(subject.isAuthenticated()){
			subject.logout();
		}
		return "redirect:/index/";
	}
}
