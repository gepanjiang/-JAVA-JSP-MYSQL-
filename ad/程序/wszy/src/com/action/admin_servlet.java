//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.TAdmin;

public class admin_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("adminMana"))
		{
			adminMana(req, res);
		}
		if(type.endsWith("adminAdd"))
		{
			adminAdd(req, res);
		}
		if(type.endsWith("adminDel"))
		{
			adminDel(req, res);
		}
	}
	
	public void adminMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
	
	}
	public void adminAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String userName=req.getParameter("userName");
		String userPw=req.getParameter("userPw");
		String sql="insert into t_admin(`userName`,`userPw`) values(?,?)";
		Object[] params={userName,userPw};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "admin?type=adminMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	public void adminDel(HttpServletRequest req,HttpServletResponse res)
	{
	}

	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
