package cn.zykj.cloud.controller;


import cn.zykj.cloud.entity.*;
import cn.zykj.cloud.service.AnswersheetService;
import cn.zykj.cloud.service.QuestionService;
import cn.zykj.cloud.service.QuestionnaireService;
import cn.zykj.cloud.service.StudentService;
import cn.zykj.cloud.utils.*;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Zxy
 * @since 2019-01-23
 */
@RestController
@Auth(Role = Constants.QUESTIONNAIRE_ROLE)
@RequestMapping("/questionnaire")
public class QuestionnaireController {

    private QuestionnaireService qnService; // 操作问卷
    private QuestionService qService; // 操作题目
    private StudentService studentService; // 操作学生
    private AnswersheetService answersheetService;// 操作答卷

    @Autowired
    public QuestionnaireController(QuestionnaireService qnService,QuestionService qService,StudentService studentService,AnswersheetService answersheetService){
        this.qnService = qnService;
        this.qService = qService;
        this.studentService = studentService;
        this.answersheetService = answersheetService;
    }



    // 设置（保存）问卷信息
   @PostMapping(value="setQnaire")
    public TResult setQuestionnaire(HttpServletRequest request, Questionnaire qusInfo){

        Questionnaire q = qnService.getOne(new QueryWrapper<Questionnaire>().lambda()
                .eq(Questionnaire::getYear,qusInfo.getYear())
                .eq(Questionnaire::getMajor,qusInfo.getMajor()));
        if(q != null){  //更新经存在年份与专业
            qusInfo.setQid(q.getQid());
            return TResult.success(qnService.updateById(qusInfo));
        }else if(qnService.save(qusInfo)){ // 不存在该年份与专业的问卷--插入新的问卷
            Questionnaire queForId = qnService.getOne(new QueryWrapper<Questionnaire>().lambda()
                    .eq(Questionnaire::getYear,qusInfo.getYear())
                    .eq(Questionnaire::getMajor,qusInfo.getMajor()));

                return TResult.success(true);

        }else{
            return TResult.failure(TResultCode.FAILURE);
        }

    }

    //查看问卷---所有问卷
    @GetMapping(value = "ongoingInves")
    public TResult ongoingInves() {
        List<Object> qList = qnService.listObjs(new QueryWrapper<Questionnaire>());
        if(qList != null || !qList.isEmpty()){
            return TResult.success(qList);
        }else{
            return TResult.failure(TResultCode.FAILURE); // 当前没有调查中的问卷
        }
    }

    //查看所有的已经开始的问卷
    @PostMapping("startedQuestionnaire")
    public TResult getStartedQuestionnaire(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String day = df.format(new Date());
        List<Object> qList = qnService.listObjs(new QueryWrapper<Questionnaire>().lambda()
                .le(Questionnaire::getStartTime,day));
        if(qList != null || !qList.isEmpty()){
            return TResult.success(qList);
        }else{
            return TResult.failure(TResultCode.FAILURE);
        }
    }

    @PostMapping(value = "getQuestionnaireById")
    public TResult getQuestionnaireById(HttpServletRequest request,String id){
        Questionnaire result = qnService.getById(id);
        return TResult.success(result);
    }

    //根据年份+专业获得问卷的ID
    public String getQidByMajorYear(String year,String major){
       Questionnaire questionnaire = qnService.getOne(new QueryWrapper<Questionnaire>().lambda()
                                        .eq(Questionnaire::getYear,year)
                                        .eq(Questionnaire::getMajor,major));
       return questionnaire.getQid();
    }

    //删除问卷
    @PostMapping(value = "delete")
    public TResult deleteQuestion(HttpServletRequest request,String qid, String year,String major){
        studentService.remove(new QueryWrapper<Student>().lambda()
                .eq(Student::getMajor,major)
                .eq(Student::getYear,year));
        qService.remove(new QueryWrapper<Question>().eq("qid",qid));
        qnService.remove(new QueryWrapper<Questionnaire>().eq("qid",qid));
        answersheetService.remove(new QueryWrapper<Answersheet>().eq("qid",qid));
        return TResult.success(TResultCode.SUCCESS);
    }
}

