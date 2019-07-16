package cn.zykj.cloud.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Olaf
 * @since 2019-01-15
 */
public class CountClassPoint extends Model<CountClassPoint> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.UUID)
    private String id;

    private String year;

    private String major;

    @TableField("courseName")
    private String courseName;

    @TableField("className")
    private String className;

    private String point;

    private String stu;

    private String zdf;

    private String zpf;

    private String method;

    private String dcd;

    private String bfb;

    private String zdfd;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getPoint() {
        return point;
    }

    public String getStu() {
        return stu;
    }

    public void setStu(String stu) {
        this.stu = stu;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public  String getZdf() {
        return zdf;
    }

    public void setZdf(String zdf) {
        this.zdf = zdf;
    }

    public String getZpf() {
        return zpf;
    }

    public void setZpf(String zpf) {
        this.zpf = zpf;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getBfb() {
        return bfb;
    }

    public void setBfb(String bfb) {
        this.bfb = bfb;
    }

    public String getDcd() {
        return dcd;
    }

    public void setDcd(String dcd) {
        this.dcd = dcd;
    }

    public String getZdfd() {
        return zdfd;
    }

    public void setZdfd(String zdfd) {
        this.zdfd = zdfd;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "CountClassPointMapper{" +
        "id=" + id +
        ", point=" + point +
        ", zdf=" + zdf +
        ", zpf=" + zpf +
        ", method=" + method +
        ", bfb=" + bfb +
        ", zdfd=" + zdfd +
        "}";
    }
}
