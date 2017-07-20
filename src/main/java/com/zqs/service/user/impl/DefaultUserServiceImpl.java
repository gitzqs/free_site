package com.zqs.service.user.impl;

import org.springframework.stereotype.Service;

import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.user.UserInfo;
import com.zqs.service.user.IUserService;
import com.zqs.utils.string.StringUtils;
@Service("userService")
public class DefaultUserServiceImpl implements IUserService {

	@Override
	public String signin(UserInfo user) {
		//初始化返回参数
		ReturnObject returnObject = new ReturnObject();
		String returnCode = ReturnCode.SUCCESS_CODE;
		String returnMsg = ReturnCode.SUCCESS_MSG;
		
		//1、验证参数
		if(user != null && !StringUtils.isEmpty(user.getMobile())
				&& !StringUtils.isEmpty(user.getPassword())){
			
		}else{
			returnCode = ReturnCode.PARAMS_NULL_CODE;
			returnMsg = ReturnCode.PARAMS_NULL_MSG;
		}
		
		return null;
	}

}
