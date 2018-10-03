package com.justa.common.utils;

import java.io.Serializable;
import java.util.List;

/**
 * @Author bootdo 1992lcg@163.com
 */
public class PageUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	private int total;
	private int currentPage;
	private List<?> rows;

	public PageUtils(List<?> list, int total) {
		this.rows = list;
		this.total = total;
	}
	
	public PageUtils(List<?> list, int total,int currentPage) {
		this.rows = list;
		this.total = total;
		this.currentPage = currentPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

}
