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
        <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
        
        <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        <script language="javascript">
           var i=0;
           function banjiAll()
           {
               if(i==0)
               {
                   document.getElementById("indicator").style.display="block";
                   loginService.banjiAll(callback);
                   i=1;
               }
               
           }
           function callback(data)
           {
               document.getElementById("indicator").style.display="none";
               DWRUtil.addOptions("banji_id",data,"id","name");
           }
           
           function check()
           {
               if(document.formAdd.banji_id.value==0)
               { 
                   alert("ËØ∑ÈÄâÊã©Áè≠Á∫ß");
                   return false;
               }
               if(document.formAdd.xuehao.value=="")
               { 
                   alert("ËØ∑ËæìÂÖ•Â≠¶Âè∑");
                   return false;
               }
               return true;
           }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/stu?type=stuAdd" name="formAdd" method="post">
				     <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="9" background="<%=path %>/img/tbg.gif">&nbsp;Â≠¶ÁîüÁÆ°ÁêÜ&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         Â≠¶Âè∑Ôºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xuehao" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        ÂßìÂêçÔºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="name1" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        ÊÄßÂà´Ôºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="radio" name="sex" value="Áî∑" checked="checked"/>Áî∑
						         &nbsp;&nbsp;
						         <input type="radio" name="sex" value="Â•≥"/>Â•≥
						         
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        Âπ¥ÈæÑÔºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" value="" name="age" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Áè≠Á∫ßÔºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <table border="0">
							           <tr> 
							               <td>  
							                  <select name="banji_id" id="banji_id" onclick="banjiAll()">
									              <option value="0">ËØ∑ÈÄâÊã©Áè≠Á∫ß</option>
									          </select>
							               </td>
							               <td>
							                  <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
							               </td>
							           </tr>
							    </table>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        ÁôªÈôÜÂØÜÁ†ÅÔºö
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input name="loginpw" value="000000"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="Êèê‰∫§" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="ÈáçÁΩÆ"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
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
