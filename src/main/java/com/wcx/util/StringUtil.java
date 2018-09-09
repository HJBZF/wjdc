package com.wcx.util;

/**
 * 判断字段是否为空
 * @author
 *
 */
public class StringUtil {
	public static boolean isNull(String str){
		if(str==null || "".equals(str)){
			return true;             //正确说明为空，不用判断
		}
		return false;        //错误说明不为空
	}
	
	public static boolean isNull(String ...params){
		if(params!=null && params.length>0){
			for(String str:params){
				if(str==null || "".equals(str)){
					return true;
				}				
			}
			return false;
		}else{
			return true;
		}
	}
}
