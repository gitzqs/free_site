package com.zqs.model.user;

import java.util.Date;

import com.zqs.model.base.REntity;
/**
 * 用户产品信息
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 上午10:29:00
 */
public class UserProduct extends REntity{

	private static final long serialVersionUID = -39550098350635810L;
	
	/** 用户 */
	private int userId;
	
	/** 产品 */
	private int productId;
	
	/** 使用开始时间 */
	private Date beginTime;
	
	/** 使用结束时间 */
	private Date endTime;
	
	/** 过期删除时间 */
	private Date toDelTime;
	
	/** 图片名称（手机二维码等） */
	private String img;
	
	/** 网站地址 */
	private String url;
	
	/** 状态  {@link EUserProductStatus.java}*/
	private int status;

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

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getToDelTime() {
		return toDelTime;
	}

	public void setToDelTime(Date toDelTime) {
		this.toDelTime = toDelTime;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}	
