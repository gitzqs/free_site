package com.zqs.utils.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.zqs.model.base.ReturnObject;
import com.zqs.utils.json.JacksonUtils;

/**
 * 接口调用
 * 
 * @author qiushi.zhou  
 * @date 2017年2月24日 上午10:56:58
 */
public class WebClient {
	
	private static Logger logger = LoggerFactory.getLogger(WebClient.class);
	/**
	 * 接口调用
	 * 
	 * @param 
	 * @return String
	 */
	public static ReturnObject callRest(String url, Object parameter) {
		url = APIConstants.SERVER_ADDR + url;
        DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpPost postRequest = new HttpPost(url);
        JSONObject jsonObject = JSONObject.fromObject(parameter);
        String jsonResponseString = null;
        
		try {
			StringEntity input = new StringEntity(jsonObject.toString(),HTTP.UTF_8 );
			input.setContentType("application/json;charset=utf-8");
	        postRequest.setEntity(input);
	        HttpResponse response = httpClient.execute(postRequest);
	        BufferedReader br = new BufferedReader( new InputStreamReader((response.getEntity().getContent())));
	        String output;
	        StringBuffer bufferedString = new StringBuffer();
	        while ((output = br.readLine()) != null) {
	            bufferedString.append(output);
	        }
	        jsonResponseString = bufferedString.toString();
		} catch (Exception e) {
			logger.error("接口调用失败,[{}]",e);
		}
        
        return JacksonUtils.json2object(jsonResponseString, ReturnObject.class);
    }
	
	public static void main(String args[]){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("mobile", "15205155720");
		map.put("type", 1);
		ReturnObject ro = callRest("other/sendPhoneMessage", map);
		
		
		System.out.println(ro.getReturnMsg());
		
	}
}
