<!---------------------------ËØ∑Âä†‰∏ãÈù¢QQËé∑ÂèñÂÆåÊï¥‰ª£Á†Å ID:2000---------------------------->
<!-------------------Êõ¥Â§öÊØïËÆæ,ËØæËÆæ‰∏ãËΩΩÂú∞ÂùÄ: www.wisdomdd.cn--------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------ËØ∑Âä†‰∏ãÈù¢QQËé∑ÂèñÂÆåÊï¥‰ª£Á†Å----------------------------->
<!---------------------------«Îº”œ¬√ÊQQªÒ»°ÕÍ’˚¥˙¬Î ID:2000---------------------------->
<!-------------------∏¸∂‡±œ…Ë,øŒ…Ëœ¬‘ÿµÿ÷∑: www.wisdomdd.cn--------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------«Îº”œ¬√ÊQQªÒ»°ÕÍ’˚¥˙¬Î----------------------------->
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {font-size: 12px}
		.STYLE2 {
			color: #03515d;
			font-size: 12px;
		}
		-->
		a:link {font-size:12px; text-decoration:none; color:#000000;}
		a:visited {font-size:12px; text-decoration:none; color:#000000;}
		a:hover {font-size:12px; text-decoration:none; color:#FF0000;}
		
		a.v1:link {font-size:12px; text-decoration:none; color:#03515d;}
		a.v1:visited {font-size:12px; text-decoration:none; color:#03515d;}
	</style>
	<script type="text/javascript">
	    function logout()
		{
		   if(confirm("Á°ÆÂÆöË¶ÅÈÄÄÂá∫Êú¨Á≥ªÁªüÂêó??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
	</script>
  </head>
  
  <body>
       <body>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="26" background="<%=path %>/img/main_03.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="227" height="26" background="<%=path %>/img/main_01.gif">
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
							<td width="60">
								<img src="<%=path %>/img/main_05.gif" width="60" height="26" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="64">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="55%" valign="top" height="64" background="<%=path %>/img/main_06.gif" nowrap="nowrap">
								<table>
								   <tr height="8"><td></td></tr>
								   <tr>
								      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								      <td>
								        <font style="font-size: 25px;font-weight: bolder;display: block;text-align: left">
										     ÁΩë‰∏ä‰Ωú‰∏öÊâπÊîπÁ≥ªÁªü
							            </font>
								      </td>
								   </tr>
								</table>
							</td>
							<td width="45%" valign="top" height="64" background="<%=path %>/img/main_066.gif" nowrap="nowrap">
								<table>
								   <tr height="8"><td></td></tr>
								   <tr>
								      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								      <td>
								        <div style="font-size: 18px;">
								             <c:if test="${sessionScope.userType==0}">
											    Ê¨¢ËøéÊÇ®ÔºöÁ≥ªÁªüÁÆ°ÁêÜÂëò
											 </c:if>
											 <c:if test="${sessionScope.userType==1}">
											    Ê¨¢ËøéÊÇ®Ôºö ${sessionScope.xiehui.name}
											 </c:if>
											 &nbsp;&nbsp;
											 <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>&nbsp;&nbsp;&nbsp;
								             <a href="#" style="font-size: 17px;" onclick="logout()">Ê≥®ÈîÄÁ≥ªÁªü</a>&nbsp;&nbsp;
								        </div>
								      </td>
								   </tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
  </body>
</html>
<!---------------------------«Îº”œ¬√ÊQQªÒ»°ÕÍ’˚¥˙¬Î ID:2000---------------------------->
<!-------------------∏¸∂‡±œ…Ë,øŒ…Ëœ¬‘ÿµÿ÷∑: www.wisdomdd.cn--------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------◊˜’ﬂQQ: 549710689------------------------------->
<!---------------------------«Îº”œ¬√ÊQQªÒ»°ÕÍ’˚¥˙¬Î----------------------------->
<!---------------------------ËØ∑Âä†‰∏ãÈù¢QQËé∑ÂèñÂÆåÊï¥‰ª£Á†Å ID:2000---------------------------->
<!-------------------Êõ¥Â§öÊØïËÆæ,ËØæËÆæ‰∏ãËΩΩÂú∞ÂùÄ: www.wisdomdd.cn--------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------‰ΩúËÄÖQQ: 549710689------------------------------->
<!---------------------------ËØ∑Âä†‰∏ãÈù¢QQËé∑ÂèñÂÆåÊï¥‰ª£Á†Å----------------------------->
