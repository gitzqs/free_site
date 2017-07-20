package com.zqs.web.user;

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
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "user/login";
	}
	
	/**
	 * 登录认证
	 * 
	 * @param 
	 * @return String
	 */
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	@ResponseBody
	public String signin(@RequestBody String parameters){
		UserInfo user = (UserInfo)JacksonUtils.json2object(parameters, UserInfo.class);
		return userService.signin(user);
	}
}
