package com.zqs.model.user.e;
/**
 * 用户状态
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 下午1:05:16
 */
public interface EUserStatus {
	
	/** 正常 */
	int NORMAL = 1;
	
	/** 冻结 */
	int FROZEN = 2;
	
	/** 永久冻结 */
	int PERMANENT_FREEZE = 3;
}
