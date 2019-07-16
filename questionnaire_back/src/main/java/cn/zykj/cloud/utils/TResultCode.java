package cn.zykj.cloud.utils;
//枚举
public enum TResultCode {

    SUCCESS(200, "请求成功"),
    FAILURE(500, "请求失败"),
    ADMIN_LOGIN_SUCCESS(201, "系统管理员登录成功"),
    TEACHER_LOGIN_SUCCESS(202, "教师登录成功"),
    MAJOR_LOGIN_SUCCESS(203, "专业管理员登录成功"),
    LOGIN_FAILURE(500, "登陆失败"),

    TOKEN_IS_ERROR(403, "令牌出错，拦截请求"),
    TOKEN_IS_INVALID(403, "令牌失效，拦截请求"),
    VERIFICATION_CODE_EXPIRATION(403, "验证码已过期"),
    VERIFICATION_CODE_ERROR(404, "验证码错误"),
    THIS_PROFESSION_ALREADY_EXISTS(201, "此专业已存在"),

    QUESTION_GET_ERROR(500,"问卷启动失败（指标点或问卷对象未获取成功）"),
    QUESTION_GET_SUCCESS(200,"问卷启动成功"),
    QUESTIONNAIRE_LOGIN_SUCCESS(204,"问卷管理员登录成功"),
    STUDENT_LOGIN_SUCCESS(205,"问卷填写对象登录成功(当前以及五年之内的往届毕业生)");


    private Integer code;
    private String message;

    TResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
