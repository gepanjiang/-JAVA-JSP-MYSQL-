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
<%@ page isELIgnored="false" %> 

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
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 var userPwReal="${sessionScope.admin.userPw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("åŸå¯†ç ä¸æ­£ç¡®");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("æ–°å¯†ç ä¸èƒ½ç©º");
                     return ;
                 }
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
                 {
                     alert("ä¸¤æ¬¡è¾“å…¥çš„å¯†ç ä¸ä¸€è‡´");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("ä¿®æ”¹æˆåŠŸ");
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">
			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				<tr bgcolor="#EEF4EA">
				    <td colspan="2" background="<%=path %>/img/wbg.gif" class='title'><span>å¯†ç ä¿®æ”¹</span></td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         ç™»å½•åï¼š
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        åŸå¯†ç ï¼š
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="password" name="userPw" id="userPw" size="22"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         æ–°å¯†ç ï¼š
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        <input type="password" id="userPw1" name="userPw1" size="22"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        ç¡®è®¤å¯†ç ï¼š
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				           <input type="password" name="userPw2" id="userPw2" size="22"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        &nbsp;
				    </td>
			        <td width="75%" bgcolor="#FFFFFF">
			             <input type="button" value="ä¿®æ”¹" onclick="check()"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="é‡ç½®"/>
			             <img id="indicator" src="<%=path %>/img/loading.gif" alt="Loading..." style="display:none"/>
			        </td>
				</tr>
			</table>
			</form>
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
