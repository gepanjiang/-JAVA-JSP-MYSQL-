//-------------------------�������QQ��ȡ�������� ID:2000--------------------------
//-----------------�������,�������ص�ַ: www.wisdomdd.cn-------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------�������QQ��ȡ��������----------------------------
//-------------------------�������QQ��ȡ�������� ID:2000--------------------------
//-----------------�������,�������ص�ַ: www.wisdomdd.cn-------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------�������QQ��ȡ��������----------------------------
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
import com.orm.Tbanji;
import com.service.liuService;

public class banji_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("banjiMana"))
		{
			banjiMana(req, res);
		}
		if(type.endsWith("banjiAdd"))
		{
			banjiAdd(req, res);
		}
		if(type.endsWith("banjiDel"))
		{
			banjiDel(req, res);
		}
	}
	
	
	public void banjiAdd(HttpServletRequest req,HttpServletResponse res)
	{
		String name=req.getParameter("name");
		String del="no";
		String sql="insert into t_banji(`name`,`del`) values(?,?)";
		Object[] params={name,del};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "�����ɹ�");
		req.setAttribute("path", "banji?type=banjiMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}
	
	public void banjiDel(HttpServletRequest req,HttpServletResponse res)
	{
		String sql="update t_banji set del='yes' where id="+Integer.parseInt(req.getParameter("id"));
		Object[] params={};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("message", "�����ɹ�");
		req.setAttribute("path", "banji?type=banjiMana");
		
        String targetURL = "/common/success.jsp";
		dispatch(targetURL, req, res);
	}

	public void banjiMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		List banjiList=new ArrayList();
		String sql="select * from t_banji where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tbanji banji=new Tbanji();
				banji.setId(rs.getInt("id"));
				banji.setName(rs.getString("name"));
				banjiList.add(banji);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		req.setAttribute("banjiList", banjiList);
		req.getRequestDispatcher("admin/banji/banjiMana.jsp").forward(req, res);
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
//-------------------------�������QQ��ȡ�������� ID:2000--------------------------
//-----------------�������,�������ص�ַ: www.wisdomdd.cn-------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------�������QQ��ȡ��������----------------------------
//-------------------------�������QQ��ȡ�������� ID:2000--------------------------
//-----------------�������,�������ص�ַ: www.wisdomdd.cn-------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------����QQ: 549710689-----------------------------
//-------------------------�������QQ��ȡ��������----------------------------
