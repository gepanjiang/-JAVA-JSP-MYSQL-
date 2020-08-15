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
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="java.util.*" %>
<%
    String[] weekdays={"","æ—¥","ä¸€","äºŒ","ä¸‰","å››","äº”","å…­"};
    String[] days=new String[42];
    for(int i=0;i<42;i++)
    	days[i]="";

    GregorianCalendar currentDay = new GregorianCalendar();
    int year= currentDay.get(Calendar.YEAR);
    int month=currentDay.get(Calendar.MONTH);
    int today=currentDay.get(Calendar.DAY_OF_MONTH);
    int weekday=currentDay.get(Calendar.DAY_OF_WEEK);
    
    String now=year+"å¹´"+(month+1)+"æœˆ"+today+"æ—¥"+" æ˜ŸæœŸ"+weekdays[weekday];
    
    Calendar thisMonth=Calendar.getInstance();
    thisMonth.set(Calendar.MONTH, month );
    thisMonth.set(Calendar.YEAR, year );
    thisMonth.setFirstDayOfWeek(Calendar.SUNDAY);
    thisMonth.set(Calendar.DAY_OF_MONTH,1);
    
    int firstIndex=thisMonth.get(Calendar.DAY_OF_WEEK)-1;
    int maxIndex=thisMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
    for(int i=0;i<maxIndex;i++){
        days[firstIndex+i]=String.valueOf(i+1);
    }
%>

<html>
    <head>
      <title></title>
      <script type="text/javascript">
        function showTime(showWhere){
            var now=new Date();
	        var hour=now.getHours();
	        var minu=now.getMinutes();
	        var sec=now.getSeconds();
         
            if(hour<10) hour="0"+hour;
         	if(minu<10) minu="0"+minu;
         	if(sec<10) sec="0"+sec;
         	
         	showWhere.value=hour+":"+minu+":"+sec;
            setTimeout("showTime(time)",1000)
        }
      </script>
    </head>
    <body onload="showTime(time)">
        <table width="210" border="0" align="center" cellspacing="1">            
            <tr height="25" bgcolor="#F0F0F0" align="center" style="font-size: 12px;">
                <td style="border:1 solid">æ—¥</td>
                <td style="border:1 solid">ä¸€</td>
                <td style="border:1 solid">äºŒ</td>
                <td style="border:1 solid">ä¸‰</td>
                <td style="border:1 solid">å››</td>
                <td style="border:1 solid">äº”</td>
                <td style="border:1 solid">å…­</td>
            </tr>
            <tr height="4"><td colspan="7"></td></tr>
            <% for(int j=0;j<6;j++) { %>
            <tr style="font-size: 12px;">
                <% 
                  for(int i=j*7;i<(j+1)*7;i++) { 
                      if((i-firstIndex+1)==today){%>    
                      <td width="30" height="23" align="center" bgcolor="gray" style="border:1 solid"><font color="#FFFFFF"><b><%=days[i]%></b></font></td>
                <%    }else{ %>
                      <td width="30" height="23" align="center" style="border:1 solid"><%=days[i]%></td>
                <%    }
                  }%>
            </tr>
            <% } %>
        </table>
    </body>
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
