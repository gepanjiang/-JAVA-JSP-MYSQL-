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
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.Ttea;
import com.orm.Tzuoye;
import com.service.liuService;

public class zuoye_servlet  extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
	}
	
	
	public void zuoye_fabu(HttpServletRequest req,HttpServletResponse res)
	{
		Ttea tea=(Ttea)req.getSession().getAttribute("tea");
		
		String mingcheng=req.getParameter("mingcheng");
		String fujian=req.getParameter("fujian");
		String fujianYuanshiming=req.getParameter("fujianYuanshiming");
		
		String shijian=new Date().toLocaleString();
		int tea_id=tea.getId();
		
		
		String sql="insert into t_zuoye(`mingcheng`,`fujian`,`fujianYuanshiming`,`shijian`,`tea_id`) values(?,?,?,?,?)";
		Object[] params={mingcheng,fujian,fujianYuanshiming,shijian,tea_id};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "作业发布完毕");
		String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
        
	}
	
	
	public void zuoye_del(HttpServletRequest req,HttpServletResponse res)
	{
		String sql="delete from t_zuoye where id=?";
		Object[] params={Integer.parseInt(req.getParameter("id"))};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "作业删除完毕");
		String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}

	public void zuoye_mana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
	}
	
	
	public void zuoye_all(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
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
