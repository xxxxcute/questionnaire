package cn.zykj.cloud.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Zxy
 * @since 2019-01-29
 */
public class Answersheet extends Model<Answersheet> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.UUID)
    private String id;

    private String sno;

    private String qid;

    @TableField("FindexPoint")
    private String FindexPoint;

    @TableField("SindexPoint")
    private String SindexPoint;

    private String score;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
    }

    public String getFindexPoint() {
        return FindexPoint;
    }

    public void setFindexPoint(String FindexPoint) {
        this.FindexPoint = FindexPoint;
    }

    public String getSindexPoint() {
        return SindexPoint;
    }

    public void setSindexPoint(String SindexPoint) {
        this.SindexPoint = SindexPoint;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Answersheet{" +
        "id=" + id +
        ", sno=" + sno +
        ", qid=" + qid +
        ", FindexPoint=" + FindexPoint +
        ", SindexPoint=" + SindexPoint +
        ", score=" + score +
        "}";
    }
}
