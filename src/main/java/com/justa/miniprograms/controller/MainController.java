package com.justa.miniprograms.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.justa.blog.domain.ContentDO;
import com.justa.blog.service.ContentService;
import com.justa.common.utils.Query;
import com.justa.miniprograms.utils.BeanUtil;
import com.justa.miniprograms.utils.Pager;
import com.justa.miniprograms.vo.ContentVO;

/**
 * 
 * @ClassName: MainController 
 * @Description: 主页面控制器管理类，主页面内容包括：公众号、文章、轮播图（暂无）、菜单（暂无）
 * @author soar
 * @date 2018年3月4日 下午9:05:18 
 *
 */
@RequestMapping("/main")
@Controller
public class MainController {
	
	@Autowired
    ContentService bContentService;
	
	/**
	 * 
	 * @Title: getList 
	 * @Description: 首页总请求，包括公众号、文章、轮播图（暂无）、菜单（暂无）
	 * @param params 传入参数：currentPage 当前页（请求页），pageSize 每页条数
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/open/getList")
	public List<Pager> getList(Pager pager) {
		List<Pager> allList = new ArrayList<>();
		
		/* 内容获取开始 */
		List<ContentVO> bContentList = bContentService.listForMiniPrograms(pager);
		pager.setType("content");
		pager.setRows(bContentList);
		allList.add(pager);
		/* 内容获取结束 */

		return allList;
	}
	
	/**
	 * 
	 * @Title: getOneContent 
	 * @Description: 获取单个文章，阅读量加1
	 * @param cid
	 * @return
	 * ContentVO
	 */
	@ResponseBody
	@GetMapping("/open/getOneContent")
	public ContentVO getOneContent(Long cid) {
		ContentDO contentDO = bContentService.get(cid);
		ContentVO contentVO = (ContentVO) BeanUtil.poToVo(ContentVO.class, contentDO);
		
		bContentService.addHits(cid);
		return contentVO;


	}
}
