package com.zqs.model.product;

import com.zqs.model.base.REntity;
/**
 * 产品信息
 * 
 * @author qiushi.zhou  
 * @date 2017年7月20日 上午10:20:32
 */
public class ProductInfo extends REntity{

	private static final long serialVersionUID = 8007425869535750311L;
	
	/** 名称 */
	private String name;
	
	/** 价格 */
	private double price;
	
	/** 类别 {@link EProductType.java} */
	private int type;
	
	/** 状态  {@link EProductStatus.java}*/
	private int status;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
