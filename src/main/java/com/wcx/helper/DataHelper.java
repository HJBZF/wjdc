package com.wcx.helper;

import com.wcx.bean.UserInfo;

/** 
 * @author 作者:Mummy QQ:1962978637 
 * @date 创建时间:2018年3月17日下午7:58:40
 * @ClassName 
 * @Description 存储系统中重要且常用的数据
 * @record 修改记录:
 * @version 1.0 
 */
public class DataHelper {
	//登录成功的用户信息
	private static UserInfo loginUserInfo = null;

	public static UserInfo getLoginUserInfo() {
		return loginUserInfo;
	}

	public static void setLoginUserInfo(UserInfo loginUserInfo) {
		DataHelper.loginUserInfo = loginUserInfo;
	}

	
}
