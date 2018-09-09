package com.wcx.bean;

import java.io.Serializable;

/**
 * 调查表
 * @author JJF
 *
 */
public class Survey implements Serializable{
	private static final long serialVersionUID = 6312079692606098003L;
	private int wcxsid;        //调查表id
	 private int wcxuid;				//用户的用户ID
     private String wcxsname;      //调查表名
     private int wcxtid;           //模板分类id
     private String wcxintroduce;           //简介
     private String wcxbdate;     //发表日期
     private String wcxtime;             //截止日期
     private int status;            //状态 
     
	@Override
	public String toString() {
		return "Survey [wcxsid=" + wcxsid + ", wcxuid=" + wcxuid + ", wcxsname=" + wcxsname + ", wcxtid=" + wcxtid
				+ ", wcxintroduce=" + wcxintroduce + ", wcxbdate=" + wcxbdate + ", wcxtime=" + wcxtime + ", status="
				+ status + "]";
	}

	public Survey() {
		super();
	}

	public Survey(int wcxsid, int wcxuid, String wcxsname, int wcxtid, String wcxintroduce, String wcxbdate,
			String wcxtime, int status) {
		super();
		this.wcxsid = wcxsid;
		this.wcxuid = wcxuid;
		this.wcxsname = wcxsname;
		this.wcxtid = wcxtid;
		this.wcxintroduce = wcxintroduce;
		this.wcxbdate = wcxbdate;
		this.wcxtime = wcxtime;
		this.status = status;
	}

	public int getWcxsid() {
		return wcxsid;
	}

	public void setWcxsid(int wcxsid) {
		this.wcxsid = wcxsid;
	}

	public int getWcxuid() {
		return wcxuid;
	}

	public void setWcxuid(int wcxuid) {
		this.wcxuid = wcxuid;
	}

	public String getWcxsname() {
		return wcxsname;
	}

	public void setWcxsname(String wcxsname) {
		this.wcxsname = wcxsname;
	}

	public int getWcxtid() {
		return wcxtid;
	}

	public void setWcxtid(int wcxtid) {
		this.wcxtid = wcxtid;
	}

	public String getWcxintroduce() {
		return wcxintroduce;
	}

	public void setWcxintroduce(String wcxintroduce) {
		this.wcxintroduce = wcxintroduce;
	}

	public String getWcxbdate() {
		return wcxbdate;
	}

	public void setWcxbdate(String wcxbdate) {
		this.wcxbdate = wcxbdate;
	}

	public String getWcxtime() {
		return wcxtime;
	}

	public void setWcxtime(String wcxtime) {
		this.wcxtime = wcxtime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + status;
		result = prime * result + ((wcxbdate == null) ? 0 : wcxbdate.hashCode());
		result = prime * result + ((wcxintroduce == null) ? 0 : wcxintroduce.hashCode());
		result = prime * result + wcxsid;
		result = prime * result + ((wcxsname == null) ? 0 : wcxsname.hashCode());
		result = prime * result + wcxtid;
		result = prime * result + ((wcxtime == null) ? 0 : wcxtime.hashCode());
		result = prime * result + wcxuid;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Survey other = (Survey) obj;
		if (status != other.status)
			return false;
		if (wcxbdate == null) {
			if (other.wcxbdate != null)
				return false;
		} else if (!wcxbdate.equals(other.wcxbdate))
			return false;
		if (wcxintroduce == null) {
			if (other.wcxintroduce != null)
				return false;
		} else if (!wcxintroduce.equals(other.wcxintroduce))
			return false;
		if (wcxsid != other.wcxsid)
			return false;
		if (wcxsname == null) {
			if (other.wcxsname != null)
				return false;
		} else if (!wcxsname.equals(other.wcxsname))
			return false;
		if (wcxtid != other.wcxtid)
			return false;
		if (wcxtime == null) {
			if (other.wcxtime != null)
				return false;
		} else if (!wcxtime.equals(other.wcxtime))
			return false;
		if (wcxuid != other.wcxuid)
			return false;
		return true;
	}
}
