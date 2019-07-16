package cn.zykj.cloud.utils;

import java.util.HashMap;
import java.util.Map;

public class TResult {
    private Integer code;
    private String message;
    private Object data;


    public static TResult success(TResultCode t) {
        TResult result = new TResult();
        result.setResultCode(t);
        return result;
    }

    public static TResult success(Object data) {
        TResult result = new TResult();
        result.setResultCode(TResultCode.SUCCESS);
        result.setData(data);
        return result;
    }

    public static TResult success(Object data, String ctx) {
        TResult result = new TResult();
        result.setResultCode(TResultCode.SUCCESS);
        Map<String, Object> map = new HashMap<>();
        map.put("data", data);
        map.put("ctx", ctx);
        result.setData(map);
        return result;
    }

    public static TResult failure(TResultCode t) {
        TResult result = new TResult();
        result.setResultCode(t);
        return result;
    }

    private void setResultCode(TResultCode resultCode) {
        this.code = resultCode.getCode();
        this.message = resultCode.getMessage();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
