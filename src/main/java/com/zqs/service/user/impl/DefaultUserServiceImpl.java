package com.zqs.service.user.impl;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqs.dao.user.IUserInfoMapper;
import com.zqs.model.base.ReturnObject;
import com.zqs.model.base.e.ReturnCode;
import com.zqs.model.user.UserInfo;
import com.zqs.model.user.e.EUserStatus;
import com.zqs.service.user.IUserService;
import com.zqs.utils.exception.BusinessLayerException;
import com.zqs.utils.json.DateFormatUtils;
import com.zqs.utils.json.JacksonUtils;
import com.zqs.utils.string.StringUtils;
@Service("userService")
public class DefaultUserServiceImpl implements IUserService {
	
	Logger logger = LoggerFactory.getLogger(DefaultUserServiceImpl.class);
	
	@Autowired
	private IUserInfoMapper userInfoMapper;
	
	
	@Override
	public String signin(UserInfo user) {
		//初始化返回参数
		ReturnObject returnObject = new ReturnObject();
		String returnCode = ReturnCode.SUCCESS_CODE;
		String returnMsg = ReturnCode.SUCCESS_MSG;
		
		Date date = new Date();  //当前时间
		int index = 0;  //控制错误
		
		//1、验证参数
		if(user != null && !StringUtils.isEmpty(user.getMobile())
				&& !StringUtils.isEmpty(user.getPassword())){
			try{
				//2、验证帐号是否存在
				UserInfo ui = userInfoMapper.load(user.getMobile());
				if(ui != null && ui.getId() > 0){
					//3、验证帐号状态
					if(ui.getStatus() != EUserStatus.PERMANENT_FREEZE){
						//当帐号被暂时冻结，按照冻结到期时间来解封
						if(ui.getStatus() == EUserStatus.FROZEN){
							//已过冻结时间，将帐号解封
							if(ui.getFrozenTime().before(date)){
								UserInfo uIn = new UserInfo();
								uIn.setId(ui.getId());
								uIn.setErrorNum(5);
								uIn.setStatus(EUserStatus.NORMAL);
								userInfoMapper.updateStatus(uIn);
							}else{
								//冻结时间未到
								returnCode = ReturnCode.ACCOUNT_FREEZE_CODE;
								returnMsg = ReturnCode.ACCOUNT_FREEZE_MSG
										+ "，请于" + DateFormatUtils.format(ui.getFrozenTime(),
												DateFormatUtils.ymd_hms) + "之后再登录";
								index = 1;
								throw new BusinessLayerException("冻结时间未到，return");
							}
						}
						//重新获取帐号信息
						ui = userInfoMapper.load(user.getMobile());
						//4、验证密码是否正确
						if(ui.getPassword().equals(DigestUtils.md5Hex(user.getPassword()))){
							//密码正确，进行登录
							UsernamePasswordToken token = new UsernamePasswordToken(ui.getMobile(),ui.getPassword(),true,null);
							Subject subject = SecurityUtils.getSubject();
							subject.login(token);
							
							//更新登陆时间
							UserInfo uIn = new UserInfo();
							uIn.setId(ui.getId());
							uIn.setErrorNum(5);
							uIn.setStatus(EUserStatus.NORMAL);
							uIn.setLastLoginTime(date);
							userInfoMapper.updateStatus(uIn);
							
						}else{//密码错误
							//验证上次输错，是否超过24小时
							if(ui.getLastErrorTime() != null 
									&& DateFormatUtils.add(ui.getLastErrorTime(), 4, 24).before(date)){
								//更新错误次数
								UserInfo uIn = new UserInfo();
								uIn.setId(ui.getId());
								uIn.setErrorNum(5);
								uIn.setStatus(EUserStatus.NORMAL);
								userInfoMapper.updateStatus(uIn);
								
							}
							//重新获取帐号信息
							ui = userInfoMapper.load(user.getMobile());
							if(ui.getErrorNum() == 1){
								//冻结帐号
								Date frozenTime = DateFormatUtils.add(date, 4, 3);
								UserInfo uIn = new UserInfo();
								uIn.setId(ui.getId());
								uIn.setErrorNum(0);
								uIn.setFrozenTime(frozenTime);
								uIn.setStatus(EUserStatus.FROZEN);
								userInfoMapper.updateStatus(uIn);
								
								returnCode = ReturnCode.ACCOUNT_FREEZE_CODE;
								returnMsg = ReturnCode.ACCOUNT_FREEZE_MSG
										+ "，请于" + DateFormatUtils.format(frozenTime,
												DateFormatUtils.ymd_hms) + "之后再登录";
							}else{
								UserInfo uIn = new UserInfo();
								uIn.setId(ui.getId());
								uIn.setErrorNum(ui.getErrorNum() - 1);
								uIn.setLastErrorTime(date);
								uIn.setStatus(EUserStatus.NORMAL);
								userInfoMapper.updateStatus(uIn);
								
								returnCode = ReturnCode.PWD_ERROR_CODE;
								returnMsg = ReturnCode.PWD_ERROR_MSG
										+ "，再输入错误" + (ui.getErrorNum() - 1)
										+ "次，帐号将被冻结";
							}
						}
					}else{
						returnCode = ReturnCode.PERMANENT_FREEZE_CODE;
						returnMsg = ReturnCode.PERMANENT_FREEZE_MSG;
					}
				}else{
					returnCode = ReturnCode.NOT_REGISTER_CODE;
					returnMsg = ReturnCode.NOT_REGISTER_MSG;
				}
			}catch(Exception e){
				if(index == 0){
					returnCode = ReturnCode.PROGRAM_ERROR_CODE;
					returnMsg = ReturnCode.PROGRAM_ERROR_MSG;
				}
				e.printStackTrace();
			}

		}else{
			returnCode = ReturnCode.PARAMS_NULL_CODE;
			returnMsg = ReturnCode.PARAMS_NULL_MSG;
		}
		
		returnObject.setReturnCode(returnCode);
		returnObject.setReturnMsg(returnMsg);
		return JacksonUtils.object2json(returnObject);
	}

}
