package com.zqs.service.user;

import com.zqs.model.user.UserInfo;

public interface IUserService {
	
	/**
	 * 登录验证
	 * 
	 * @param 
	 * @return String
	 */
	String signin(UserInfo user);
}
