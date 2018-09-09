package com.wcx.bean;

import java.io.Serializable;

/**
 * 红包中奖名单表
 * @author JJF
 *
 */
public class WinningList  implements Serializable{
	private static final long serialVersionUID = -845934876358778781L;
	private int wcxlistid;       //红包id
	private int wcxlistuserid;		 //中奖名单
	
	@Override
	public String toString() {
		return "WinningList [wcxlistid=" + wcxlistid + ", wcxlistuserid=" + wcxlistuserid + "]";
	}

	public WinningList() {
		super();
	}

	public WinningList(int wcxlistid, int wcxlistuserid) {
		super();
		this.wcxlistid = wcxlistid;
		this.wcxlistuserid = wcxlistuserid;
	}

	public int getWcxlistid() {
		return wcxlistid;
	}

	public void setWcxlistid(int wcxlistid) {
		this.wcxlistid = wcxlistid;
	}

	public int getWcxlistuserid() {
		return wcxlistuserid;
	}

	public void setWcxlistuserid(int wcxlistuserid) {
		this.wcxlistuserid = wcxlistuserid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + wcxlistid;
		result = prime * result + wcxlistuserid;
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
		WinningList other = (WinningList) obj;
		if (wcxlistid != other.wcxlistid)
			return false;
		if (wcxlistuserid != other.wcxlistuserid)
			return false;
		return true;
	}
}
