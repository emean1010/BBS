package kybmig.ssm;


import kybmig.ssm.service.RedisSubscriber;
import kybmig.ssm.model.TodoModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.listener.PatternTopic;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;

@Configuration
public class RedisConfig {
    private RedisConnectionFactory connection;
    private RedisSubscriber redisSubscriber;

    public RedisConfig(RedisConnectionFactory factory, RedisSubscriber subscriber) {
        this.connection = factory;
        this.redisSubscriber = subscriber;
    }

    @Bean
    public RedisTemplate<Integer, TodoModel> todoRedisTemplate() {
        RedisTemplate<Integer, TodoModel> template = new RedisTemplate<>();
        template.setConnectionFactory(this.connection);
        template.setKeySerializer(new GenericJackson2JsonRedisSerializer());
        template.setValueSerializer(new GenericJackson2JsonRedisSerializer());

        return template;
    }

    @Bean
    RedisMessageListenerContainer container() {
        RedisMessageListenerContainer container = new RedisMessageListenerContainer();
        container.setConnectionFactory(connection);
        //配置要订阅的订阅频道
        container.addMessageListener(redisSubscriber, new PatternTopic("messageQueue"));
        return container;
    }
}
