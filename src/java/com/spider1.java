/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

/**
 *
 * @author ivan93
 */
public class spider1 extends ActionSupport{    
    static int flag=1;   
    static HttpClient httpCLient = new DefaultHttpClient(); 
    static String file=""; 
   static List<String> listurl=new ArrayList<>();
   static List<String> listname=new ArrayList<>();
        
static void gettext(String str) throws FileNotFoundException
{
    int i=0;
    Pattern pattern = Pattern
    .compile("<td class=\".+?\"><span>.+?<a href=\"(.+?)\">(.+?)</a>");//抓WY的链接
  Matcher matcher = pattern.matcher(str);//抓提问题超链接
   Boolean isFind = matcher.find();
    while (isFind && i!=10){
        
        listurl.add(matcher.group(1));
        listname.add(matcher.group(2));
  //      System.out.println(matcher.group(1)+matcher.group(2));
      //   System.out.println(matcher.group(3)+matcher.group(4));
         isFind = matcher.find();        
         i++;
        
    }

}           
    public static String downloadPage(String path) throws Exception {
  // 定义输入输出流     
     HttpGet httpget = new HttpGet(path);  
      String result="";
           try  
        {       
            
            // 客户端执行get请求 返回响应实体  
            HttpResponse response = httpCLient.execute(httpget);         
            // 获取响应消息实体  
            HttpEntity entity = response.getEntity();  
               if(entity != null){  
        //   result=EntityUtils.toString(entity,"utf-8");
          if(entity != null){  
      
              result=EntityUtils.toString(entity,"utf-8");
 
            }  
          
   //       System.out.println(result);
              
          httpget.abort();
            }  
              
        } catch (ClientProtocolException e){  
            
        } catch (IOException e){  
           
        }
       
       return result;     
    }
    
    private Map request;
    
    public String crwoling(){
        
      String url1="http://news.163.com/rank/";
      request = (Map)ActionContext.getContext().get("request");
             String s;
        try {
            s = downloadPage(url1);
            gettext(s);;
        } catch (Exception ex) {
            Logger.getLogger(spider1.class.getName()).log(Level.SEVERE, null, ex);
        }
//                    System.out.println(s);
//                    System.out.println(s);
      
        request.put("r0", listurl.get(0));  
        request.put("r1", listurl.get(1));  
        request.put("r2", listurl.get(2));  
        request.put("r3", listurl.get(3));  
        request.put("r4", listurl.get(4));  
        request.put("r5", listurl.get(5));  
        request.put("r6", listurl.get(6));  
        request.put("r7", listurl.get(7));  
        request.put("r8", listurl.get(8));  
        request.put("r9", listurl.get(9));        
        request.put("n0", listname.get(0));  
        request.put("n1", listname.get(1));  
        request.put("n2", listname.get(2));  
        request.put("n3", listname.get(3));  
        request.put("n4", listname.get(4));  
        request.put("n5", listname.get(5));  
        request.put("n6", listname.get(6));  
        request.put("n7", listname.get(7));  
        request.put("n8", listname.get(8));  
        request.put("n9", listname.get(9));
        
        for(int i=0;i<10;i++)
        {
            System.out.println(listurl.get(i));
        }
        return SUCCESS;
    }
    
}


/**
 *
 * @author ivan93
 */


//public class spider extends  ActionSupport{
//    
//    static int flag=1;   
//    static HttpClient httpCLient = new DefaultHttpClient(); 
//    static String file="";
//  
//        
//        
//static void gettext(String str) throws FileNotFoundException
//{
//    int i=0;
//    Pattern pattern = Pattern
//    .compile("<td class=\".+?\"><span>.+?<a href=\"(.+?)\">(.+?)</a>");//抓WY的链接
//  Matcher matcher = pattern.matcher(str);//抓提问题超链接
//   Boolean isFind = matcher.find();
//    while (isFind && i!=10){
//          System.out.println("find");
//        System.out.println(matcher.group(1)+matcher.group(2));
//      //   System.out.println(matcher.group(3)+matcher.group(4));
//         isFind = matcher.find();        
//         i++;
//        
//    }
//
//}
//        
//    
//    public static String downloadPage(String path) throws Exception {
//  // 定义输入输出流     
//     HttpGet httpget = new HttpGet(path);  
//      String result="";
//           try  
//        {       
//            
//            // 客户端执行get请求 返回响应实体  
//            HttpResponse response = httpCLient.execute(httpget);         
//            // 获取响应消息实体  
//            HttpEntity entity = response.getEntity();  
//               if(entity != null){  
//        //   result=EntityUtils.toString(entity,"utf-8");
//          if(entity != null){  
//      
//              result=EntityUtils.toString(entity,"utf-8");
// 
//            }  
//          
//   //       System.out.println(result);
//              
//          httpget.abort();
//            }  
//              
//        } catch (ClientProtocolException e){  
//            
//        } catch (IOException e){  
//           
//        }
//       
//       return result;     
//    }
//            
// 
//    public static void main(String[] args) throws Exception {
//
//                    
//                    String url1="http://news.163.com/rank/";
//                    String s=downloadPage(url1);
////                    System.out.println(s);
//                         gettext(s);
//                     //    downloadPage(url1);
//    }
    
//}
