package cn.zykj.cloud.controller;


import cn.zykj.cloud.entity.*;
import cn.zykj.cloud.service.*;
import cn.zykj.cloud.service.impl.StudentServiceImpl;
import cn.zykj.cloud.utils.Auth;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.TResult;
import cn.zykj.cloud.utils.TResultCode;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Zxy
 * @since 2019-01-29
 */
@RestController
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService; //操作学生
    @Autowired
    private QuestionnaireService qnService; // 操作问卷
    @Autowired
    private QuestionService qService; //操作题目
    @Autowired
    private StudentServiceImpl studentServiceImp; //操作学生
    @Autowired
    private CountMajorPointService countMajorPointService;
    @Autowired
    private ScoreService scoreService;

    @Autowired
    private IndexPointMsgService indexPointMsgService;


    /*@Autowired
    public StudentController(StudentService studentService,QuestionService qService,QuestionnaireService qnService,StudentServiceImpl studentServiceImp,CountMajorPointService countMajorPointService,ScoreService scoreService){
        this.studentService = studentService;
        this.qnService = qnService;
        this.qService = qService;
        this.studentServiceImp = studentServiceImp;
        this.countMajorPointService = countMajorPointService;
        this.scoreService = scoreService;

    }*/

    @PostMapping("login")
    public TResult studentLogin(HttpServletResponse response, String sno, String sname){
       Student student = studentServiceImp.studentLogin(sno,sname);

        if (student != null) {
            response.setHeader(Constants.TOKEN_NAME, student.getToken());
            return TResult.success(student);
        } else {
            return TResult.failure(TResultCode.LOGIN_FAILURE);
        }
    }


    @PostMapping(value = "answerQuestion")
    public TResult getQuestion(HttpServletRequest request,String year,String major){
        return TResult.success(getQuestionByQid(getQidByMajorYear(year,major)));
    }
    //根据年份+专业获得问卷的ID
    private String getQidByMajorYear(String year,String major){
        Questionnaire questionnaire = qnService.getOne(new QueryWrapper<Questionnaire>().lambda()
                .eq(Questionnaire::getYear,year)
                .eq(Questionnaire::getMajor,major));
        return questionnaire.getQid();
    }

    private List<Question> getQuestionByQid(String qid){
        List<Question> question = qService.list(new QueryWrapper<Question>().eq("qID",qid));
        if(!question.isEmpty()){
            List<Question> result = question.stream().sorted(Comparator.comparing(Question::getfNumber).thenComparing(Question::getsNumber)).collect(Collectors.toList());
            return result;
        }else{
           return null;
        }
    }

    // 根据qid 获取星级评分
    @PostMapping(value = "getStatScore")
    public TResult getStarScore(HttpServletRequest request,String qid){
        Questionnaire questionnaire = qnService.getById(qid);
        return TResult.success(questionnaire);
    }


    private TResult getMajorCountStudentPoint(String year, String major, String className, String sno) {
        return TResult.success(countMajorPointService.getMajorCountStudentPoint(year, major, className, sno));
    }

    @GetMapping(value ="getClassName")
    public  TResult getClassName(HttpServletRequest request,String sno,String sname,String year,String major){
        System.out.println("  "+sno+" "+sname+" "+year+" "+major);


        //异常处理，如果没有找到该学生的分数信息---表示在校信息为没有。
        Score score = scoreService.getOne(new QueryWrapper<Score>().lambda()
                .eq(Score::getSno,sno)
                .eq(Score::getSname,sname)
                .eq(Score::getYear,year)
                .eq(Score::getMajor,major));
        String className = score.getClassName();
        return getMajorCountStudentPoint(year, major, className, sno);

    }

    @GetMapping("/point")
    public TResult getL1IndexPoint(String year, String major, String option) {
        return TResult.success(indexPointMsgService.getAllL1(major, year, option));
    }

}

