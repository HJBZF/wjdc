package com.wcx.mongdb;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

/** 
 * @author 作者:Mummy QQ:1962978637 
 * @date 创建时间:2018年3月18日下午3:38:19
 * @ClassName 
 * @Description
 * @record 修改记录:
 * @version 1.0 
 */
public class  MongodbTest{	
	public static void main(String[] args) {
		/*Map<String,Object> map = new HashMap<String,Object>();
		map.put("name", "张三");
		map.put("_id", 1001);
		map.put("pwd", "123");
		DBHelper dbh = new DBHelper();
		System.out.println(dbh.addObject("wcxcontent", map));*/
		try {
			Mongo m=new Mongo("127.0.0.1",27017);
			
			DB db=m.getDB("wcx");
			
			db.requestStart();
			
			Set<String> collections=db.getCollectionNames();
			
			for(String str:collections){
				System.out.println(str);
			}
			
			DBCollection dbcols=db.getCollection("wcxcontent");
			System.out.println(dbcols.getCount());
			
			DBObject obj=dbcols.findOne();
			System.out.println(obj);
			
			DBCursor dbCursor=dbcols.find();
			while( dbCursor.hasNext()){
				System.out.println( dbCursor.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
