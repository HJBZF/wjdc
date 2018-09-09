package com.wcx.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wcx.bean.Survey;
import com.wcx.bean.Template;
import com.wcx.biz.ISurveyBiz;
import com.wcx.dao.BaseDao;

@Service
@SuppressWarnings({"rawtypes","unchecked"})
public class SurveyBizImpl implements ISurveyBiz{
	@Autowired
	private BaseDao baseDao;
	
	@Override
	public Map<String,Object> findByPage(Integer pageNo, Integer pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> map1 = new HashMap<String,Object>();
		
		map.put("pageNo", pageNo);
		map.put("pageSize", pageSize);
		map1.put("total", this.baseDao.findFunc(Survey.class, "surTotal").intValue());
		map1.put("rows", this.baseDao.findAll(Survey.class, map, "findByPageSurvey"));
		System.out.println(map1);
		return map1;
	}

	@Override
	public int addSurvey(String wcxuid,String wcxsname,String wcxtid,
		String wcxintroduce,String wcxbdate,String wcxtime) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxuid", wcxuid);
		map.put("wcxsname", wcxsname);
		map.put("wcxtid", wcxtid);
		map.put("wcxintroduce", wcxintroduce);
		map.put("wcxbdate", wcxbdate);
		map.put("wcxtime", wcxtime);
		return baseDao.add(Survey.class, map, "addSurvey");
	}

	@Override
	public int delSurvey(String wcxsids) {

		return baseDao.delete(Survey.class, wcxsids, "delSurvey");
	}

	@Override
	public int updateSurvey(String wcxsid, String wcxsname) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxsid", wcxsid);
		map.put("wcxsname", wcxsname);		
		return baseDao.update(Survey.class, map, "updateSurvey");
	}

	@Override
	public int updateSurStatus(int wcxsid, int status) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxsid", wcxsid);
		map.put("status", status);		
		return baseDao.update(Survey.class, map, "updateSurStatus");
	}

}
