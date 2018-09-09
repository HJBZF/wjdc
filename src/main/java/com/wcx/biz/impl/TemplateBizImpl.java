package com.wcx.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wcx.bean.Template;
import com.wcx.biz.ITemplateBiz;
import com.wcx.dao.BaseDao;

@Service
@SuppressWarnings({"rawtypes","unchecked"})
//上面的rawtypes为了消除警告（删除后BaseDao会出现警告）， unchecked为了消除警告（baseDao.findAll(Template.class, map, "findByPage"  会出现警告);）。
public class TemplateBizImpl implements ITemplateBiz{
	@Autowired
	private BaseDao baseDao; 	//使用一个泛型的实体类，可以字节用它来当作数据层的类
	
	@Override
	public Map<String,Object> findByPage(Integer pageNo, Integer pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> map1 = new HashMap<String,Object>();
		
		map.put("pageNo", pageNo);
		map.put("pageSize", pageSize);
		map1.put("total", this.baseDao.findFunc(Template.class, "temTotal").intValue());		//intValue把它转换成整数型
		map1.put("rows", this.baseDao.findAll(Template.class, map, "temfindByPage"));
		return map1;
	}

	@Override
	public int addTemplate(String wcxtname) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxtname", wcxtname);
		return baseDao.add(Template.class, map, "addTemplate");
	}

	@Override
	public int delTemplate(String wcxtids) {
		
		return baseDao.delete(Template.class, wcxtids, "delTemplate");
	}

	@Override
	public int updateTemplate(String wcxtid, String wcxtname) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxtid", wcxtid);
		map.put("wcxtname", wcxtname);		//将这两个数据都存入到Map中，在 TemplateMapper.xml中可以直接得到
		return baseDao.update(Template.class, map, "updateTemplate");
	}
	
	@Override
	public int updateTemStatus(int wcxtid, int status) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxtid", wcxtid);
		map.put("status", status);		//将这两个数据都存入到Map中，在 TemplateMapper.xml中可以直接得到
		return baseDao.update(Template.class, map, "updateTemStatus");
	}

	@Override
	public List<Map<String, String>> findTypeName() {
		
		return null;
	}

}
