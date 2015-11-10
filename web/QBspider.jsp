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
    <title>段子</title>
 
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

} 



</script>
    
      </head>
  <body onload="time()" style="background:transparent;">
      <center>.
          <h1>糗百24小时最热</h1>
          <h2 id="a1"><h2>
      </center>
    <div id="page">
         

          <table id="forum_main" cellspacing="1">
            <thead>
              <tr>
                <td colspan="2" class="first_col" style="width: 620px;">段子</td>
                <td class="first_col" style="width: 120px;">糗主</td>               
              
              </tr>
            </thead>
            <tbody>
                
   <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n0"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r0"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n1"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r1"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n2"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r2"/></td>
                
                </td>
              </tr>
              
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n3"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r3"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n4"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r4"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n5"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r5"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n6"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r6"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n7"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r7"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n8"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r8"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n9"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r9"/></td>
                
                </td>
              </tr>
                
                
                 <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n10"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r10"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n11"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r11"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n12"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r12"/></td>
                
                </td>
              </tr>
              
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n13"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r13"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n14"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r14"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n15"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r15"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n16"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r16"/></td>
                
                </td>
              </tr>
                
                         <tr>
                <td class="read_forum"></td>
                <td class="forum_description"><s:property value="#request.n17"/> </a>
                   
  <br/></td>
                <td class="forum_index" ><s:property value="#request.r17"/></td>
                
                </td>
              </tr>
                
   
         
                

              
<!--      <tr class="sep1"><td colspan="5"></td></tr>    空行-->

            </tbody>
          </table>

   
    </div>
           
    

  </body>
</html>
