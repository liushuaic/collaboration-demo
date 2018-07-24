/** 
 * <pre>项目名称:maven-bootutil 
 * 文件名称:Httpclient.java 
 * 包名:com.dll.util.httpclientConf 
 * 创建日期:2018年5月15日上午11:40:17 
 * Copyright (c) 2018, yuxy123@gmail.com All Rights Reserved.</pre> 
 */  
package com.jk.util.httpclientConf;


import java.net.URI;  
import java.util.ArrayList;  
import java.util.HashMap;  
import java.util.List;  
import java.util.Set;  
  
import org.apache.http.HttpEntity;  
import org.apache.http.NameValuePair;  
import org.apache.http.client.entity.UrlEncodedFormEntity;  
import org.apache.http.client.methods.CloseableHttpResponse;  
import org.apache.http.client.methods.HttpGet;  
import org.apache.http.client.methods.HttpPost;  
import org.apache.http.impl.client.CloseableHttpClient;  
import org.apache.http.impl.client.HttpClients;  
import org.apache.http.message.BasicNameValuePair;  
import org.apache.http.util.EntityUtils;  
/** 
 * <pre>项目名称：maven-bootutil    
 * 类名称：Httpclient    
 * 类描述：    
 * 创建人：戴履龙 
 * 创建时间：2018年5月15日 上午11:40:17    
 * 修改人：戴履龙 
 * 修改时间：2018年5月15日 上午11:40:17    
 * 修改备注：       
 * @version </pre>    
 */
public class Httpclient {
    static CloseableHttpClient client = null;  
    static {  
        client = HttpClients.createDefault();  
    }  
	/*
     * get请求
     * 
     */
    public static String get(String url,HashMap<String, Object> params){  
        try {  
            HttpGet httpGet = new HttpGet();  
            Set<String> keySet = params.keySet();
            StringBuffer stringBuffer = new StringBuffer();  
            stringBuffer.append(url).append("?t=").append(System.currentTimeMillis());  
            for (String key : keySet) {  
                stringBuffer.append("&").append(key).append("=").append(params.get(key));  
            }
            httpGet.setURI(new URI(stringBuffer.toString()));  
            CloseableHttpResponse execute = client.execute(httpGet);  
            int statusCode = execute.getStatusLine().getStatusCode();  
            if (200 != statusCode) {  
                return "";  
            }  
            return EntityUtils.toString(execute.getEntity(), "utf-8");  
        }catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
    }  
    

    /*
     * post请求
     * 
     * */
    public static String post(String url,HashMap<String, Object> params){  
        try {
            HttpPost httpPost = new HttpPost();
            httpPost.setURI(new URI(url));  
            List<NameValuePair> parameters = new ArrayList<NameValuePair>();  
            Set<String> keySet = params.keySet();  
            for (String key : keySet) {  
                NameValuePair e = new BasicNameValuePair(key, params.get(key).toString());  
                parameters.add(e);  
            }  
            HttpEntity entity = new UrlEncodedFormEntity(parameters , "utf-8");  
            httpPost.setEntity(entity );  
            CloseableHttpResponse execute = client.execute(httpPost);  
            int statusCode = execute.getStatusLine().getStatusCode();
            if (200 != statusCode) {
                return "";  
            }  
            return EntityUtils.toString(execute.getEntity(), "utf-8");
        }catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
    }  
}
