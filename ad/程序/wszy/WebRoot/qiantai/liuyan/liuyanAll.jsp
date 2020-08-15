<!---------------------------è¯·åŠ ä¸‹é¢QQèŽ·å–å®Œæ•´ä»£ç  ID:2000---------------------------->
<!-------------------æ›´å¤šæ¯•è®¾,è¯¾è®¾ä¸‹è½½åœ°å€: www.wisdomdd.cn--------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQèŽ·å–å®Œæ•´ä»£ç ----------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë ID:2000---------------------------->
<!-------------------¸ü¶à±ÏÉè,¿ÎÉèÏÂÔØµØÖ·: www.wisdomdd.cn--------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë----------------------------->
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=path%>/css/woncore.css" type="text/css"></link>
	</head>

	<BODY>
    <div class="body-box">
		<TABLE cellSpacing=1 cellPadding=4 width="100%" border=0>
			<c:forEach items="${requestScope.liuyanList}" var="liuyan">
			    <TR>
				<TD>
					<TABLE class=tpt width="100%" border=0>
						<TBODY>
							<TR bgColor=#cccccc>
								<TD align=middle width="10%">
									<STRONG>ç•™è¨€äººï¼š</STRONG>
								</TD>
								<TD width="47%">
									<FONT color=#000000>&nbsp;</FONT>
								</TD>
								<TD align=middle width="14%">
									<STRONG>ç•™è¨€æ—¶é—´ï¼š</STRONG>
								</TD>
								<TD width="29%">
									<FONT color=#000000>&nbsp;<c:out value="${liuyan.shijian}"/></FONT>
								</TD>
							</TR>
							<TR>
								<TD align=middle>
									<STRONG>æ ‡é¢˜ï¼š</STRONG>
								</TD>
								<TD colSpan=3>
									<FONT color=#000000>&nbsp;<c:out value="${liuyan.title}"/></FONT>
								</TD>
							</TR>
							<TR>
								<TD vAlign=top align=middle>
									<STRONG>å†…å®¹ï¼š</STRONG>
								</TD>
								<TD colSpan=3>
									<c:out value="${liuyan.content}" escapeXml="false"/>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
			</c:forEach>
		</TABLE>
		<BR>
		<form action="<%=path %>/liuyan?type=liuyanAdd" name="fr" method="post">
		<table border="0">
		     <tr>
		         <td style="font-size: 11px;">æ ‡é¢˜</td>
		         <td><input type="text" name="title" size="50"/></td>
		     </tr>
		     <tr>
		         <td style="font-size: 11px;">å†…å®¹</td>
		         <td>
		              <FCK:editor instanceName="content"  basePath="/fckeditor" width="500" height="200" value="è¯·è¾“å…¥å†…å®¹" toolbarSet="Basic">
                      </FCK:editor>
                 </td>
		     </tr>
		     <tr>
		         <td style="font-size: 11px;">&nbsp;</td>
		         <td>
		             <input type="submit" name="" value="æäº¤ç•™è¨€">
                 </td>
		     </tr>
		</table>
		</form>
	</div>
	</BODY>
</html>
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë ID:2000---------------------------->
<!-------------------¸ü¶à±ÏÉè,¿ÎÉèÏÂÔØµØÖ·: www.wisdomdd.cn--------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë----------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQèŽ·å–å®Œæ•´ä»£ç  ID:2000---------------------------->
<!-------------------æ›´å¤šæ¯•è®¾,è¯¾è®¾ä¸‹è½½åœ°å€: www.wisdomdd.cn--------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQèŽ·å–å®Œæ•´ä»£ç ----------------------------->
