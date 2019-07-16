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
 * @author Zxy
 * @since 2019-01-29
 */
public class Questionnaire extends Model<Questionnaire> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "qid", type = IdType.UUID)
    private String qid;

    private String year;

    private String major;

    @TableField("startTime")
    private String startTime;

    @TableField("stopTime")
    private String stopTime;

    private String starts;


    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
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

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getStopTime() {
        return stopTime;
    }

    public void setStopTime(String stopTime) {
        this.stopTime = stopTime;
    }

    public String getStarts() {
        return starts;
    }

    public void setStarts(String starts) {
        this.starts = starts;
    }

    @Override
    protected Serializable pkVal() {
        return this.qid;
    }

    @Override
    public String toString() {
        return "Questionnaire{" +
        "qid=" + qid +
        ", year=" + year +
        ", major=" + major +
        ", startTime=" + startTime +
        ", stopTime=" + stopTime +
        ", starts=" + starts +
        "}";
    }
}
