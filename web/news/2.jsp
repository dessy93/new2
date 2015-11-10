<%-- 
    Document   : 1
    Created on : 2015-10-27, 11:03:22
    Author     : ivan93
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
<style type="text/css">

ul{

list-style-type:none
}
#div_1{
background-color:#0ff;
height:400px;
width:400px;

}

</style>
    </head>
    <body>
        <center>
        <h1><s:property value="categories[1].name"/></h1> 
        <HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1>
        <p>概要：<s:property value="categories[1].description"/></p>
        </center>
        
        
        <center>
    <div id="div_1">
 <p align="left">  内容：<s:property value="categories[1].description"/></p>
   </div>
    </center>    
    </body>
</html>
