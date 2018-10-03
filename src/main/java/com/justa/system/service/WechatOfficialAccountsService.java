package com.justa.system.service;

import com.justa.system.domain.WechatOfficialAccountsDO;

import java.util.List;
import java.util.Map;

/**
 * 微信公众号信息表
 * 
 * @author soar
 * @email 578394545@qq.com
 * @date 2018-01-17 00:03:53
 */
public interface WechatOfficialAccountsService {
	
	WechatOfficialAccountsDO get(Integer id);
	
	List<WechatOfficialAccountsDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(WechatOfficialAccountsDO wechatOfficialAccounts);
	
	int update(WechatOfficialAccountsDO wechatOfficialAccounts);
	
	int remove(Integer id);
	
	int batchRemove(Integer[] ids);
	
	WechatOfficialAccountsDO getByWechatId(String wechatid);
}
