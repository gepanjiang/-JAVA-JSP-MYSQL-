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
	            pop.setContent("title","Êñá‰ª∂‰∏ä‰º†");
	            pop.build();
	            pop.show();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/doc?type=docAdd" name="formAdd" method="post">
				     <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan="3" background="<%=path %>/img/tbg.gif">&nbsp;ÊïôÂ≠¶ËµÑÊñôÁÆ°ÁêÜ&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        ÂêçÁß∞Ôºö
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="title" size="50"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        ÈôÑ‰ª∂Ôºö
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
						        <input type="button" value="‰∏ä‰º†" onclick="up()"/>
						        <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        ‰ªãÁªçÔºö
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						        <FCK:editor instanceName="content"  basePath="/fckeditor" width="500" height="200" value="ËØ∑ËæìÂÖ•ÂÜÖÂÆπ" toolbarSet="Basic">
	                            </FCK:editor>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="center">
						        ÂèëÂ∏ÉÊó∂Èó¥Ôºö
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
						       <input type="submit" value="Êèê‰∫§"/>&nbsp; 
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
