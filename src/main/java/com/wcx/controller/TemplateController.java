package com.wcx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.wcx.biz.ITemplateBiz;

@Controller
public class TemplateController {
	@Autowired
	private ITemplateBiz templateBiz;
	
	//用这个构造函数来判断这个控制类是否创建成功
	public TemplateController(){
		System.out.println("TemplateController类创建成功");
	}
	
	@RequestMapping("/addTemplate")
	@ResponseBody
	public Integer addTemplate(HttpServletRequest request){
		String wcxtname = request.getParameter("wcxtname");
		System.out.println(wcxtname);
		return this.templateBiz.addTemplate(wcxtname);
	}
	
	@RequestMapping("/temfindByPage")
	@ResponseBody
	public String findByPage(HttpServletRequest request){
		Integer pageNo = Integer.parseInt(request.getParameter("page"));
		Integer pageSize = Integer.parseInt(request.getParameter("rows"));
		//System.out.println(pageNo);
		Gson gson = new Gson();
		return gson.toJson(this.templateBiz.findByPage(pageNo, pageSize));
	}
	
	@RequestMapping("/updateTemplate")
	@ResponseBody
	public String updateTemplate(HttpServletRequest request){
		String wcxtname = request.getParameter("wcxtname");
		String wcxtid = request.getParameter("wcxtid");
		Gson gson = new Gson();
		return gson.toJson(this.templateBiz.updateTemplate(wcxtid, wcxtname));
	}
	
	@RequestMapping("/updateTemStatus")
	@ResponseBody
	public String updateTemStatus(HttpServletRequest request){
		Integer wcxtid = Integer.parseInt(request.getParameter("wcxtid"));
		Integer status = Integer.parseInt(request.getParameter("status"));
		Gson gson = new Gson();
		return gson.toJson( this.templateBiz.updateTemStatus(wcxtid,status) );
	}
	
	@RequestMapping("/delTemplate")
	@ResponseBody
	public String delTemplate(HttpServletRequest request){
		String wcxtids = request.getParameter("wcxtids");
		System.out.println(wcxtids);
		Gson gson = new Gson();
		return gson.toJson(this.templateBiz.delTemplate(wcxtids));
	}
}
