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
 * @since 2019-01-26
 */
public class CountMajorPoint {

    private String point;

    private String courseName;

    private String qz;

    private String bfb;

    private String dcd;

    private Double zdcd;

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getQz() {
        return qz;
    }

    public void setQz(String qz) {
        this.qz = qz;
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

    public Double getZdcd() {
        return zdcd;
    }

    public void setZdcd(Double zdcd) {
        this.zdcd = zdcd;
    }
}
