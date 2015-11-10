<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Category_input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

        
           <center>
           <h1>更新新闻</h1>
       </center>
      
       <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1>
       
      <center>
  <form action="admin/Category-update" method="post">
      
        <table border="2">
<input type="hidden" name="category.id" value="<s:property value="category.id"/> "/>
<tr>
<td>name:</td>
<td><input name="category.name"  value="<s:property value="category.name"/> "/></td>
</tr>
<tr>
<td>description:</td>
<td><textarea name="category.description"><s:property value="category.description"/></textarea> </td>
</tr>
<tr>
<td>context:</td>
<td> <textarea name="category.context" rows="20" cols="20"><s:property value="category.context"/></textarea> </td>
</tr>
</table>
      <br/><br/>
  	<input type="submit" value="update" /> 
        </center>
  </form>
    
  </body>
</html>
