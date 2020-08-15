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
package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;


import com.dao.DB;
import com.orm.TAdmin;
import com.orm.Tbanji;
import com.orm.Tstu;
import com.orm.Ttea;

public class loginService
{
	public String login(String userName,String userPw,int userType)
	{
		try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String result="no";
		
		if(userType==0)//系统管理员登陆
		{
			String sql="select * from t_admin where userName=? and userPw=?";
			Object[] params={userName,userPw};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			try 
			{
				ResultSet rs=mydb.getRs();
				boolean mark=(rs==null||!rs.next()?false:true);
				if(mark==false)
				{
					 result="no";
				}
				else
				{
					 result="yes";
					 TAdmin admin=new TAdmin();
					 admin.setUserId(rs.getInt("userId"));
					 admin.setUserName(rs.getString("userName"));
					 admin.setUserPw(rs.getString("userPw"));
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 session.setAttribute("userType", 0);
		             session.setAttribute("admin", admin);
				}
				rs.close();
			} 
			catch (SQLException e)
			{
				System.out.println("登录失败！");
				e.printStackTrace();
			}
			finally
			{
				mydb.closed();
			}
			
		}
		
		
		if(userType==1)
		{
			String sql="select * from t_tea where bianhao=? and loginpw=?";
			Object[] params={userName,userPw};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			try 
			{
				ResultSet rs=mydb.getRs();
				boolean mark=(rs==null||!rs.next()?false:true);
				if(mark==false)
				{
					 result="no";
				}
				else
				{
					 result="yes";
					 
					 Ttea tea=new Ttea();
				     tea.setId(rs.getInt("id"));
					 tea.setBianhao(rs.getString("bianhao"));
					 tea.setName(rs.getString("name"));
					 tea.setSex(rs.getString("sex"));
					 tea.setAge(rs.getString("age"));
					 tea.setLoginpw(rs.getString("loginpw"));
						
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 session.setAttribute("userType", 1);
		             session.setAttribute("tea", tea);
				}
				rs.close();
			} 
			catch (SQLException e)
			{
				System.out.println("登录失败！");
				e.printStackTrace();
			}
			finally
			{
				mydb.closed();
			}
		}
		if(userType==2)
		{
			String sql="select * from t_stu where xuehao=? and loginpw=?";
			Object[] params={userName,userPw};
			DB mydb=new DB();
			mydb.doPstm(sql, params);
			try 
			{
				ResultSet rs=mydb.getRs();
				boolean mark=(rs==null||!rs.next()?false:true);
				if(mark==false)
				{
					 result="no";
				}
				else
				{
					 result="yes";
					 
					 Tstu stu=new Tstu();
					 stu.setId(rs.getInt("id"));
					 stu.setXuehao(rs.getString("xuehao"));
					 stu.setName1(rs.getString("name1"));
					 stu.setSex(rs.getString("sex"));
					 stu.setAge(rs.getString("age"));
					 stu.setBanji_id(rs.getInt("banji_id"));
					 stu.setLoginpw(rs.getString("loginpw"));
						
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 session.setAttribute("userType", 2);
		             session.setAttribute("stu", stu);
				}
				rs.close();
			} 
			catch (SQLException e)
			{
				System.out.println("登录失败！");
				e.printStackTrace();
			}
			finally
			{
				mydb.closed();
			}
		}
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		
		String sql="update t_admin set userPw=? where userId=?";
		Object[] params={userPwNew,admin.getUserId()};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		
		return "yes";
    }
    
    
    public List banjiAll()
    {
    	try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
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
		return banjiList;
    }


    public List stuAll()
    {
    	try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	List stuList=new ArrayList();
		String sql="select * from t_stu where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tstu stu=new Tstu();
				stu.setId(rs.getInt("id"));
				stu.setXuehao(rs.getString("xuehao"));
				stuList.add(stu);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return stuList;
    }

    
    public List teaAll()
    {
    	try
		{
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	List teaList=new ArrayList();
		String sql="select * from t_tea where del='no'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Ttea tea=new Ttea();
				tea.setId(rs.getInt("id"));
				tea.setName(rs.getString("name"));
				teaList.add(tea);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return teaList;
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
