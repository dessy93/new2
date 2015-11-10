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
    
 <script language="javascript" type="text/javascript">
//js获取日期
function time()

{

  var now= new Date();

  var year=now.getFullYear();

  var month=now.getMonth();

  var date=now.getDate();
  


//写入相应id
document.getElementById("a1").innerHTML=year+"年"+(month+1)+"月"+date+"日";
 document.getElementById("info1").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info2").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info3").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info4").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info5").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info6").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info7").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info8").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info9").innerHTML=year+"年"+(month+1)+"月"+date+"日";
document.getElementById("info10").innerHTML=year+"年"+(month+1)+"月"+date+"日";
} 


</script>
    
      </head>
  <body onload="time()" style="background:transparent;">
      <center>.
          <h1>网易新闻24小时点击榜</h1>
          <h2 id="a1"></h2>
      </center>
    <div id="page">
         
   
          <table id="forum_main" cellspacing="1">
            <thead>
              <tr>
                <td colspan="2" class="first_col" style="width: 620px;">新闻</td>
                <td class="first_col" style="width: 120px;">时间</td>               
              
              </tr>
            </thead>
            <tbody>
          
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r0"/> class="forumtitle" target="_blank"><s:property value="#request.n0"/> </a>
                   
  <br/></td>
                <td class="forum_index" id="info1"></td>
                
                </td>
              </tr>
              
              
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r1"/> class="forumtitle" target="_blank"><s:property value="#request.n1"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info2"></td>
      
                </td>
              </tr>
             
              <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r2"/> class="forumtitle" target="_blank"><s:property value="#request.n2"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info3"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r3"/> class="forumtitle" target="_blank"><s:property value="#request.n3"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info4"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r4"/> class="forumtitle" target="_blank"><s:property value="#request.n4"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info5"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r5"/> class="forumtitle" target="_blank"><s:property value="#request.n5"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info6"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r6"/> class="forumtitle" target="_blank"><s:property value="#request.n6"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info7"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r7"/> class="forumtitle" target="_blank"><s:property value="#request.n7"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info8"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r8"/> class="forumtitle" target="_blank"><s:property value="#request.n8"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info9"></td>
                
                </td>
              </tr>
                
                      <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><a href=<s:property value="#request.r9"/> class="forumtitle" target="_blank"><s:property value="#request.n9"/> </a>
                    
  <br/></td>
                <td class="forum_index" id="info10"></td>
                
                </td>
              </tr>
              
              
<!--      <tr class="sep1"><td colspan="5"></td></tr>    空行-->

            </tbody>
          </table>

   
    </div>
             


  </body>
</html>
