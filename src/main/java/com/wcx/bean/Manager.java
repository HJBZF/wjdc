package com.wcx.bean;

import java.io.Serializable;

/**
 * 管理员表
 * @author JJF
 *
 */
public class Manager  implements Serializable{
	private static final long serialVersionUID = -7656329163890112605L;
	private int wcxmid;       //管理员id
	private String wcxmname;      //管理员name
	private String wcxmpwd;                 //管理员密码
	private String wcxmemail;              //管理员email
	private String  wcxmalipay;           //管理员支付宝
	private String wcxmpic;                //管理员头像
	private String wcxqq;                //管理员QQ
	private String wcxwechat;             //管理员微信
	private int status;            //状态 
	
	public int getWcxmid() {
		return wcxmid;
	}
	public void setWcxmid(int wcxmid) {
		this.wcxmid = wcxmid;
	}
	public String getWcxmname() {
		return wcxmname;
	}
	public void setWcxmname(String wcxmname) {
		this.wcxmname = wcxmname;
	}
	public String getWcxmpwd() {
		return wcxmpwd;
	}
	public void setWcxmpwd(String wcxmpwd) {
		this.wcxmpwd = wcxmpwd;
	}
	public String getWcxmemail() {
		return wcxmemail;
	}
	public void setWcxmemail(String wcxmemail) {
		this.wcxmemail = wcxmemail;
	}
	public String getWcxmalipay() {
		return wcxmalipay;
	}
	public void setWcxmalipay(String wcxmalipay) {
		this.wcxmalipay = wcxmalipay;
	}
	public String getWcxmpic() {
		return wcxmpic;
	}
	public void setWcxmpic(String wcxmpic) {
		this.wcxmpic = wcxmpic;
	}
	public String getWcxqq() {
		return wcxqq;
	}
	public void setWcxqq(String wcxqq) {
		this.wcxqq = wcxqq;
	}
	public String getWcxwechat() {
		return wcxwechat;
	}
	public void setWcxwechat(String wcxwechat) {
		this.wcxwechat = wcxwechat;
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
		result = prime * result + ((wcxmalipay == null) ? 0 : wcxmalipay.hashCode());
		result = prime * result + ((wcxmemail == null) ? 0 : wcxmemail.hashCode());
		result = prime * result + wcxmid;
		result = prime * result + ((wcxmname == null) ? 0 : wcxmname.hashCode());
		result = prime * result + ((wcxmpic == null) ? 0 : wcxmpic.hashCode());
		result = prime * result + ((wcxmpwd == null) ? 0 : wcxmpwd.hashCode());
		result = prime * result + ((wcxqq == null) ? 0 : wcxqq.hashCode());
		result = prime * result + ((wcxwechat == null) ? 0 : wcxwechat.hashCode());
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
		Manager other = (Manager) obj;
		if (status != other.status)
			return false;
		if (wcxmalipay == null) {
			if (other.wcxmalipay != null)
				return false;
		} else if (!wcxmalipay.equals(other.wcxmalipay))
			return false;
		if (wcxmemail == null) {
			if (other.wcxmemail != null)
				return false;
		} else if (!wcxmemail.equals(other.wcxmemail))
			return false;
		if (wcxmid != other.wcxmid)
			return false;
		if (wcxmname == null) {
			if (other.wcxmname != null)
				return false;
		} else if (!wcxmname.equals(other.wcxmname))
			return false;
		if (wcxmpic == null) {
			if (other.wcxmpic != null)
				return false;
		} else if (!wcxmpic.equals(other.wcxmpic))
			return false;
		if (wcxmpwd == null) {
			if (other.wcxmpwd != null)
				return false;
		} else if (!wcxmpwd.equals(other.wcxmpwd))
			return false;
		if (wcxqq == null) {
			if (other.wcxqq != null)
				return false;
		} else if (!wcxqq.equals(other.wcxqq))
			return false;
		if (wcxwechat == null) {
			if (other.wcxwechat != null)
				return false;
		} else if (!wcxwechat.equals(other.wcxwechat))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Manager [wcxmid=" + wcxmid + ", wcxmname=" + wcxmname + ", wcxmpwd=" + wcxmpwd + ", wcxmemail="
				+ wcxmemail + ", wcxmalipay=" + wcxmalipay + ", wcxmpic=" + wcxmpic + ", wcxqq=" + wcxqq
				+ ", wcxwechat=" + wcxwechat + ", status=" + status + "]";
	}
	public Manager(int wcxmid, String wcxmname, String wcxmpwd, String wcxmemail, String wcxmalipay, String wcxmpic,
			String wcxqq, String wcxwechat, int status) {
		super();
		this.wcxmid = wcxmid;
		this.wcxmname = wcxmname;
		this.wcxmpwd = wcxmpwd;
		this.wcxmemail = wcxmemail;
		this.wcxmalipay = wcxmalipay;
		this.wcxmpic = wcxmpic;
		this.wcxqq = wcxqq;
		this.wcxwechat = wcxwechat;
		this.status = status;
	}
	public Manager() {
		super();
	}
	
	
}
