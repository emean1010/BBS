package kybmig.ssm.service;


import kybmig.ssm.Utility;
import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.listener.adapter.MessageListenerAdapter;
import org.springframework.stereotype.Service;

@Service
public class RedisSubscriber extends MessageListenerAdapter {

    @Override
    public void onMessage(Message message, byte[] pattern) {
//        super.onMessage(message, pattern);

        Utility.log("redis 订阅 (%s)", message.toString());
    }
}
