package com.zqs.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zqs.model.user.UserInfo;
import com.zqs.service.user.IUserService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext.xml","classpath:spring/spring-mvc.xml",
		"classpath:spring/applicationContext-shiro.xml"})
public class TestService {
	
	@Autowired
	private IUserService userService;
	
	@Test
	public void signin() throws Exception{
		UserInfo user = new UserInfo();
		user.setMobile("15205155720");
		user.setPassword("123456");
		System.out.println(userService.signin(user));
	}
}
