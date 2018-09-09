package com.wcx.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.wcx.bean.Manager;
import com.wcx.biz.WcxmanagerBiz;

@Controller
public class ManagerController {
	@Autowired
	private WcxmanagerBiz wcxmanagerBiz;
	
	//用这个构造函数来判断这个控制类是否创建成功
	public ManagerController(){
		System.out.println("ManagerController类创建成功");
	}
	
	@RequestMapping("/back/managerLogin")
	@ResponseBody
	public String managerLogin(HttpSession session,String wcxmname,String wcxmpwd){
		System.out.println(wcxmname);
		System.out.println(wcxmpwd);
		Manager manager=this.wcxmanagerBiz.managerLogin(wcxmname, wcxmpwd);
		System.out.println("控制层manager= "+manager);
		Gson gson=new Gson();
		if(manager==null){
			return gson.toJson(null);
		}else{
			session.setAttribute("currentLoginManager", manager);
			return gson.toJson(manager);
		}
	}
	
	/**
	 * 分页查询
	 * @param request
	 * @return
	 */
	@RequestMapping("/manfindByPage")
	@ResponseBody
	public String manfindByPage(HttpServletRequest request){
		Integer pageNo = Integer.parseInt(request.getParameter("page"));
		Integer pageSize = Integer.parseInt(request.getParameter("rows"));
		Gson gson=new Gson();
		return gson.toJson(this.wcxmanagerBiz.manfindByPage(pageNo, pageSize));
	}
	
	/**
	 * 修改状态
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateManStatus")
	@ResponseBody
	public String updateManStatus(HttpServletRequest request){
		Integer wcxmid = Integer.parseInt(request.getParameter("wcxmid"));
		Integer status = Integer.parseInt(request.getParameter("status"));
		Gson gson = new Gson();
		return gson.toJson( this.wcxmanagerBiz.updateManStatus(wcxmid,status) );
	}
	
	/**
	 * 添加
	 * @param request
	 * @return
	 */
	@RequestMapping("/addManager")
	@ResponseBody
	public Integer addManager(HttpServletRequest request){
		String wcxmname = request.getParameter("wcxmname");
		String wcxmpwd = request.getParameter("wcxmpwd");
		String wcxmemail = request.getParameter("wcxmemail");
		String wcxmalipay = request.getParameter("wcxmalipay");
		String wcxmpic = request.getParameter("wcxmpic");
		String wcxqq = request.getParameter("wcxqq");
		String wcxwechat = request.getParameter("wcxwechat");
		System.out.println(wcxmpic);
		
		return this.wcxmanagerBiz.addManager(wcxmname, wcxmpwd, wcxmemail, wcxmalipay, wcxmpic, wcxqq, wcxwechat);
	}
	
	/**
	 * 使得状态为0，删除单个多多个
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/delManager")
	@ResponseBody
	public String delSurvey(HttpServletRequest request){
		String wcxmids = request.getParameter("wcxmids");
		System.out.println(wcxmids);
		Gson gson = new Gson();
		return gson.toJson(this.wcxmanagerBiz.delManager(wcxmids));
	}
	
	/**
	 * 从数据库中删除
	 * @param ids
	 * @param response
	 * @return
	 */
	@RequestMapping("/deleteManager")
	@ResponseBody
	public Integer deleteManager(Integer ids,HttpServletResponse response){
		System.out.println("ids= "+ids);
		Integer result=this.wcxmanagerBiz.deleteManager(ids);
		return result;
	}
	
	/**
	 * 修改图片
	 * @param photos
	 * @param session
	 * @return
	 */
	@RequestMapping("/updatePhoto")
	@ResponseBody
	public String updatePhoto(@RequestParam("wcxmpics") MultipartFile wcxmpics,HttpSession session){
		if(wcxmpics!=null && wcxmpics.getSize()>0){
			try {
				String path=session.getServletContext().getRealPath("");
				String savePath="/uploadfile/"+new Date().getTime()+"_"+wcxmpics.getOriginalFilename();
				File dest=new File( new File(path).getParentFile(),savePath);
				wcxmpics.transferTo(dest);
				Manager lg=(Manager) session.getAttribute("currentLoginManager");
				int result=this.wcxmanagerBiz.updatePhoto(lg.getWcxmid(), savePath);
				if(result<=0){
					return null;
				}else{
					lg.setWcxmpic(savePath);
					session.setAttribute("currentLoginManager", lg);
					return savePath;
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	/**
	 * 添加单个
	 * @param request
	 * @return
	 */
	@RequestMapping("/addMan")
	@ResponseBody
	public Integer addMan(HttpServletRequest request){
		String wcxmname = request.getParameter("wcxmname");
		String wcxmpwd = request.getParameter("wcxmpwd");
		String wcxmemail = request.getParameter("wcxmemail");
		String wcxmalipay = request.getParameter("wcxmalipay");
		String wcxqq = request.getParameter("wcxqq");
		String wcxwechat = request.getParameter("wcxwechat");
		
		return this.wcxmanagerBiz.addMan(wcxmname, wcxmpwd, wcxmemail, wcxmalipay, wcxqq, wcxwechat);
	}
	
	
	/**
	 * 修改
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateManager")
	@ResponseBody
	public String updateManager(HttpServletRequest request){
		String wcxmid = request.getParameter("wcxmid");
		String wcxmname = request.getParameter("wcxmname");
		String wcxmpwd = request.getParameter("wcxmpwd");
		String wcxmemail = request.getParameter("wcxmemail");
		String wcxmalipay = request.getParameter("wcxmalipay");
		String wcxqq = request.getParameter("wcxqq");
		String wcxwechat = request.getParameter("wcxwechat");
		Gson gson = new Gson();
		return gson.toJson(this.wcxmanagerBiz.updateManager(wcxmid, wcxmname, wcxmpwd, wcxmemail, wcxmalipay, wcxqq, wcxwechat));
	}
	
}
