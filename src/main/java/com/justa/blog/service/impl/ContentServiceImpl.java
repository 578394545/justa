package com.justa.blog.service.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justa.blog.dao.ContentDao;
import com.justa.blog.domain.ContentDO;
import com.justa.blog.service.ContentService;
import com.justa.miniprograms.utils.Pager;
import com.justa.miniprograms.vo.ContentVO;

import java.util.List;
import java.util.Map;

@Service
public class ContentServiceImpl implements ContentService {
    @Autowired
    private ContentDao bContentMapper;

    @Override
    public ContentDO get(Long cid) {
        return bContentMapper.get(cid);
    }

    @Override
    public List<ContentDO> list(Map<String, Object> map) {
        return bContentMapper.list(map);
    }

    @Override
    public int count(Map<String, Object> map) {
        return bContentMapper.count(map);
    }

    @Override
    public int save(ContentDO bContent) {
        return bContentMapper.save(bContent);
    }

    @Override
    public int update(ContentDO bContent) {
        return bContentMapper.update(bContent);
    }

    @Override
    public int remove(Long cid) {
        return bContentMapper.remove(cid);
    }

    @Override
    public int batchRemove(Long[] cids) {
        return bContentMapper.batchRemove(cids);
    }

    // 以下是为小程序提供的查询接口

    /**
     * 
     * @Title: listForMiniPrograms
     * @Description: 获取文章列表
     * @param pager
     *            currentPage 当前页（请求页）；pageSize 每页条数
     * @return List<ContentVO>
     */
    @Override
    public List<ContentVO> listForMiniPrograms(Pager pager) {
        return bContentMapper.listForMiniPrograms(pager);
    }

    /**
	 * 
	 * @Title: addHits 
	 * @Description: 阅读量+1
	 * @param cid
	 * void
	 */
	@Override
	public void addHits(Long cid) {
		bContentMapper.addHits(cid);
	}

}
