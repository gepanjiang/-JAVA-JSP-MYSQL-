<!---------------------------请加下面QQ获取完整代码 ID:2000---------------------------->
<!-------------------更多毕设,课设下载地址: www.wisdomdd.cn--------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------请加下面QQ获取完整代码----------------------------->
<!---------------------------�������QQ��ȡ�������� ID:2000---------------------------->
<!-------------------�������,�������ص�ַ: www.wisdomdd.cn--------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------�������QQ��ȡ��������----------------------------->
<%@ page language="java" pageEncoding="UTF-8"%>
<jsp:directive.page import="java.util.Date"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
            function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/doc?type=docAdd" name="formAdd" method="post">
				     <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="3" background="<%=path %>/img/tbg.gif">&nbsp;教学资料管理&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        名称：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="title" size="50"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        附件：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
						        <input type="button" value="上传" onclick="up()"/>
						        <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        介绍：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <FCK:editor instanceName="content"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
	                            </FCK:editor>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        发布时间：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="shijian" value="<%=new Date().toLocaleString()%>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
<!---------------------------�������QQ��ȡ�������� ID:2000---------------------------->
<!-------------------�������,�������ص�ַ: www.wisdomdd.cn--------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------����QQ: 549710689------------------------------->
<!---------------------------�������QQ��ȡ��������----------------------------->
<!---------------------------请加下面QQ获取完整代码 ID:2000---------------------------->
<!-------------------更多毕设,课设下载地址: www.wisdomdd.cn--------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------作者QQ: 549710689------------------------------->
<!---------------------------请加下面QQ获取完整代码----------------------------->
