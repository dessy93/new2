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
          <h1>新闻管理</h1>
          
   <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1>

<h3>当前新闻</h3>
<s:iterator value="categories" var="c">
  标题：  <s:property value="#c.name"/> |
     
   
   <a href="admin/Category-updateInput?id=<s:property value="#c.id"/>">更新Category</a>
     <a href="admin/Category-delete?id=<s:property value="#c.id"/>">删除category</a>
     <br/><br/>
</s:iterator>
  
  <a href="admin/Category-addInput">添加新闻</a>
     <s:debug></s:debug>
     
      </center>
  </body>
</html>
