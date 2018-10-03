package com.justa.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.justa.system.domain.UserDO;

/**
 * 
 * @ClassName: UserDao 
 * @Description: 用户管理dao
 * @author soar
 * @date 2018年1月14日 下午2:38:23 
 *
 */
@Mapper
public interface UserDao{


	UserDO get(Long userId);
	
	List<UserDO> list(Map<String,Object> map);
	
	int count(Map<String,Object> map);
	
	int save(UserDO user);
	
	int update(UserDO user);
	
	int remove(Long userId);
	
	int batchRemove(Long[] userIds);

}
