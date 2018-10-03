package com.justa.miniprograms.vo;

import java.io.Serializable;

/**
 * 
 * @ClassName: WechatOfficialAccountsVO 
 * @Description: 微信公众号信息表对外
 * @author soar
 * @date 2018年3月4日 下午11:20:03 
 *
 */
public class WechatOfficialAccountsVO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//主键id
	private Integer id;
	//名称
	private String name;
	//微信公众号
	private String wechatid;
	//类型（1-服务号；2-订阅号；3-企业号）
	private Integer type;
	//介绍
	private String intro;
	//认证情况
	private String certification;
	//所在地址
	private String address;
	//账号主题体
	private String accountbody;
	
	//热度排名
	private Integer heatrankings;
	
	//是否推荐（0-否；1-是）
	private Integer isRecommend;
	
	//是否选中
	private String remarks;
	
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	/**
	 * 获取：热度排名
	 */
	public Integer getHeatrankings() {
		return heatrankings;
	}
	/**
	 * 设置：热度排名
	 */
	public void setHeatrankings(Integer heatrankings) {
		this.heatrankings = heatrankings;
	}
	/**
	 * 取得：是否推荐
	 */
	public Integer getIsRecommend() {
		return isRecommend;
	}
	/**
	 * 设置：是否推荐
	 */
	public void setIsRecommend(Integer isRecommend) {
		this.isRecommend = isRecommend;
	}
	/**
	 * 设置：主键id
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取：主键id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * 设置：名称
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：名称
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：微信公众号
	 */
	public void setWechatid(String wechatid) {
		this.wechatid = wechatid;
	}
	/**
	 * 获取：微信公众号
	 */
	public String getWechatid() {
		return wechatid;
	}
	/**
	 * 设置：类型（1-服务号；2-订阅号；3-企业号）
	 */
	public void setType(Integer type) {
		this.type = type;
	}
	/**
	 * 获取：类型（1-服务号；2-订阅号；3-企业号）
	 */
	public Integer getType() {
		return type;
	}
	/**
	 * 设置：介绍
	 */
	public void setIntro(String intro) {
		this.intro = intro;
	}
	/**
	 * 获取：介绍
	 */
	public String getIntro() {
		return intro;
	}
	/**
	 * 设置：认证情况
	 */
	public void setCertification(String certification) {
		this.certification = certification;
	}
	/**
	 * 获取：认证情况
	 */
	public String getCertification() {
		return certification;
	}
	/**
	 * 设置：所在地址
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * 获取：所在地址
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * 设置：账号主题体
	 */
	public void setAccountbody(String accountbody) {
		this.accountbody = accountbody;
	}
	/**
	 * 获取：账号主题体
	 */
	public String getAccountbody() {
		return accountbody;
	}
}
