package com.zqs.model.user;

import java.util.Date;

import com.zqs.model.base.REntity;
/**
 * 用户
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 上午10:20:19
 */
public class UserInfo extends REntity{

	private static final long serialVersionUID = 3215378138511271969L;
	
	/** 手机号 */
	private String mobile;
	
	/** 密码 */
	private String password;
	
	/** 邮箱 */
	private String email;
	
	/** 注册时间 */
	private Date regTime;
	
	/** 密码输入错误次数 */
	private int errorNum;
	
	/** 冻结终结时间 */
	private Date frozenTime;
	
	/** 上次密码输入错误时间 */
	private Date lastErrorTime;
	
	/** 上次登录时间 */
	private Date lastLoginTime;
	
	/** 微信公众号唯一标识 */
	private String openId;
	
	/** 状态  {@link EUserStatus.java}*/
	private int status;

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegTime() {
		return regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

	public int getErrorNum() {
		return errorNum;
	}

	public void setErrorNum(int errorNum) {
		this.errorNum = errorNum;
	}

	public Date getFrozenTime() {
		return frozenTime;
	}

	public void setFrozenTime(Date frozenTime) {
		this.frozenTime = frozenTime;
	}

	public Date getLastErrorTime() {
		return lastErrorTime;
	}

	public void setLastErrorTime(Date lastErrorTime) {
		this.lastErrorTime = lastErrorTime;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getOpenId() {
		return openId;
	}

	public void setOpenId(String openId) {
		this.openId = openId;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
