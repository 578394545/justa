package com.justa.miniprograms.utils;

import org.apache.commons.beanutils.PropertyUtils;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * 转换vo的公共方法
 * 
 * @author Administrator
 *
 */
public class BeanUtil {

	public static void main(String[] args) {

//		System.out.println(tagVO.getName());
//		System.out.println(tagVO.getRemark());
//		System.out.println(tagVO.getTagId());
		// System.out.println(tagVO.getCreateTime());
		
//		Title title = new Title();
//		title.setCreateTime(new Date());
//		title.setDes("sss");
//		title.setId(1);
//		title.setPics(null);
//		title.setTitle("11111");
//		title.setType(1);
		
//		try {
//			TitleVO titlevo = new TitleVO();
////			BeanUtils.copyProperties(title, titlevo);
//			PropertyUtils.copyProperties(titlevo, title);
//			System.out.println(titlevo);
//			System.out.println(titlevo.getCreateTime());
//		} catch (Exception e) {
//			e.printStackTrace();
//		} 
//		List list =  new ArrayList();
//		getParentClass(TrackVo4Xmly.class, list);
//		System.out.println(list);
		
	}

	public static Method makeGetMethod(Class classType, String fieldName)
			throws Exception {

		String firstLetter = fieldName.substring(0, 1).toUpperCase();
		String getMethodName = "get" + firstLetter + fieldName.substring(1);
		Method getMethod = classType.getMethod(getMethodName, new Class[] {});
		return getMethod;
	}

	public static Method makeSetMethod(Class classType, String fieldName)
			throws Exception {

		Field field = classType.getDeclaredField(fieldName);
		String firstLetter = fieldName.substring(0, 1).toUpperCase();
		String setMethodName = "set" + firstLetter + fieldName.substring(1);
		Method setMethod = classType.getMethod(setMethodName,
				new Class[] { field.getType() });
		return setMethod;
	}

	/**
	 * 当需要对返回的vo进行处理时调用
	 * List<MessageVO> voList = (List<MessageVO>) BeanUtil.poToVo(MessageVO.class, result,null);
	 * @param classType vo类名
	 * @param po        entity类
	 * @param fieldMap  po到vo名称不相同的字段映射
	 * @return vo实例
	 */
	public static Object poToVo(Class<?> classType, Object po,
			Map<String, String> fieldMap) {

		Object entity = null;
		try {
			entity = classType.getConstructor(new Class[] {}).newInstance(
					new Object[] {});
			Field fields[] = classType.getDeclaredFields();
			String className = classType.getSimpleName();
			for (int i = 0, length = fields.length; i < length; i++) {
				try {
					String fieldName = fields[i].getName();
					Method setMethod = makeSetMethod(classType, fieldName);
					Method getMethod = null;
					if (setMethod == null) {
						continue;
					}
					if (fieldMap == null || !fieldMap.containsKey(fieldName)) {
						getMethod = makeGetMethod(po.getClass(), fieldName);
					} else {
						// 如果在map中，则说明po和vo字段名称不一致
						getMethod = makeGetMethod(po.getClass(),
								fieldMap.get(fieldName));
					}
					Object value = getMethod.invoke(po, new Object[] {});
					setMethod.invoke(entity, value);
				} catch (Exception e) {
					continue;
				}
			}
		} catch (Exception e) {
			return null;
		}
		return entity;
	}

	public static List poToVo(Class<?> classType, List poList,
			Map<String, String> fieldMap) {
		List list = new ArrayList();
		Object vo = null;
		try {
			for (int i = 0; i < poList.size(); i++) {
				vo = poToVo(classType, poList.get(i), fieldMap);
				list.add(vo);
			}
		} catch (Exception e) {
			return null;
		}
		return list;
	}


	/**
	 * 复制po的对象属性到vo
	 * 
	 * @param vo
	 *            .classType
	 * @param po
	 * @return vo
	 */
	public static Object poToVo(Class<?> classType, Object po) {
		Object entity = null;
		try {
			entity = classType.getConstructor(new Class[] {}).newInstance(
					new Object[] {});
//			BeanUtils.copyProperties(po, entity);
			PropertyUtils.copyProperties(entity,po);
		} catch (Exception e) {
			return null;
		}
		return entity;
	}

	/**
	 * 直接在控制层返回voList时调用
	 * 比如：jsonResult.success(poToVo(classType, poList));
	 * @param vo
	 *            .classType
	 * @param poList
	 * @return voList
	 */
	public static List poToVo(Class<?> classType, List poList) {
		List list = new ArrayList();
		Object entity = null;
		try {
			for (int i = 0; i < poList.size(); i++) {
				entity = classType.getConstructor(new Class[] {}).newInstance(
						new Object[] {});
//				BeanUtils.copyProperties(poList.get(i), entity);
				PropertyUtils.copyProperties(entity,poList.get(i));
				list.add(entity);
			}

		} catch (Exception e) {
			return null;
		}
		return list;
	}
	
	/**
	 * 包含的父类的实体映射
	 * @param classType
	 * @param poList
	 * @param fieldMap
	 * @param includeParentClass
	 * @return
	 * @return List
	 * @date 2016年3月1日
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static List poToVo(Class<?> classType, List poList,
			Map<String, String> fieldMap,boolean includeParentClass) {
		List list = new ArrayList();
		Object vo = null;
		if(poList == null || poList.size()==0){
			return list;
		}
		try {
			if(includeParentClass){
				for (int i = 0; i < poList.size(); i++) {
					vo = poToVo2(classType, poList.get(i), fieldMap);
					list.add(vo);
				}
			}else{
				return poToVo(classType, poList, fieldMap);
			}
		} catch (Exception e) {
			return null;
		}
		return list;
	}
	
	/**
	 * 当需要对返回的vo进行处理时调用
	 * List<MessageVO> voList = (List<MessageVO>) BeanUtil.poToVo(MessageVO.class, result,null);
	 * @param classType vo类名
	 * @param po        entity类
	 * @param fieldMap  po到vo名称不相同的字段映射
	 * @return vo实例
	 */
	public static Object poToVo2(Class<?> classType, Object po,
			Map<String, String> fieldMap) {

		Object entity = null;
		try {
			entity = classType.getConstructor(new Class[] {}).newInstance(
					new Object[] {});
			List<Field> fieldList = getClassFields(classType,true);
			PropertyDescriptor pd = null;
			for (int i = 0, length = fieldList.size(); i < length; i++) {
				try {
					String fieldName = fieldList.get(i).getName();
					Method setMethod = null;
					Method getMethod = null;
					pd = new PropertyDescriptor(fieldName, classType);
					setMethod = pd.getWriteMethod();
					if (fieldMap == null || !fieldMap.containsKey(fieldName)) {
						pd = new PropertyDescriptor(fieldName, po.getClass());
						getMethod = pd.getReadMethod();
					} else {
						// 如果在map中，则说明po和vo字段名称不一致
						pd = new PropertyDescriptor(fieldMap.get(fieldName), po.getClass());
						getMethod = pd.getReadMethod();
					}
					Object value = getMethod.invoke(po, new Object[] {});
					setMethod.invoke(entity, value);
				} catch (Exception e) {
					continue;
				}
			}
		} catch (Exception e) {
			return null;
		}
		return entity;
	}
	
	
	public static List<Field> getClassFields ( Class clazz, boolean includeParentClass )
	{
		List<Field> list = new ArrayList<Field>();
		Field[] fields = clazz.getDeclaredFields ( );
		for ( Field field : fields )
		{
			list.add(field);
		}
		if ( includeParentClass )
			getParentClassFields ( list, clazz.getSuperclass ( ) );
		return list;
	}
	
	/**
	 * 获取类实例的父类的属性值
	 * @param map
	 *            类实例的属性值Map
	 * @param clazz
	 *            类名
	 * @return 类名.属性名=属性类型
	 */
	private static List<Field> getParentClassFields ( List<Field> list, Class clazz )
	{
		Field[] fields = clazz.getDeclaredFields ( );
		for ( Field field : fields )
		{
			list.add(field);
		}
		if ( clazz.getSuperclass ( ) == null )
		{
			return list;
		}
		getParentClassFields (list, clazz.getSuperclass ( ) );
		return list;
	}

	/**
	 * 复制po的对象属性到vo
	 * @param classType
	 * @param po 被复制的po对象
	 * @param excludeList po被排除的复制属性字段
	 * @return
	 */
	public static Object poToVoExclude(Class<?> classType, Object po,
								List<String> excludeList){
		Object entity = null;
		try {
			entity = classType.getConstructor(new Class[] {}).newInstance(
					new Object[] {});
			Field fields[] = classType.getDeclaredFields();
			for (int i = 0, length = fields.length; i < length; i++) {
				try {
					String fieldName = fields[i].getName();
					Method setMethod = makeSetMethod(classType, fieldName);
					Method getMethod = null;
					if (setMethod == null) {
						continue;
					}
					if (excludeList == null || !excludeList.contains(fieldName)) {
						getMethod = makeGetMethod(po.getClass(), fieldName);
					}
					Object value = getMethod.invoke(po, new Object[] {});
					setMethod.invoke(entity, value);
				} catch (Exception e) {
					continue;
				}
			}
		} catch (Exception e) {
			return null;
		}
		return entity;
	}
}
