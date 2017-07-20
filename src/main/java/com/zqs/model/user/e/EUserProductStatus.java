package com.zqs.model.user.e;
/**
 * 用户产品状态
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 下午1:07:22
 */
public interface EUserProductStatus {
	
	/** 正常使用中 */
	int NORMAL = 1;
	
	/** 过期待续约 */
	int BE_OVERDUE = 2;
	
	/** 已删除 */
	int ALREADY_DELETE = 3;
	
}
