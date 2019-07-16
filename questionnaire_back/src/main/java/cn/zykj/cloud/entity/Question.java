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
 * @since 2019-01-31
 */
public class Question extends Model<Question> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.UUID)
    private String id;

    @TableField("qID")
    private String qID;

    @TableField("fNumber")
    private Integer fNumber;

    @TableField("FindexPoint")
    private String FindexPoint;

    @TableField("sNumber")
    private String sNumber;

    @TableField("SindexPoint")
    private String SindexPoint;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getqID() {
        return qID;
    }

    public void setqID(String qID) {
        this.qID = qID;
    }

    public Integer getfNumber() {
        return fNumber;
    }

    public void setfNumber(Integer fNumber) {
        this.fNumber = fNumber;
    }

    public String getFindexPoint() {
        return FindexPoint;
    }

    public void setFindexPoint(String FindexPoint) {
        this.FindexPoint = FindexPoint;
    }

    public String getsNumber() {
        return sNumber;
    }

    public void setsNumber(String sNumber) {
        this.sNumber = sNumber;
    }

    public String getSindexPoint() {
        return SindexPoint;
    }

    public void setSindexPoint(String SindexPoint) {
        this.SindexPoint = SindexPoint;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Question{" +
        "id=" + id +
        ", qID=" + qID +
        ", fNumber=" + fNumber +
        ", FindexPoint=" + FindexPoint +
        ", sNumber=" + sNumber +
        ", SindexPoint=" + SindexPoint +
        "}";
    }
}
