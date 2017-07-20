package com.zqs.dao.user;

import com.zqs.model.user.UserInfo;

public interface IUserInfoMapper {
	
	/**
	 * 根据手机号获取用户信息
	 * 
	 * @param mobile : 手机号
	 * @return UserInfo
	 */
	UserInfo load(String mobile);
}
