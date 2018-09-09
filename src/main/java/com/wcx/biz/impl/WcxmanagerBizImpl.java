package com.wcx.biz.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wcx.bean.Manager;
import com.wcx.bean.Survey;
import com.wcx.bean.UserInfo;
import com.wcx.biz.WcxmanagerBiz;
import com.wcx.dao.BaseDao;
import com.wcx.util.StringUtil;

@Service
@SuppressWarnings({"rawtypes","unchecked"})
public class WcxmanagerBizImpl implements WcxmanagerBiz{
	@Autowired
	private BaseDao baseDao;

	/**
	 * 会员登录
	 */
	@Override
	public Manager managerLogin(String wcxmname, String wcxmpwd) {
		System.out.println("业务层实现wcxmname= "+wcxmname);
		if(StringUtil.isNull(wcxmname,wcxmpwd)){                                        //判断字符串是否为空
			return null;
		}else{
			Map<String, Object> map=new HashMap<String,Object>();
			map.put("wcxmname", wcxmname);
			//wcxmpwd=MD5Encryption.createPassword(wcxmpwd);
			map.put("wcxmpwd", wcxmpwd);
			System.out.println("业务层实现map= "+map);

			return (Manager) this.baseDao.find(Manager.class, map,"managerLogin");
		}
	}

	/**
	 * 分页查询
	 */
	@Override
	public Map<String, Object> manfindByPage(int pageNo, int pageSize) {
		Map<String, Object> map=new HashMap<String,Object>();
		Map<String, Object> map1=new HashMap<String,Object>();
		
		map.put("pageNo", pageNo);
		map.put("pageSize", pageSize);
		map1.put("total", this.baseDao.findFunc(Manager.class, "getCount").intValue());
		map1.put("rows", this.baseDao.findAll(Manager.class, map, "manfindByPage"));
		return map1;
	}

	@Override
	public int updateManStatus(int wcxmid, int status) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxmid", wcxmid);
		map.put("status", status);		
		return baseDao.update(Manager.class, map, "updateManStatus");
	}
	
	/**
	 * 添加管理员
	 */
	@Override
	public int addManager(String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay, String wcxmpic,String wcxqq, String wcxwechat) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxmname", wcxmname);
		map.put("wcxmpwd", wcxmpwd);
		map.put("wcxmemail", wcxmemail);
		map.put("wcxmalipay", wcxmalipay);
		map.put("wcxmpic", wcxmpic);
		map.put("wcxqq", wcxqq);
		map.put("wcxwechat", wcxwechat);
		return baseDao.add(Manager.class, map, "addManager");
	}
	
	
	/**
	 * 单个或多个删除
	 */
	@Override
	public int delManager(String wcxmids) {
		return baseDao.delete(Manager.class, wcxmids, "delManager");
	}
	
	
	/**
	 * 删除管理员
	 */
	@Override
	public Integer deleteManager(Integer wcxmid) {
		System.out.println("wcxmid= "+wcxmid);
		return baseDao.delete(Manager.class, wcxmid, "deleteManager");
	}

	/**
	 * 修改图片
	 */
	@Override
	public int updatePhoto(Integer wcxmid, String wcxmpic) {
		if (StringUtil.isNull(wcxmpic)) {
			return 0;
		}else{
			Map<String, Object> map=new HashMap<String,Object>();
			map.put("wcxmid", wcxmid);
			map.put("wcxmpic", wcxmpic);
			return this.baseDao.add(Manager.class, map, "updatePhoto");
		}
	}

	/**
	 * 单个添加
	 */
	@Override
	public int addMan(String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay, String wcxqq, String wcxwechat) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("wcxmname", wcxmname);
		map.put("wcxmpwd", wcxmpwd);
		map.put("wcxmemail", wcxmemail);
		map.put("wcxmalipay", wcxmalipay);
		map.put("wcxqq", wcxqq);
		map.put("wcxwechat", wcxwechat);
		return baseDao.add(Manager.class, map, "addMan");
	}

	/**
	 * 修改
	 * @param wcxmid
	 * @param wcxmname
	 * @param wcxmpwd
	 * @param wcxmemail
	 * @param wcxmalipay
	 * @param wcxqq
	 * @param wcxwechat
	 * @return
	 */
	@Override
	public int updateManager(String wcxmid, String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay,
			String wcxqq, String wcxwechat) {
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("wcxmid", wcxmid);
		map.put("wcxmname", wcxmname);
		map.put("wcxmpwd", wcxmpwd);
		map.put("wcxmemail", wcxmemail);
		map.put("wcxmalipay", wcxmalipay);
		map.put("wcxqq", wcxqq);
		map.put("wcxwechat", wcxwechat);   //将这七个数据存入到Map中，在ManagerMapper.xml中可以直接得到
		return baseDao.update(Manager.class, map, "updateManager");
	}

}
