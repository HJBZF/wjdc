package com.wcx.mongdb;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.WriteResult;

/** 
 * @author 作者:Mummy QQ:1962978637 
 * @date 创建时间:2018年1月6日下午8:25:15
 * @ClassName 
 * @Description
 * @record 修改记录:
 * @version 1.0 
 */
public class DBHelper {
	
	private static Mongo mongo = null;
	
	static{
		try {
			mongo = new Mongo("127.0.0.1",27017);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (MongoException e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	* @Title: addObject
	* @Description: 添加数据到指定的集合中
	* @param @param collectionName 目标集合名称
	* @param @param map 源数据参数
	* @param @return    
	* @return int    
	* @throws
	*/
	public int addObject(String collectionName,Map<String,Object> map){
		WriteResult result = null;
		DB db = null;
		
		try {
			db = mongo.getDB("wcx");
			DBCollection collection = db.getCollection(collectionName);
			result = collection.save( new BasicDBObject(map) );
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(db != null){
				db.requestDone();
			}
		}
		return result.getN();
	}
	
	/**
	* @Title: find
	* @Description: 查询单个集合对象
	* @param @param map
	* @param @param collectionName
	* @param @return    
	* @return DBObject    
	* @throws
	*/
	public DBObject find(Map<String,Object> map,String collectionName){
		DBObject obj = null;
		DB db = null;
		
		try {
			db = mongo.getDB("wcx");//获取库
			DBCollection collection = db.getCollection(collectionName);
			obj = collection.findOne( new BasicDBObject(map) );
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(db != null){
				db.requestDone();
			}
		}
		return obj;
	}
	
	/**
	* @Title: finds
	* @Description: 查询
	* @param @param map
	* @param @param collectionName
	* @param @return    
	* @return DBCursor    
	* @throws
	*/
	public List<DBObject> finds(Map<String,Object> map,String collectionName){
		List<DBObject> list = new ArrayList<DBObject>();
		
		DB db = null;
		
		try {
			db = mongo.getDB("wcx");
			DBCollection collection = db.getCollection(collectionName);//按照条件查询
			DBCursor cursor = null;
			if(map != null && !map.isEmpty()){
				//由db对象获取DBCollection
				cursor = collection.find(new BasicDBObject(map));
			}else{
				cursor = collection.find();
			}
			while(cursor.hasNext()){
				list.add(cursor.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(db!=null){
				db.requestDone();
			}
		}
		return list;
	}
	
	/**
	* @Title: update
	* @Description: 更新操作
	* @param @param map
	* @param @param param
	* @param @param collectionName
	* @param @return    
	* @return int    
	* @throws
	*/
	public int update(Map<String,Object> map,Map<String,Object> param,String collectionName){
		WriteResult result = null;
		
		DB db = null;
		try {
			db = mongo.getDB("wcx");
			DBCollection collection = db.getCollection(collectionName);//获取这个库下的集合
			result = collection.update(new BasicDBObject(map), new BasicDBObject(param));
		} catch (MongoException e) {
			e.printStackTrace();
		}finally{
			if(db != null){
				db.requestDone();
			}
		}
		return result.getN();
		
	}
}
