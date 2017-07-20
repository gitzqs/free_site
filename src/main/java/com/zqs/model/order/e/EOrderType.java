package com.zqs.model.order.e;
/**
 * 订单类别
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 下午12:56:28
 */
public interface EOrderType {
	
	/** 正常购买 */
	int NORMAL_BUY = 1;
	
	/** 续期 */
	int RENEWAL = 2;
	
	/** 免费体验 */
	int FREE_EXPERIENCE = 3;
}
