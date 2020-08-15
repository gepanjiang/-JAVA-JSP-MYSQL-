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
import com.orm.Tstu;
import com.service.liuService;

public class stu_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("stuAdd"))
		{
			stuAdd(req, res);
		}
		if(type.endsWith("stuDel"))
		{
			stuDel(req, res);
		}
		if(type.endsWith("stuMana"))
		{
			stuMana(req, res);
		}
		if(type.endsWith("stuAll"))
		{
			stuAll(req, res);
		}
		if(type.endsWith("logout"))
		{
			logout(req, res);
		}
	}
	
	
	public void stuAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String xuehao=req.getParameter("xuehao");
		String name1=req.getParameter("name1");
		String sex=req.getParameter("sex");
		String age=req.getParameter("age");
		int banji_id=Integer.parseInt(req.getParameter("banji_id"));
		String loginpw=req.getParameter("loginpw");
		String del="no";
		
		
		String sql="insert into t_stu(`xuehao`,`name1`,`sex`,`age`,`banji_id`,`loginpw`,`del`) values(?,?,?,?,?,?,?)";
		Object[] params={xuehao,name1,sex,age,banji_id,loginpw,del};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "操作成功");
		req.setAttribute("path", "stu?type=stuMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	public void stuDel(HttpServletRequest req,HttpServletResponse res)
	{

	}

	public void stuMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		
	}
	
	public void stuAll(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		
	}
	
	public void logout(HttpServletRequest req,HttpServletResponse res)
	{
		req.getSession().setAttribute("userType", null);
		String targetURL = "/qiantai/default.jsp";
		dispatch(targetURL, req, res);		
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
