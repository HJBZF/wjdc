package com.wcx.dao;

import java.util.List;
import java.util.Map;

/**
 * 数据模型层接口
 * @author zf
 * 2018年1月2日
 * @param <T>
 */
public interface BaseDao<T> {
	public List<T> findAll(Class<?> c,String sqlId);
	
	public List<T> findAll(Class<?> c,Map<String, Object> map,String sqlId);
	
	public List<T> findAll(Class<?> c,Object object,String sqlId);
	
	public T find(Class<?> c,Map<String, Object> map,String sqlId);
	
	public T find(Class<?> c,Object object,String sqlId);
	
	public T find(Class<?> c,String sqlId);
	
	public Integer add(Class<?> c,Map<String, Object> map,String sqlId);
	
	public Integer add(Class<?> c,Object object,String sqlId);
	
	public Integer delete(Class<?> c,Map<String, Object> map,String sqlId);
	
	public Integer delete(Class<?> c,Object object,String sqlId);
	
	public Integer update(Class<?> c,Map<String, Object> map,String sqlId);
	
	public Integer update(Class<?> c,Object object,String sqlId);
	
	public Double findFunc(Class<?> c,String sqlId);
	
	public Double findFunc(Class<?> c,Map<String, Object> map,String sqlId);
	
	public Double findFunc(Class<?> c,Object object,String sqlId);
	
}
