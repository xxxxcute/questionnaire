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
 * @since 2018-12-19
 */
public class IndexPoint extends Model<IndexPoint> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.UUID)
    private String id;

    private String year;

    private String major;

    private int point;

    @TableField("indexPointDot")
    private String indexPointDot;

    @TableField("courseName")
    private String courseName;

    private String qz;

    private String bfb;

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

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getIndexPointDot() {
        return indexPointDot;
    }

    public void setIndexPointDot(String indexPointDot) {
        this.indexPointDot = indexPointDot;
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

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "IndexPoint{" +
        "id=" + id +
        ", year=" + year +
        ", major=" + major +
        ", indexPointDot=" + indexPointDot +
        ", courseName=" + courseName +
        ", qz=" + qz +
        "}";
    }
}
