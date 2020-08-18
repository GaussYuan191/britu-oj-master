package com.britu.oj;

import com.britu.oj.entity.ProblemResult;
import com.britu.oj.utils.JsonUtil;
import org.apache.rocketmq.client.exception.MQBrokerException;
import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.common.message.Message;
import org.apache.rocketmq.remoting.common.RemotingHelper;
import org.apache.rocketmq.remoting.exception.RemotingException;

import java.io.UnsupportedEncodingException;

public class ProducerTest {

    public static void main(String[] args) throws MQClientException, InterruptedException, RemotingException, MQBrokerException {
        ProblemResult problemResult = new ProblemResult();
//        String body = JsonUtil.obj2String(problemResult);
        String body = "hi";
        //创建一个生产者
        DefaultMQProducer producer=new DefaultMQProducer("judgeProducerGroup1");
        //设置NameServer地址
        producer.setNamesrvAddr("39.106.134.120:9876");
        producer.setRetryTimesWhenSendFailed(Integer.parseInt("3"));
        //设置生产者实例名称
        producer.setInstanceName("provider");
        //启动生产者
        producer.start();
        //发送消息
        for (int i = 1; i <=10 ; i++) {
            Thread.sleep(1000); //模拟网络延迟
            //创建消息  topic代表主题名称
            Message message= null;
            try {
                message = new Message("ojcode1", body.getBytes(RemotingHelper.DEFAULT_CHARSET));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            //发送消息
            SendResult send = producer.send(message);
            System.out.println(send.toString());
        }
    }

}
