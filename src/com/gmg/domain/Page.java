package com.gmg.domain;

public class Page {
	private int pageindex;
	private int pagenum;

	public Page(int pageindex, int pagenum) {
		this.pageindex = (pageindex-1)*pagenum;
		this.pagenum = pagenum;
	}

	public int getPageindex() {
		return pageindex;
	}

	public void setPageindex(int pageindex) {
		this.pageindex = pageindex;
	}

	public int getPagenum() {
		return pagenum;
	}

	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}

}
