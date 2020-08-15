<!---------------------------è¯·åŠ ä¸‹é¢QQè·å–å®Œæ•´ä»£ç  ID:2000---------------------------->
<!-------------------æ›´å¤šæ¯•è®¾,è¯¾è®¾ä¸‹è½½åœ°å€: www.wisdomdd.cn--------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQè·å–å®Œæ•´ä»£ç ----------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë ID:2000---------------------------->
<!-------------------¸ü¶à±ÏÉè,¿ÎÉèÏÂÔØµØÖ·: www.wisdomdd.cn--------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë----------------------------->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	<script type="text/javascript">
	        function check()
			{                                                                                         
			     if(document.ThisForm.userName.value=="")
				 {
				 	alert("è¯·è¾“å…¥ç”¨æˆ·å");
					return false;
				 }
				 if(document.ThisForm.userPw.value=="")
				 {
				 	alert("è¯·è¾“å…¥å¯†ç ");
					return false;
				 }
				 document.getElementById("indicator").style.display="block";
				 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
			}
		
			function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("ç”¨æˆ·åæˆ–å¯†ç é”™è¯¯");
			    }
			    if(data=="yes")
			    {   alert("ç™»é™†æˆåŠŸ");
			        window.location.reload();
			    }
			    
			}
	</script>
  </head>
  
  <body>
       <c:if test="${sessionScope.userType==null}">
			<form action="<%=path %>/user?type=userLogin" name="ThisForm" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10">æ•™å¸ˆç”¨æ•™å¸ˆå·ç™»é™†(å­¦ç”Ÿç”¨å­¦å·ç™»é™†)</td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="9"></td>
			          </tr>
			          <tr>
			            <td align="right" width="31%" height="30" style="font-size: 11px;">ç”¨æˆ·åï¼š</td>
			            <td align="left" width="69%"><input class="input" title="ç”¨æˆ·åä¸èƒ½ä¸ºç©º" size="14" name="userName" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">å¯†ã€€ç ï¼š</td>
			            <td align="left"><input class="input" title="å¯†ç ä¸èƒ½ä¸ºç©º" type="password" size="16" name="userPw"/></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">èº«ã€€ä»½ï¼š</td>
			            <td align="left">
                           <select name="userType" style="width: 70px">
                               <option value="1">è€å¸ˆ</option>
                               <option value="2">å­¦ç”Ÿ</option>
                           </select>
                           <input type="button" value="ç™»  å½•" onclick="check()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />
			               <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
                        </td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="10">
			            </td>
			          </tr>
			      </table>
		    </form>
		    </c:if>
			<c:if test="${sessionScope.userType!=null && sessionScope.userType==1}">
			    <br/>
			     æ¬¢è¿æ‚¨ï¼š${sessionScope.tea.name }(è€å¸ˆ) &nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="<%=path %>/stu?type=logout">å®‰å…¨é€€å‡º</a> &nbsp;&nbsp;&nbsp;&nbsp;
			    <br/><br/><br/>
			</c:if>
			
			<c:if test="${sessionScope.userType!=null && sessionScope.userType==2}">
			    <br/>
			     æ¬¢è¿æ‚¨ï¼š${sessionScope.stu.name1 }(å­¦ç”Ÿ) &nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="<%=path %>/stu?type=logout">å®‰å…¨é€€å‡º</a> &nbsp;&nbsp;&nbsp;&nbsp;
			    <br/><br/><br/>
			</c:if>
  </body>
</html>
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë ID:2000---------------------------->
<!-------------------¸ü¶à±ÏÉè,¿ÎÉèÏÂÔØµØÖ·: www.wisdomdd.cn--------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------×÷ÕßQQ: 549710689------------------------------->
<!---------------------------Çë¼ÓÏÂÃæQQ»ñÈ¡ÍêÕû´úÂë----------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQè·å–å®Œæ•´ä»£ç  ID:2000---------------------------->
<!-------------------æ›´å¤šæ¯•è®¾,è¯¾è®¾ä¸‹è½½åœ°å€: www.wisdomdd.cn--------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------ä½œè€…QQ: 549710689------------------------------->
<!---------------------------è¯·åŠ ä¸‹é¢QQè·å–å®Œæ•´ä»£ç ----------------------------->
