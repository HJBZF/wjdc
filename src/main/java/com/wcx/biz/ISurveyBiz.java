package com.wcx.biz;

import java.util.Map;

public interface ISurveyBiz {
	/**
	 * 对调查问卷进行分页查询
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Map<String,Object> findByPage(Integer pageNo,Integer pageSize);
	
	/**
	 * 添加一个调查问卷
	 * @param survey
	 * @return
	 */
	public int addSurvey(String wcxuid,String wcxsname,String wcxtid,
						String wcxintroduce,String wcxbdate,String wcxtime);
	
	/**
	 * 删除问卷（可以单个删除，也可以成批删除）
	 * @param wcxtids
	 * @return
	 */
	public int delSurvey(String wcxsids);
	
	/**
	 * 修改问卷名
	 * @param wcxtname
	 * @return
	 */
	public int updateSurvey(String wcxsid, String wcxsname);
	
	/**
	 * 修改状态
	 * @param wcxtid
	 * @param status
	 * @return
	 */
	public int updateSurStatus(int wcxtid, int status);
}
