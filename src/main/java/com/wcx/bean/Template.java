package com.wcx.bean;

import java.io.Serializable;

/**
 * 模板分类表
 * @author JJF
 *
 */

public class Template implements Serializable{
	private static final long serialVersionUID = -3762738650842643179L;
	
	private int wcxtid;            //模板分类id
    private String wcxtname;			//模板分类名
    private int status;		//模板分类的状态
    
	@Override
	public String toString() {
		return "Template [wcxtid=" + wcxtid + ", wcxtname=" + wcxtname + ", status=" + status + "]";
	}

	public Template() {
		super();
	}

	public Template(int wcxtid, String wcxtname, int status) {
		super();
		this.wcxtid = wcxtid;
		this.wcxtname = wcxtname;
		this.status = status;
	}

	public int getWcxtid() {
		return wcxtid;
	}

	public void setWcxtid(int wcxtid) {
		this.wcxtid = wcxtid;
	}

	public String getWcxtname() {
		return wcxtname;
	}

	public void setWcxtname(String wcxtname) {
		this.wcxtname = wcxtname;
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
		result = prime * result + wcxtid;
		result = prime * result + ((wcxtname == null) ? 0 : wcxtname.hashCode());
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
		Template other = (Template) obj;
		if (status != other.status)
			return false;
		if (wcxtid != other.wcxtid)
			return false;
		if (wcxtname == null) {
			if (other.wcxtname != null)
				return false;
		} else if (!wcxtname.equals(other.wcxtname))
			return false;
		return true;
	}
}
