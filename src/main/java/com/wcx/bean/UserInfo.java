package com.wcx.bean;

import java.io.Serializable;

/**
 *  用户表
 * @author JJF
 *
 */
public class UserInfo implements Serializable{
	private static final long serialVersionUID = 6097020140246417414L;
	private int wcxuid;        //用户id
     private String wcxuname;          //用户名称
     private String wcxuemail;                 //邮箱
     private String  wcxualipay;             //支付宝
     private String  wcxuphoto;           //头像
     private String  wcxupwd;          //密码
     private String  wcxuqq;             //QQ
     private String wcxuwechat;         //微信
     private int status;            //状态 
     
	@Override
	public String toString() {
		return "UserInfo [wcxuid=" + wcxuid + ", wcxuname=" + wcxuname + ", wcxuemail=" + wcxuemail + ", wcxualipay="
				+ wcxualipay + ", wcxuphoto=" + wcxuphoto + ", wcxupwd=" + wcxupwd + ", wcxuqq=" + wcxuqq
				+ ", wcxuwechat=" + wcxuwechat + ", status=" + status + "]";
	}

	public int getWcxuid() {
		return wcxuid;
	}

	public void setWcxuid(int wcxuid) {
		this.wcxuid = wcxuid;
	}

	public String getWcxuname() {
		return wcxuname;
	}

	public void setWcxuname(String wcxuname) {
		this.wcxuname = wcxuname;
	}

	public String getWcxuemail() {
		return wcxuemail;
	}

	public void setWcxuemail(String wcxuemail) {
		this.wcxuemail = wcxuemail;
	}

	public String getWcxualipay() {
		return wcxualipay;
	}

	public void setWcxualipay(String wcxualipay) {
		this.wcxualipay = wcxualipay;
	}

	public String getWcxuphoto() {
		return wcxuphoto;
	}

	public void setWcxuphoto(String wcxuphoto) {
		this.wcxuphoto = wcxuphoto;
	}

	public String getWcxupwd() {
		return wcxupwd;
	}

	public void setWcxupwd(String wcxupwd) {
		this.wcxupwd = wcxupwd;
	}

	public String getWcxuqq() {
		return wcxuqq;
	}

	public void setWcxuqq(String wcxuqq) {
		this.wcxuqq = wcxuqq;
	}

	public String getWcxuwechat() {
		return wcxuwechat;
	}

	public void setWcxuwechat(String wcxuwechat) {
		this.wcxuwechat = wcxuwechat;
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
		result = prime * result + ((wcxualipay == null) ? 0 : wcxualipay.hashCode());
		result = prime * result + ((wcxuemail == null) ? 0 : wcxuemail.hashCode());
		result = prime * result + wcxuid;
		result = prime * result + ((wcxuname == null) ? 0 : wcxuname.hashCode());
		result = prime * result + ((wcxuphoto == null) ? 0 : wcxuphoto.hashCode());
		result = prime * result + ((wcxupwd == null) ? 0 : wcxupwd.hashCode());
		result = prime * result + ((wcxuqq == null) ? 0 : wcxuqq.hashCode());
		result = prime * result + ((wcxuwechat == null) ? 0 : wcxuwechat.hashCode());
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
		UserInfo other = (UserInfo) obj;
		if (status != other.status)
			return false;
		if (wcxualipay == null) {
			if (other.wcxualipay != null)
				return false;
		} else if (!wcxualipay.equals(other.wcxualipay))
			return false;
		if (wcxuemail == null) {
			if (other.wcxuemail != null)
				return false;
		} else if (!wcxuemail.equals(other.wcxuemail))
			return false;
		if (wcxuid != other.wcxuid)
			return false;
		if (wcxuname == null) {
			if (other.wcxuname != null)
				return false;
		} else if (!wcxuname.equals(other.wcxuname))
			return false;
		if (wcxuphoto == null) {
			if (other.wcxuphoto != null)
				return false;
		} else if (!wcxuphoto.equals(other.wcxuphoto))
			return false;
		if (wcxupwd == null) {
			if (other.wcxupwd != null)
				return false;
		} else if (!wcxupwd.equals(other.wcxupwd))
			return false;
		if (wcxuqq == null) {
			if (other.wcxuqq != null)
				return false;
		} else if (!wcxuqq.equals(other.wcxuqq))
			return false;
		if (wcxuwechat == null) {
			if (other.wcxuwechat != null)
				return false;
		} else if (!wcxuwechat.equals(other.wcxuwechat))
			return false;
		return true;
	}

	public UserInfo(int wcxuid, String wcxuname, String wcxuemail, String wcxualipay, String wcxuphoto, String wcxupwd,
			String wcxuqq, String wcxuwechat, int status) {
		super();
		this.wcxuid = wcxuid;
		this.wcxuname = wcxuname;
		this.wcxuemail = wcxuemail;
		this.wcxualipay = wcxualipay;
		this.wcxuphoto = wcxuphoto;
		this.wcxupwd = wcxupwd;
		this.wcxuqq = wcxuqq;
		this.wcxuwechat = wcxuwechat;
		this.status = status;
	}

	public UserInfo() {
		super();
	}
     
     
}