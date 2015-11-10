/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import static com.spider.listurl;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
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


public class QBSpider  {
    
    static int flag=1;   
    static HttpClient httpCLient = new DefaultHttpClient(); 
    static String file="";
    static List<String> listurl=new ArrayList<>();
   static List<String> listname=new ArrayList<>();
        
        
static void gettext(String str) throws FileNotFoundException
{
    int i=0;
//    Pattern pattern = Pattern
//    .compile("<img .+? />\n" +
//"(.+?)\n" +
//"</a>\n" +
//"</div>\n" +
//"\n" +
//"\n" +
//"<div class=\"content\">\n" +
//"\n" +
//"(.+?)\n" +
//"<.+?>");//抓WY的链接
            Pattern pattern = Pattern
    .compile("<img .+? alt=\"(.+?)\"/>\n" +
"</a>\n" +
"<a href=.+?>\n" +
"<h2>.+?</h2>\n" +
"</a>\n" +
"</div>\n" +
"\n" +
"\n" +
"<div class=\"content\">\n" +
"\n" +
"(.+?)\n" +
"<!--.+?-->");//抓WY的链接
  Matcher matcher = pattern.matcher(str);//抓提问题超链接
   Boolean isFind = matcher.find();
    while (isFind){
       listurl.add(matcher.group(1));
        listname.add(matcher.group(2));
        System.out.println(matcher.group(1)+"\n"+matcher.group(2));
      //   System.out.println(matcher.group(3)+matcher.group(4));
         isFind = matcher.find();  
        
        
        
    }


}
        
    
    public static String downloadPage(String path) throws Exception {
  // 定义输入输出流     
     HttpGet httpget = new HttpGet(path);  
      httpget.addHeader("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.0.3) Gecko/2008092417 Firefox/3.0.3");
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
          
     //     System.out.println(result);
              
          httpget.abort();
            }  
              
        } catch (ClientProtocolException e){  
            
        } catch (IOException e){  
           
        }
       
       return result;     
    }
    
     public static void changepage(String url,int page,int topage) throws Exception{
       
        String newurl=url.substring(0,url.length()-1);
        String temp;
      //  System.out.println(newurl);
        for(int i=page;i<=topage;i++)
        {
           temp=newurl;
            String s = Integer.toString(i);
            newurl=newurl+s;
      //    System.out.println(newurl);
   
            String str=QBSpider.downloadPage(newurl);
            
            gettext(str);
         
             newurl=temp;
            
        }
       
   }
            
  private Map request;

     public String crwoling() {

    request = (Map)ActionContext.getContext().get("request");request = (Map)ActionContext.getContext().get("request");           
        try {
            String url1="http://www.qiushibaike.com/text/page/1";
            String s=downloadPage(url1);

            changepage("http://www.qiushibaike.com/text/page/1",1,1);
            //    downloadPage(url1);
        } catch (Exception ex) {
            Logger.getLogger(QBSpider.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        for(int i=0;i<18;i++)
        {
            
            request.put("r"+Integer.toString(i), listurl.get(i)); 
            request.put("n"+Integer.toString(i), listname.get(i));  
        }
        
     
        
            
    listurl.clear();
    listname.clear();
       
        
      
        return SUCCESS;
    }
        

    
    
}

