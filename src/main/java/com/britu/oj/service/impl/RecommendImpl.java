package com.britu.oj.service.impl;


import com.britu.oj.service.RecommendService;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * @program: britu-oj
 * @description: 个性化推荐的实现
 * @author: Gauss
 * @date: 2020-08-12 10:17
 **/
@Service
public class RecommendImpl implements RecommendService {
    @Override
    public double GetAbility(Integer u_id){
        String methodUrl = "http://127.0.0.1:5000/getAbility" + "?u_id=" + u_id;
        System.out.println(methodUrl);
        HttpURLConnection connection = null;
        OutputStream dataout = null;
        BufferedReader reader = null;
        String line = null;
        try {
            URL url = new URL(methodUrl);
            connection = (HttpURLConnection) url.openConnection();// 根据URL生成HttpURLConnection
            connection.setDoOutput(true);// 设置是否向connection输出，因为这个是post请求，参数要放在http正文内，因此需要设为true,默认情况下是false
            connection.setDoInput(true); // 设置是否从connection读入，默认情况下是true;
            connection.setRequestMethod("POST");// 设置请求方式为post,默认GET请求
            connection.setUseCaches(false);// post请求不能使用缓存设为false
            connection.setConnectTimeout(3000);// 连接主机的超时时间
            connection.setReadTimeout(3000);// 从主机读取数据的超时时间
            connection.setInstanceFollowRedirects(true);// 设置该HttpURLConnection实例是否自动执行重定向
            connection.setRequestProperty("connection", "Keep-Alive");// 连接复用
            connection.setRequestProperty("charset", "utf-8");

            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("Authorization", "Bearer 66cb225f1c3ff0ddfdae31rae2b57488aadfb8b5e7");
            connection.connect(); // 建立TCP连接,getOutputStream会隐含的进行connect,所以此处可以不要

            dataout = new DataOutputStream(connection.getOutputStream());// 创建输入输出流,用于往连接里面输出携带的参数


            dataout.flush();
            dataout.close();

            if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
                reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));// 发送http请求
                StringBuilder result = new StringBuilder();
                // 循环读取流
                while ((line = reader.readLine()) != null) {
                    result.append(line).append(System.getProperty("line.separator"));//
                }
                JSONObject object = new JSONObject(result.toString());

                return (double)object.get("data");
            }
        } catch (IOException | JSONException e) {
            System.out.println("能力数据请求失败,是否开启了能力评估系统");
        } finally {
            try {
                reader.close();
            } catch (IOException e) {
                System.out.println("数据读取失败");
            }
            connection.disconnect();
        }
     return 0.5;
    }

}
