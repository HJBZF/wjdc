package com.wcx.biz;

import java.util.List;
import java.util.Map;

import com.wcx.bean.Template;

public interface ITemplateBiz {
	/**
	 * 分页查询所有的问卷类型
	 * @param pageNo
	 * @param pageSize
	 * @return	问卷类型的集合
	 */
	public Map<String,Object> findByPage(Integer pageNo,Integer pageSize);
	
	/**
	 * 添加一个问卷类型
	 * @param wcxtname
	 * @return
	 */
	public int addTemplate(String wcxtname);
	
	/**
	 * 删除问卷类型（可以单个删除，也可以成批删除）
	 * @param wcxtids
	 * @return
	 */
	public int delTemplate(String wcxtids);
	
	/**
	 * 修改问卷类型
	 * @param wcxtname
	 * @return
	 */
	public int updateTemplate(String wcxtid, String wcxtname);
	
	/**
	 * 修改问卷状态
	 * @param wcxtname
	 * @return
	 */
	public int updateTemStatus(int wcxtid, int status);
	
	/**
	 * 查找所有问卷问卷的类型
	 * @return
	 */
	public List<Map<String,String>> findTypeName();
}
