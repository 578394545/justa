package com.justa.blog.service;

import java.util.List;
import java.util.Map;

import com.justa.blog.domain.ContentDO;
import com.justa.miniprograms.utils.Pager;
import com.justa.miniprograms.vo.ContentVO;

/**
 * 文章内容
 * 
 * @author chglee
 * @email 1992lcg@163.com
 * @date 2017-09-09 10:03:34
 */
public interface ContentService {
	
	ContentDO get(Long cid);
	
	List<ContentDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(ContentDO bContent);
	
	int update(ContentDO bContent);
	
	int remove(Long cid);
	
	int batchRemove(Long[] cids);
	
	//以下是为小程序提供的查询接口
	
	/**
	 * 
	 * @Title: listForMiniPrograms 
	 * @Description: 获取文章列表
	 * @param pager currentPage 当前页（请求页）；pageSize 每页条数
	 * @return
	 * List<ContentVO>
	 */
	List<ContentVO> listForMiniPrograms(Pager pager);
	
	/**
	 * 
	 * @Title: addHits 
	 * @Description: 阅读量+1
	 * @param cid
	 * void
	 */
	void addHits(Long cid);
}
