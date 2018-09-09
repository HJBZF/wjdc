package com.wcx.biz;

import java.util.Map;

import com.wcx.bean.Manager;

public interface WcxmanagerBiz {
	/**
	 * 会员登录
	 * @param wcxmname
	 * @param wcxmpwd
	 * @return
	 */
	public Manager managerLogin(String wcxmname, String wcxmpwd);
	
	/**
	 * 分页查询
	 * @return
	 */
	public Map<String, Object> manfindByPage(int pageNo,int pageSize);
	
	/**
	 * 修改状态
	 * @param wcxtid
	 * @param status
	 * @return
	 */
	public int updateManStatus(int wcxmid, int status);
	
	/**
	 * 添加管理员
	 * @param manager
	 * @return
	 */
	public int addManager(String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay, String wcxmpic,String wcxqq, String wcxwechat);
	
	/**
	 * 删除管理员(可以单个，也可以成批删除)把数据库内的状态改为0
	 * @param wcxmids
	 * @return
	 */
	public int delManager(String wcxmids);
	
	/**
	 * 彻底从数据库删除管理员
	 * @param wcxmid
	 * @return
	 */
	public Integer deleteManager(Integer ids);
	
	/**
	 * 图像修改
	 * @param lid
	 * @param photo
	 * @return
	 */
	public int updatePhoto(Integer wcxmid,String wcxmpic);
	
	/**
	 * 单个添加
	 * @param wcxmname
	 * @param wcxmpwd
	 * @param wcxmemail
	 * @param wcxmalipay
	 * @param wcxqq
	 * @param wcxwechat
	 * @return
	 */
	public int addMan(String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay,String wcxqq, String wcxwechat);
	
	/**
	 * 根据管理员id修改管理员的姓名，密码，email，支付宝，QQ，微信
	 * @param wcxmid
	 * @param wcxmname
	 * @param wcxmpwd
	 * @param wcxmemail
	 * @param wcxmalipay
	 * @param wcxqq
	 * @param wcxwechat
	 * @return
	 */
	public int updateManager(String wcxmid,String wcxmname,String wcxmpwd,String wcxmemail,String wcxmalipay,String wcxqq,String wcxwechat);
}
