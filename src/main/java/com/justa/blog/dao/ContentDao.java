package com.justa.blog.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.justa.blog.domain.ContentDO;
import com.justa.miniprograms.utils.Pager;
import com.justa.miniprograms.vo.ContentVO;

/**
 * 文章内容
 * @author chglee
 * @email 1992lcg@163.com
 * @date 2017-10-03 16:17:48
 */
@Mapper
public interface ContentDao {

	ContentDO get(Long cid);
	
	List<ContentDO> list(Map<String,Object> map);
	
	int count(Map<String,Object> map);
	
	int save(ContentDO content);
	
	int update(ContentDO content);
	
	int remove(Long cid);
	
	int batchRemove(Long[] cids);

	//以下为小程序提供
	/**
	 * 
	 * @Title: listForMiniPrograms 
	 * @Description: 获取文章列表
	 * @param pager currentPage 当前页（请求页）；pageSize 每页条数
	 * @return
	 * List<ContentVO>
	 */
	List<ContentVO> listForMiniPrograms(@Param("pager") Pager pager);
	
	/**
	 * 
	 * @Title: addHits 
	 * @Description: 阅读量+1
	 * @param cid
	 * void
	 */
	void addHits(@Param("cid") Long cid);
}
