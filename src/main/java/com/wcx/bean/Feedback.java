package com.wcx.bean;

import java.io.Serializable;

/**
 * 用户反馈表
 * @author JJF
 *
 */
public class Feedback  implements Serializable{
	private static final long serialVersionUID = -1986379184993641452L;
	private int wcxfid;   //反馈表id
	private int wcxuid;   //用户id
    private String  wcxfcontent;            //反馈内容
    private int  wcxtid;             //模板分类id
    private int wcxstatus;                           //1:运行 2:暂停  3:
    
	@Override
	public String toString() {
		return "Feedback [wcxfid=" + wcxfid + ", wcxuid=" + wcxuid + ", wcxfcontent=" + wcxfcontent + ", wcxtid="
				+ wcxtid + ", wcxstatus=" + wcxstatus + "]";
	}

	public Feedback() {
		super();
	}

	public Feedback(int wcxfid, int wcxuid, String wcxfcontent, int wcxtid, int wcxstatus) {
		super();
		this.wcxfid = wcxfid;
		this.wcxuid = wcxuid;
		this.wcxfcontent = wcxfcontent;
		this.wcxtid = wcxtid;
		this.wcxstatus = wcxstatus;
	}

	public int getWcxfid() {
		return wcxfid;
	}

	public void setWcxfid(int wcxfid) {
		this.wcxfid = wcxfid;
	}

	public int getWcxuid() {
		return wcxuid;
	}

	public void setWcxuid(int wcxuid) {
		this.wcxuid = wcxuid;
	}

	public String getWcxfcontent() {
		return wcxfcontent;
	}

	public void setWcxfcontent(String wcxfcontent) {
		this.wcxfcontent = wcxfcontent;
	}

	public int getWcxtid() {
		return wcxtid;
	}

	public void setWcxtid(int wcxtid) {
		this.wcxtid = wcxtid;
	}

	public int getWcxstatus() {
		return wcxstatus;
	}

	public void setWcxstatus(int wcxstatus) {
		this.wcxstatus = wcxstatus;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((wcxfcontent == null) ? 0 : wcxfcontent.hashCode());
		result = prime * result + wcxfid;
		result = prime * result + wcxstatus;
		result = prime * result + wcxtid;
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
		Feedback other = (Feedback) obj;
		if (wcxfcontent == null) {
			if (other.wcxfcontent != null)
				return false;
		} else if (!wcxfcontent.equals(other.wcxfcontent))
			return false;
		if (wcxfid != other.wcxfid)
			return false;
		if (wcxstatus != other.wcxstatus)
			return false;
		if (wcxtid != other.wcxtid)
			return false;
		if (wcxuid != other.wcxuid)
			return false;
		return true;
	}
}
