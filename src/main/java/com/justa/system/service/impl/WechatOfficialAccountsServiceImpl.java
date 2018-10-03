package com.justa.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.justa.system.dao.WechatOfficialAccountsDao;
import com.justa.system.domain.WechatOfficialAccountsDO;
import com.justa.system.service.WechatOfficialAccountsService;



@Service
public class WechatOfficialAccountsServiceImpl implements WechatOfficialAccountsService {
	@Autowired
	private WechatOfficialAccountsDao wechatOfficialAccountsDao;
	
	@Override
	public WechatOfficialAccountsDO get(Integer id){
		return wechatOfficialAccountsDao.get(id);
	}
	
	@Override
	public List<WechatOfficialAccountsDO> list(Map<String, Object> map){
		return wechatOfficialAccountsDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return wechatOfficialAccountsDao.count(map);
	}
	
	@Override
	public int save(WechatOfficialAccountsDO wechatOfficialAccounts){
		return wechatOfficialAccountsDao.save(wechatOfficialAccounts);
	}
	
	@Override
	public int update(WechatOfficialAccountsDO wechatOfficialAccounts){
		return wechatOfficialAccountsDao.update(wechatOfficialAccounts);
	}
	
	@Override
	public int remove(Integer id){
		return wechatOfficialAccountsDao.remove(id);
	}
	
	@Override
	public int batchRemove(Integer[] ids){
		return wechatOfficialAccountsDao.batchRemove(ids);
	}

	@Override
	public WechatOfficialAccountsDO getByWechatId(String wechatid) {
		return wechatOfficialAccountsDao.getByWechatId(wechatid);
	}
	
}
