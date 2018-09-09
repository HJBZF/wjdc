package com.wcx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.wcx.bean.Survey;
import com.wcx.biz.ISurveyBiz;

@Controller
public class SurveyController {
	@Autowired
	private ISurveyBiz surveyBiz;
	
	@RequestMapping("/addSurvey")
	@ResponseBody
	public Integer addSurvey(HttpServletRequest request){
		String wcxuid = request.getParameter("wcxuid");
		String wcxsname = request.getParameter("wcxsname");
		String wcxtid = request.getParameter("wcxtid");
		String wcxintroduce = request.getParameter("wcxintroduce");
		String wcxbdate = request.getParameter("wcxbdate");
		String wcxtime = request.getParameter("wcxtime");
		
		return this.surveyBiz.addSurvey(wcxuid, wcxsname, wcxtid, wcxintroduce, wcxbdate, wcxtime);
	}
	
	@RequestMapping("/findByPageSurvey")
	@ResponseBody
	public String findByPage(HttpServletRequest request){
		Integer pageNo = Integer.parseInt(request.getParameter("page"));
		Integer pageSize = Integer.parseInt(request.getParameter("rows"));
		Gson gson = new Gson();
		return gson.toJson(this.surveyBiz.findByPage(pageNo, pageSize));
	}
	
	@RequestMapping("/delSurvey")
	@ResponseBody
	public String delSurvey(HttpServletRequest request){
		String wcxsids = request.getParameter("wcxsids");
		System.out.println(wcxsids);
		Gson gson = new Gson();
		return gson.toJson(this.surveyBiz.delSurvey(wcxsids));
	}
	
	@RequestMapping("/updateSurvey")
	@ResponseBody
	public String updateSurvey(HttpServletRequest request){
		String wcxsname = request.getParameter("wcxsname");
		String wcxsid = request.getParameter("wcxsid");
		Gson gson = new Gson();
		return gson.toJson(this.surveyBiz.updateSurvey(wcxsid, wcxsname));
	}
	
	@RequestMapping("/updateSurStatus")
	@ResponseBody
	public String updateSurStatus(HttpServletRequest request){
		Integer wcxsid = Integer.parseInt(request.getParameter("wcxsid"));
		Integer status = Integer.parseInt(request.getParameter("status"));
		Gson gson = new Gson();
		return gson.toJson( this.surveyBiz.updateSurStatus(wcxsid,status) );
	}
}
