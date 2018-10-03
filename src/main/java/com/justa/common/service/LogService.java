package com.justa.common.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.justa.common.domain.LogDO;
import com.justa.common.domain.PageDO;
import com.justa.common.utils.Query;
@Service
public interface LogService {
	PageDO<LogDO> queryList(Query query);
	int remove(Long id);
	int batchRemove(Long[] ids);
}
