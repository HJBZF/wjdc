package com.wcx.bean;

import java.io.Serializable;

/**
 * 内容表
 * @author JJF
 *
 */
public class Content  implements Serializable{
	private static final long serialVersionUID = -1137204906242934121L;
	private int wcxcid;		//内容id
	private String wcxctitle;	//题目
    private int wcxcsid;			//调查表id
    private int wcxcflag;              //状态
    
	@Override
	public String toString() {
		return "Content [wcxcid=" + wcxcid + ", wcxctitle=" + wcxctitle + ", wcxcsid=" + wcxcsid + ", wcxcflag="
				+ wcxcflag + "]";
	}

	public Content() {
		super();
	}

	public Content(int wcxcid, String wcxctitle, int wcxcsid, int wcxcflag) {
		super();
		this.wcxcid = wcxcid;
		this.wcxctitle = wcxctitle;
		this.wcxcsid = wcxcsid;
		this.wcxcflag = wcxcflag;
	}

	public int getWcxcid() {
		return wcxcid;
	}

	public void setWcxcid(int wcxcid) {
		this.wcxcid = wcxcid;
	}

	public String getWcxctitle() {
		return wcxctitle;
	}

	public void setWcxctitle(String wcxctitle) {
		this.wcxctitle = wcxctitle;
	}

	public int getWcxcsid() {
		return wcxcsid;
	}

	public void setWcxcsid(int wcxcsid) {
		this.wcxcsid = wcxcsid;
	}

	public int getWcxcflag() {
		return wcxcflag;
	}

	public void setWcxcflag(int wcxcflag) {
		this.wcxcflag = wcxcflag;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + wcxcflag;
		result = prime * result + wcxcid;
		result = prime * result + wcxcsid;
		result = prime * result + ((wcxctitle == null) ? 0 : wcxctitle.hashCode());
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
		Content other = (Content) obj;
		if (wcxcflag != other.wcxcflag)
			return false;
		if (wcxcid != other.wcxcid)
			return false;
		if (wcxcsid != other.wcxcsid)
			return false;
		if (wcxctitle == null) {
			if (other.wcxctitle != null)
				return false;
		} else if (!wcxctitle.equals(other.wcxctitle))
			return false;
		return true;
	}
}
