package cn.zykj.cloud.generator;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

public class POST {

    /**
     * 3.发送POST请求
     * @param url
     * @param params
     * @param forData
     * @return
     * @throws Exception
     */
    public static String[] sendPost(String url , String formData) throws Exception{

//        URL Url = new URL(url );
//        URLConnection conn = Url.openConnection();
//
//        //如果设置代理 , 和发送GET一样.
//        conn.setRequestProperty("accept", "*/*" );
//        conn.setRequestProperty("Connection", "Keep-Alive" );
//        conn.setRequestProperty("Users-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36");
//
//        //设置之后就可以发送POST请求了
//        conn.setDoInput(true );
//        conn.setDoOutput(true );
//
//
//        //获取它的输出流 , 直接写入post请求
//        PrintWriter writer = new PrintWriter(conn.getOutputStream() );
//        writer.print(formData );
//        writer.flush();
//
//
//        //获取浏览器的返回数据
//        BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream() ) );
//        String line = reader.readLine();
//        line = new String(line.getBytes() , "utf-8" );  //解决乱码的问题
//        JSONArray jsonArray = new JSONArray(line);
//        while(line != null ){
////            schoolService.insertSchool();
////            System.out.println(jsonArray);
//            builder.append(line + "\r\n" );
//            line = reader.readLine();
//        }
//        reader.close();
//        writer.close();
//        String[] str = new String[200];
//        for (int i = 0; i < jsonArray.length(); i++) {
//            JSONObject jsonObject = new JSONObject(jsonArray.get(i).toString());
//            System.out.println(jsonObject.getString("title"));
//            str[i] = jsonObject.getString("title");
//        }
//        return str;
//    }
//    public static void main(String[] args) {
//        POST request = new POST();
//        try {
//            //Post请求
//            String formData = "letter=A";
//            request.sendPost("http://www.pocketuni.net/index.php?app=home&mod=Public&act=ajaxLoginSchools", null, formData);
//
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
        return null;
    }
}


