package com.justa.miniprograms.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName: ContentVO 
 * @Description: 文章内容，带公众号信息
 * @author soar
 * @date 2018年3月4日 下午11:00:08 
 *
 */
public class ContentVO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long cid;
	//标题
	private String title;
	//内容
	private String content;
	//类型
	private String type;
	//
	private Integer hits;
	//评论数量
	private Integer commentsNum;
	//开启评论
	private Integer allowComment;
	//允许ping
	private Integer allowPing;
	//允许反馈
	private Integer allowFeed;
	//作者
	private String author;
	//创建时间
	private Date gtmCreate;
	//点赞数量
	private Integer likequantity;
	//公众号id
	private String wechatid;
	
	private WechatOfficialAccountsVO wechatOfficialAccountsVO;
	
	private String picture; //文章标题图片.
	/**
	 * 设定文章标题图片. <br />
	 *
	 * @param picture 文章标题图片
	 */
	public void setPicture(String picture) {

		this.picture = picture;
	}

	/**
	 * 取得文章标题图片. <br />
	 *
	 * @return 文章标题图片
	 */
	public String getPicture() {

		return picture;
	}

	/**
	 * 获取：公众号id
	 */
	public String getWechatid() {
		return wechatid;
	}
	/**
	 * 设置：公众号id
	 */
	public void setWechatid(String wechatid) {
		this.wechatid = wechatid;
	}
	/**
	 * 设置：
	 */
	public void setCid(Long cid) {
		this.cid = cid;
	}
	/**
	 * 获取：
	 */
	public Long getCid() {
		return cid;
	}
	/**
	 * 获取：点赞数量
	 */
	public Integer getLikequantity() {
		return likequantity;
	}
	/**
	 * 设置：点赞数量
	 */
	public void setLikequantity(Integer likequantity) {
		this.likequantity = likequantity;
	}
	/**
	 * 设置：标题
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * 获取：标题
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * 设置：内容
	 */
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * 获取：内容
	 */
	public String getContent() {
		return content;
	}
	/**
	 * 设置：类型
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * 获取：类型
	 */
	public String getType() {
		return type;
	}

	/**
	 * 设置：
	 */
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	/**
	 * 获取：
	 */
	public Integer getHits() {
		return hits;
	}
	/**
	 * 设置：评论数量
	 */
	public void setCommentsNum(Integer commentsNum) {
		this.commentsNum = commentsNum;
	}
	/**
	 * 获取：评论数量
	 */
	public Integer getCommentsNum() {
		return commentsNum;
	}
	/**
	 * 设置：开启评论
	 */
	public void setAllowComment(Integer allowComment) {
		this.allowComment = allowComment;
	}
	/**
	 * 获取：开启评论
	 */
	public Integer getAllowComment() {
		return allowComment;
	}
	/**
	 * 设置：允许ping
	 */
	public void setAllowPing(Integer allowPing) {
		this.allowPing = allowPing;
	}
	/**
	 * 获取：允许ping
	 */
	public Integer getAllowPing() {
		return allowPing;
	}
	/**
	 * 设置：允许反馈
	 */
	public void setAllowFeed(Integer allowFeed) {
		this.allowFeed = allowFeed;
	}
	/**
	 * 获取：允许反馈
	 */
	public Integer getAllowFeed() {
		return allowFeed;
	}
	/**
	 * 设置：作者
	 */
	public void setAuthor(String author) {
		this.author = author;
	}
	/**
	 * 获取：作者
	 */
	public String getAuthor() {
		return author;
	}
	/**
	 * 设置：创建时间
	 */
	public void setGtmCreate(Date gtmCreate) {
		this.gtmCreate = gtmCreate;
	}
	/**
	 * 获取：创建时间
	 */
	public Date getGtmCreate() {
		return gtmCreate;
	}

	@Override
	public String toString() {
		return "ContentDO{" +
				"cid=" + cid +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", type='" + type + '\'' +
				", hits=" + hits +
				", commentsNum=" + commentsNum +
				", allowComment=" + allowComment +
				", allowPing=" + allowPing +
				", allowFeed=" + allowFeed +
				", author='" + author + '\'' +
				", gtmCreate=" + gtmCreate +
				'}';
	}
}
