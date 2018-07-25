package com.jk.model;

import java.io.Serializable;


public class Address implements Serializable{


	private static final long serialVersionUID = 228544859077183393L;


	private String addid;                  //地址id

	private String addname;					//联系人姓名

	private String addphone;				//手机号

	private String addprovince;				//省

	private String addcity;					//市

	private String addcounty;				//县

	private String introduction;            //详细收货地址

	private String adddefault;				//是否默认 ：1 是，2否

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getAddid() {
		return addid;
	}

	public void setAddid(String addid) {
		this.addid = addid;
	}

	public String getAddname() {
		return addname;
	}

	public void setAddname(String addname) {
		this.addname = addname;
	}

	public String getAddphone() {
		return addphone;
	}

	public void setAddphone(String addphone) {
		this.addphone = addphone;
	}

	public String getAddprovince() {
		return addprovince;
	}

	public void setAddprovince(String addprovince) {
		this.addprovince = addprovince;
	}

	public String getAddcity() {
		return addcity;
	}

	public void setAddcity(String addcity) {
		this.addcity = addcity;
	}

	public String getAddcounty() {
		return addcounty;
	}

	public void setAddcounty(String addcounty) {
		this.addcounty = addcounty;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getAdddefault() {
		return adddefault;
	}

	public void setAdddefault(String adddefault) {
		this.adddefault = adddefault;
	}

	@Override
	public String toString() {
		return "Address{" +
				"addid='" + addid + '\'' +
				", addname='" + addname + '\'' +
				", addphone='" + addphone + '\'' +
				", addprovince='" + addprovince + '\'' +
				", addcity='" + addcity + '\'' +
				", addcounty='" + addcounty + '\'' +
				", introduction='" + introduction + '\'' +
				", adddefault='" + adddefault + '\'' +
				'}';
	}
}
