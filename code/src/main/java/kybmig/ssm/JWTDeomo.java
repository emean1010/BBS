package kybmig.ssm;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.logging.LogManager;

import static javax.xml.crypto.dsig.SignatureMethod.HMAC_SHA256;


public class JWTDeomo {

    static public void log(String format, Object...args) {
        System.out.println(String.format(format, args));
    }

    public static void demo() {
        HashMap<String, Object> header = new HashMap<>();
        header.put("alg", "HS256");
        header.put("typ", "JWT");
        // 加密的秘钥
        String secretKey = "my-secret";
        // 根据密文得到秘钥
        Algorithm algorithm = Algorithm.HMAC256(secretKey);

        // 生成 jwt token, 存一个user_id
        String token = JWT.create()
                .withHeader(header)
                .withClaim("username", "gua")
                .sign(algorithm);

//        eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6Imd1YSJ9.REbW19p8qQomBm3rqqNXf428OuQq_JxmLp2bZAsLnrY


        log("jwt token: <%s>", token);
//        token = token.replace("eyJ1c2VybmFtZSI6Imd1YSJ9", "eyJ1c2VybmFtZSI6Imd1YTEifQ==");

        // 验证 token 是否被篡改了
        JWTVerifier verifier = JWT.require(algorithm)
                .build();
        DecodedJWT jwt = verifier.verify(token);
        log("username: %s", jwt.getClaims().get("username").asString());
    }

    public static void main(String[] args) {
        demo();

    }
}
