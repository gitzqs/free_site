package com.zqs.model.product.e;
/**
 * 产品状态
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 下午1:02:12
 */
public interface EProductStatus {
	
	/** 已上线 */
	int ALREADY_ON_LINE = 1;
	
	/** 未上线 */
	int NOT_ON_LINE = 2;
	
	/** 已下架 */
	int ALREADY_LAID = 3;
}
