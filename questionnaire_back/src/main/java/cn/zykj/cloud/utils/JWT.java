package cn.zykj.cloud.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JWT {
    // 加密密钥
    private final static String base64Secret = "MDk4ZjZiY2Q0NjIxZDM3M2NhZGU0ZTgzMjYyN2I0ZjY=";
    // 两小时有效时间
    private final static int expiresSecond = 7200000;
    // 测试有效时间
//    private final static int expiresSecond = 60000;

    /**
     * 解析JWT令牌
     * @param jsonWebToken 令牌
     * @return
     */
    public static Claims parseJWT(String jsonWebToken) {
        try {
            Claims claims = Jwts.parser()
                    .setSigningKey(DatatypeConverter.parseBase64Binary(base64Secret))
                    .parseClaimsJws(jsonWebToken).getBody();
            return claims;
        } catch (Exception ex) {
            return null;
        }
    }

    /**
     * 获取用户信息
     * @param request 请求头
     * @return
     */
    public static Map<String, String> getUserInfo(HttpServletRequest request) {
        Map<String, String> map = new HashMap<>();
        map.put(Constants.TOKEN_ACCOUNT, parseJWT(request.getHeader(Constants.TOKEN_NAME)).get(Constants.TOKEN_ACCOUNT).toString());
        map.put(Constants.TOKEN_ROLE, parseJWT(request.getHeader(Constants.TOKEN_NAME)).get(Constants.TOKEN_ROLE).toString());
        return map;
    }

    /**
     * 生成JWT令牌，存入用户名，用户角色
     * @param account 用户名
     * @param role 角色
     * @return
     */
    public static String createJWT(String account, String role) {
        // 采用HS256加密算法
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        // 获取当前系统时间
        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);
        // 转码为base64
        byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary(base64Secret);
        Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());
        JwtBuilder builder = Jwts.builder()
                .setHeaderParam("CS_ZYKJ", "JWT")
                .claim(Constants.TOKEN_ACCOUNT, account)
                .claim(Constants.TOKEN_ROLE, role)
                .signWith(signatureAlgorithm, signingKey);
        if (expiresSecond >= 0) {
            long expMillis = nowMillis + expiresSecond;
            Date exp = new Date(expMillis);
            builder.setExpiration(exp).setNotBefore(now);
        }
        return builder.compact();
    }

    public static void main(String[] args){

    }
}
