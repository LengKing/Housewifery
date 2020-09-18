package com.cykj.housewifery.bean;



import java.util.List;

/**
 * layui表格的实体类
 */

public class LayuiData
{
	//返回码 0成功
	private int code;
	//返回提示信息 可以省略
	private String msg = "";
	//数据总数
	private int count;
	//当前页数据
	private List<?> data;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<?> getData() {
		return data;
	}

	public void setData(List<?> data) {
		this.data = data;
	}


}
