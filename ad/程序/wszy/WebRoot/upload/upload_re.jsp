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
<%@ page contentType="text/html;charset=utf-8" language="java" import="com.jspsmart.upload.*"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
%>
<%
    
    String newFile1Name=null;
    String file_name=null;
	SmartUpload mySmartUpload = new SmartUpload();

	//åˆå§‹åŒ–ä¸Šä¼ 
	mySmartUpload.initialize(pageContext);

	//åªå…è®¸ä¸Šè½½æ­¤ç±»æ–‡ä»¶
	try 
	{
		//mySmartUpload.setAllowedFilesList("jpg,Jpg,JPG,GIF,gif,Gif,png");
		mySmartUpload.upload();
	} 
	catch (Exception e)
    {
		//out.println("<script language=javascript>alert('ä¸Šä¼ æ ¼å¼é”™è¯¯ï¼');   history.back(-1);</script>");
		//return;
	}
	
	try 
	{
		   com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
		   if (myFile.isMissing())
		   {
			  out.println("<script language=javascript>alert('å¿…é¡»é€‰æ‹©å›¾ç‰‡ï¼');   history.back(-1);</script>");
			  return;

		   } 
		   else 
		   {
			   int file_size = myFile.getSize(); //å–å¾—æ–‡ä»¶çš„å¤§å° (å•ä½æ˜¯b) 
			   file_name=myFile.getFileName();
			   System.out.println("æ–‡ä»¶å¤§å°ï¼š"+file_size+"æ–‡ä»¶åç§°ï¼š"+file_name);
			   //if (file_size > 10*1024*1024)
			   //{
				  //out.println("<script language=javascript>alert('ä¸Šä¼ å›¾ç‰‡å¤§å°åº”æ§åˆ¶åœ¨10K~1Mä¹‹é—´ï¼');   history.back(-1);</script>");
				  //return;
			   //}
               //else
               //{
                   newFile1Name=new Date().getTime()+file_name.substring(file_name.indexOf("."));
	               System.out.println("æ–°æ–‡ä»¶åç§°ï¼š"+newFile1Name);
				
				   String saveurl = request.getSession().getServletContext().getRealPath("upload");
				
				   saveurl = saveurl+"/"+newFile1Name;
				   myFile.saveAs(saveurl, mySmartUpload.SAVE_PHYSICAL);
	
              // }
			} 
	  } 
	  catch (Exception e)
	  {
	    e.toString();
	  }
%>

<script language="javascript">
    document.write("ä¸Šä¼ æˆåŠŸ");
	window.parent.document.getElementById("fujian").value="/upload/<%= newFile1Name%>";
	window.parent.document.getElementById("fujianYuanshiming").value="<%= file_name%>";
</script>
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
