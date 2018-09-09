package com.wcx.bean;

import java.io.Serializable;

/**
 * 
 * 红包表
 * @author JJF
 *
 */
public class RedPacket  implements Serializable{
	private static final long serialVersionUID = 6902233956038723631L;
	private int wcxrid;           //红包id
	private int wcxuid;     //用户id
    private int  wcxsid;     //调查表id
    private int wcxmoney;        //金额
    private int wcxnumber;        //数量
    private int wcxtype;           //类型
    private String wcxname;       //name（发送者名称）
    
	@Override
	public String toString() {
		return "RedPacket [wcxrid=" + wcxrid + ", wcxuid=" + wcxuid + ", wcxsid=" + wcxsid + ", wcxmoney=" + wcxmoney
				+ ", wcxnumber=" + wcxnumber + ", wcxtype=" + wcxtype + ", wcxname=" + wcxname + "]";
	}

	public RedPacket() {
		super();
	}

	public RedPacket(int wcxrid, int wcxuid, int wcxsid, int wcxmoney, int wcxnumber, int wcxtype, String wcxname) {
		super();
		this.wcxrid = wcxrid;
		this.wcxuid = wcxuid;
		this.wcxsid = wcxsid;
		this.wcxmoney = wcxmoney;
		this.wcxnumber = wcxnumber;
		this.wcxtype = wcxtype;
		this.wcxname = wcxname;
	}

	public int getWcxrid() {
		return wcxrid;
	}

	public void setWcxrid(int wcxrid) {
		this.wcxrid = wcxrid;
	}

	public int getWcxuid() {
		return wcxuid;
	}

	public void setWcxuid(int wcxuid) {
		this.wcxuid = wcxuid;
	}

	public int getWcxsid() {
		return wcxsid;
	}

	public void setWcxsid(int wcxsid) {
		this.wcxsid = wcxsid;
	}

	public int getWcxmoney() {
		return wcxmoney;
	}

	public void setWcxmoney(int wcxmoney) {
		this.wcxmoney = wcxmoney;
	}

	public int getWcxnumber() {
		return wcxnumber;
	}

	public void setWcxnumber(int wcxnumber) {
		this.wcxnumber = wcxnumber;
	}

	public int getWcxtype() {
		return wcxtype;
	}

	public void setWcxtype(int wcxtype) {
		this.wcxtype = wcxtype;
	}

	public String getWcxname() {
		return wcxname;
	}

	public void setWcxname(String wcxname) {
		this.wcxname = wcxname;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + wcxmoney;
		result = prime * result + ((wcxname == null) ? 0 : wcxname.hashCode());
		result = prime * result + wcxnumber;
		result = prime * result + wcxrid;
		result = prime * result + wcxsid;
		result = prime * result + wcxtype;
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
		RedPacket other = (RedPacket) obj;
		if (wcxmoney != other.wcxmoney)
			return false;
		if (wcxname == null) {
			if (other.wcxname != null)
				return false;
		} else if (!wcxname.equals(other.wcxname))
			return false;
		if (wcxnumber != other.wcxnumber)
			return false;
		if (wcxrid != other.wcxrid)
			return false;
		if (wcxsid != other.wcxsid)
			return false;
		if (wcxtype != other.wcxtype)
			return false;
		if (wcxuid != other.wcxuid)
			return false;
		return true;
	}
}
