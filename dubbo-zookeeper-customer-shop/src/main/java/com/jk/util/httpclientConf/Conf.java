/** 
 * <pre>项目名称:maven-bootutil 
 * 文件名称:Conf.java 
 * 包名:com.dll.util.httpclientConf 
 * 创建日期:2018年5月15日上午11:23:29 
 * Copyright (c) 2018, yuxy123@gmail.com All Rights Reserved.</pre> 
 */  
package com.jk.util.httpclientConf;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.apache.commons.codec.digest.DigestUtils;

/** 
 * <pre>项目名称：maven-bootutil    
 * 类名称：Conf    
 * 类描述：    
 * 创建人：戴履龙 
 * 创建时间：2018年5月15日 上午11:23:29    
 * 修改人：戴履龙 
 * 修改时间：2018年5月15日 上午11:23:29    
 * 修改备注：       
 * @version </pre>    
 */
public class Conf {
	 public static final String accountSid ="6dca13c852d94eb785cb620aee582a51";
	 public static final String templateid="245098476";
	 public static final String token="40b49a5237944ff9b197e95fc3a80898";
	 public static final String respDataType="JSON";
	 public static final String respCode = "00000";
     public static final String WEATHER_PATH ="https://www.sojson.com/open/api/weather/json.shtml";
	 public static final String HTTP_STATUS="200";
	 public static final String ROBOT_STATUS="0";
	 public static final String INTELLIIGENT_ROBOT_PATH="http://api.qingyunke.com/api.php";
	 public static final String FACEIMG_PATH = "https://api-cn.faceplusplus.com/facepp/v3/compare";
	 public static final String MIAOYUN_PATH = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";
	 
	 public static String createCommonParam(String sid,String token,String timestamp){
			// 签名
			String sig = DigestUtils.md5Hex(sid + token + timestamp);
			return sig;
		}
	 public static  String smsContent(String code){
		 //
		 return "【龙科技】您的短信验证码为：{"+code+"}，龙科技提醒您：最近骗子猖狂，请多加防范！";
	 };
     public static String verificationCode(){
		 String str="0123456789";
		 StringBuilder sb=new StringBuilder(6);
		 for(int i=0;i<6;i++){
		   char ch=str.charAt(new Random().nextInt(str.length()));
		   sb.append(ch);
	  }
		 return sb.toString();
     }
}
