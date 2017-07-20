package com.zqs.model.order;

import java.util.Date;

import com.zqs.model.base.REntity;
/**
 * 产品订单信息
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 上午10:22:41
 */
public class Order extends REntity{

	private static final long serialVersionUID = 3460780053926800463L;
	
	/** 交易号 */
	private String tradeNo;
	
	/** 外部交易号 */
	private String outTradeNo;
	
	/** 用户 */
	private int userId;
	
	/** 产品 */
	private int productId;
	
	/** 类别  {@link EOrderType.java}*/
	private int type;
	
	/** 创建时间 */
	private Date beginTime;
	
	/** 过期时间 */
	private Date expirationTime;
	
	/** 期数 */
	private int periods;
	
	/** 原价 */
	private double originalAmount;
	
	/** 优惠价 */
	private double preferentialAmount;
	
	/** 支付金额 */
	private double payAmount;
	
	/** 订单结束时间 */
	private Date endTime;
	
	/** 状态  {@link EStatus.java}*/
	private int status;

	public String getTradeNo() {
		return tradeNo;
	}

	public void setTradeNo(String tradeNo) {
		this.tradeNo = tradeNo;
	}

	public String getOutTradeNo() {
		return outTradeNo;
	}

	public void setOutTradeNo(String outTradeNo) {
		this.outTradeNo = outTradeNo;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getExpirationTime() {
		return expirationTime;
	}

	public void setExpirationTime(Date expirationTime) {
		this.expirationTime = expirationTime;
	}

	public int getPeriods() {
		return periods;
	}

	public void setPeriods(int periods) {
		this.periods = periods;
	}

	public double getOriginalAmount() {
		return originalAmount;
	}

	public void setOriginalAmount(double originalAmount) {
		this.originalAmount = originalAmount;
	}

	public double getPreferentialAmount() {
		return preferentialAmount;
	}

	public void setPreferentialAmount(double preferentialAmount) {
		this.preferentialAmount = preferentialAmount;
	}

	public double getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(double payAmount) {
		this.payAmount = payAmount;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
