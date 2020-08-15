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
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript">
         function admin()
         {
            var url="<%=path %>/login.jsp";
            window.open(url,"_blank");
         } 
                  
         function zuoyestu_tijiao()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("è¯·å…ˆç™»å½•");
            </c:if>
            <c:if test="${sessionScope.user!=null && sessionScope.user.type==2}">
                  var url="<%=path %>/qiantai/zuoyestu/zuoyestu_tijiao.jsp";
                  window.location.href=url;
            </c:if>
         }
         
         function zuoyestu_mine()
         {
            <c:if test="${sessionScope.user==null}">
                  alert("è¯·å…ˆç™»å½•");
            </c:if>
            <c:if test="${sessionScope.user!=null && sessionScope.user.type==2}">
                  var url="<%=path %>/zuoyestu?type=zuoyestu_mine";
                  window.location.href=url;
            </c:if>
         }
         
         
         function liuyanAll()
         {
            <c:if test="${sessionScope.userType==null}">
                  alert("è¯·å…ˆç™»å½•");
            </c:if>
            
            <c:if test="${sessionScope.userType!=null}">
                var url="<%=path %>/liuyan?type=liuyanAll";
				var targetWinName="newWin";
				var features="width="+screen.width-200+" ,height="+screen.height-150+" ,toolbar=no, top=0, left=0, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
				var new_win=window.open(url,targetWinName,features);
            </c:if>
         } 
      </script>
  </head>
  
  <body>
       <A  href="<%=path %>/qiantai/default.jsp">é¦– é¡µ</A> &nbsp;&nbsp;
       
       <c:if test="${sessionScope.userType!=null && sessionScope.userType==1}">
       <a href="<%=path %>/qiantai/zuoye/zuoye_fabu.jsp">å‘å¸ƒä½œä¸š</A> &nbsp;&nbsp;
       <a href="<%=path %>/zuoye?type=zuoye_mana">ä½œä¸šç®¡ç†</A> &nbsp;&nbsp;
       <a href="<%=path %>/zuoyestu?type=zuoyestu_all">æ‰¹é˜…ä½œä¸š</A> &nbsp;&nbsp;
       </c:if>
       
       
       <c:if test="${sessionScope.userType!=null && sessionScope.userType==2}">
       <a href="<%=path %>/zuoye?type=zuoye_all">ä¸‹è½½ä½œä¸š</A> &nbsp;&nbsp;
       <a href="<%=path %>/zuoyestu?type=zuoyestu_mime">æˆ‘çš„ä½œä¸š</A> &nbsp;&nbsp;
       <a href="<%=path %>/qiantai/zuoyestu/zuoyestu_tijiao.jsp">æäº¤ä½œä¸š</A> &nbsp;&nbsp;
       </c:if>
       
       <A href="<%=path %>/doc?type=docAll">æ•™å­¦èµ„æ–™</A> &nbsp;&nbsp;
       <a href="#" onclick="liuyanAll()">ç½‘ç«™ç•™è¨€æ¿</A> &nbsp;&nbsp;
	   <a href="#" onclick="admin()">åå°ç®¡ç†</a> &nbsp;&nbsp;
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
