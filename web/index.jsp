<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030"/>
    <title>新闻</title>
 
    <link rel="shortcut icon" href="res/favicon.ico" type="image/x-icon" />
    
    <link href="res/forum.css" rel="stylesheet" type="text/css" />
    
      </head>
  <body style="background:transparent;">
      </br>
      <h1>CTGU新闻平台</h1>

    <div id="page">
  

 
          <table id="forum_main" cellspacing="1">
            <thead>
              <tr>
                <td colspan="2" class="first_col" style="width: 620px;">新闻</td>
                <td class="first_col" style="width: 120px;">时间</td>               
              
              </tr>
            </thead>
         
          
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href="/cxy/news/1" class="forumtitle" target="_blank"><s:property value="categories[0].name"/></a>
                   
  <br/></td>
                <td class="forum_index">time</td>
                
                </td>
              </tr>
              
              
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href="/cxy/news/2" class="forumtitle" target="_blank"><s:property value="categories[1].name"/></a>
                    
  <br/></td>
                <td class="forum_index">time</td>
      
                </td>
              </tr>
             
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href="/cxy/news/3" class="forumtitle" target="_blank"><s:property value="categories[2].name"/></a>
                    
  <br/></td>
                <td class="forum_index">time</td>
                
                </td>
              </tr>
              

          
          </table>


    
   
    </div>
 

  </body>
</html>
