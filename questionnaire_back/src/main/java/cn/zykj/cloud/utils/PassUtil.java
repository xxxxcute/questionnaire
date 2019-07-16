package cn.zykj.cloud.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * <p>
 *  MD5转换
 * </p>
 *
 * @author Olaf
 * @since 2018/11/16
 */
public class PassUtil {
    public static String getMD5(String str) {
        StringBuilder sb = new StringBuilder();
        char[] chars = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A',
                'B', 'C', 'D', 'E', 'F'};
        byte[] b = str.getBytes();
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
        byte[] md5 = md.digest(b);
        for (byte m : md5) {
            sb.append(chars[(m >> 4) & 0x0f]);
            sb.append(chars[m & 0x0f]);
        }
        return sb.toString();
    }

    public static String getSha1(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        MessageDigest mdTemp;
        try {
            mdTemp = MessageDigest.getInstance("SHA1");
            mdTemp.update(str.getBytes("UTF-8"));
            byte[] md = mdTemp.digest();
            char buf[] = new char[md.length * 2];
            int k = 0;
            for (byte b0 : md) {
                buf[k++] = hexDigits[b0 >>> 4 & 0xf];
                buf[k++] = hexDigits[b0 & 0xf];
            }
            return new String(buf);
        } catch (Exception e) {
            return null;
        }
    }

    public static String getMD5(Object obj) {
        return getMD5(obj.toString());
    }

    public static void main(String[] args) {
        System.out.println(getMD5("123456"));
    }
}