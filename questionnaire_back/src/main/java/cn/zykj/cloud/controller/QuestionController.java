package cn.zykj.cloud.controller;


import cn.zykj.cloud.entity.*;
import cn.zykj.cloud.service.*;
import cn.zykj.cloud.utils.Auth;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.TResult;
import cn.zykj.cloud.utils.TResultCode;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
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
@Auth(Role = Constants.QUESTIONNAIRE_ROLE)
@RequestMapping("/question")
public class QuestionController {

    private QuestionService qService;

    private IndexPointMsgService msgService;
    private TeachingProgramService getClassIDService;
    private ScoreService getStudentService;
    private StudentService studentService;
    @Autowired
    public QuestionController(QuestionService qservice, IndexPointMsgService msg, TeachingProgramService classID, ScoreService score, StudentService student){
        this.qService = qservice;
        this.msgService = msg;
        this.getClassIDService = classID;
        this.getStudentService = score;
        this.studentService = student;
    }

    //查看某一个正在进行的问卷题目---再根据问卷的id 查询题目list
    @PostMapping(value = "getQuestion")
    public  TResult getQuestion(HttpServletRequest request,String qid){

        List<Question> question = qService.list(new QueryWrapper<Question>().eq("qID",qid));
        if(!question.isEmpty()){
            return TResult.success(formatResult(question));
        }else{
            return TResult.failure(TResultCode.QUESTION_GET_ERROR);
        }

    }

    // 将查询到的指标点按照指标点的等级排序
    private List<Question> formatResult(List<Question> q){

       List<Question> result = q.stream().sorted(Comparator.comparing(Question::getfNumber).thenComparing(Question::getsNumber)).collect(Collectors.toList());
        return result;
    }

    //加载指标点与学生，已经加载过的直接返回成功，避免重复数据
    @PostMapping(value = "load")
    public TResult loading(HttpServletRequest request,String qid, String year,String major){

        List<Question> questionList = qService.list(new QueryWrapper<Question>().eq("qid",qid));

        //判断问卷id（qid）是否在question中存在，若存在，表示问卷题目加载过了，不需要重新加载
        if(!questionList.isEmpty()){
            //更新
            removeQuestion(qid);
            loadQuestion(qid,year,major);
            return TResult.success(TResultCode.QUESTION_GET_SUCCESS); //题目拉取成功

        }else if(loadQuestion(qid,year,major) && loadStudent(year,major)){
            return TResult.success(TResultCode.QUESTION_GET_SUCCESS); //题目拉取成功
        }else {
          // 清空题目
             removeQuestion(qid);
             return TResult.failure(TResultCode.QUESTION_GET_ERROR);
        }

    }

    // 加载外部的指标点
    private boolean loadQuestion(String qid, String year,String major){

        //查询L1指标点，，，
        List<Object> listMsgFirst = msgService.listObjs(new QueryWrapper<IndexPointMsg>().lambda()
                                            .eq(IndexPointMsg::getYear,year)
                                            .eq(IndexPointMsg::getMajor,major)
                                            .eq(IndexPointMsg::getType,"L1"));
        //查询L2 指标点
        List<Object> listMsgSecond = msgService.listObjs(new QueryWrapper<IndexPointMsg>().lambda()
                                                .eq(IndexPointMsg::getYear,year)
                                                .eq(IndexPointMsg::getMajor,major)
                                                .eq(IndexPointMsg::getType,"L2"));

        if(listMsgFirst.size() > 0 && listMsgSecond.size() > 0){
            for(int i = 0; i < listMsgFirst.size(); i++){
                IndexPointMsg fPoint = (IndexPointMsg)listMsgFirst.get(i);
                for(int j = 0; j<listMsgSecond.size();j++){
                    IndexPointMsg sPoint = (IndexPointMsg)listMsgSecond.get(j);
                    Question question = new Question();
                    question.setqID(qid);
                    question.setfNumber(Integer.parseInt(fPoint.getPoint()));
                    question.setFindexPoint(fPoint.getM());
                    if(Integer.parseInt(fPoint.getPoint()) == (int)Float.parseFloat(sPoint.getPoint())){
                        question.setsNumber(sPoint.getPoint());
                        question.setSindexPoint(sPoint.getM());
                        qService.save(question);
                    }
                }
            }
            return true; //题目拉取成功
        }else{
            return false; //问卷题目拉取失败
        }
    }

    // 加载学生
    private boolean loadStudent(String year,String major){
        List<Score> stuList = getStudentService.list(new QueryWrapper<Score>().lambda()
                .eq(Score::getYear,year)
                .eq(Score::getMajor,major));
        List<Score> distScore = distinctList(stuList);
        for(int j = 0; j < distScore.size();j++){
            Score score = (Score) distScore.get(j);
            Student stu = new Student(); // 加载学生
            stu.setYear(year);
            stu.setMajor(major);
            stu.setSno(score.getSno());
            stu.setSname(score.getSname());
            studentService.save(stu);

        }
        return true;

    }

    // Score的 list去除重复值
    private List<Score> distinctList(List<Score> studentList){
        return studentList.stream().collect(
                Collectors.collectingAndThen(Collectors.toCollection(
                        () -> new TreeSet<>(Comparator.comparing(Score::getSno))), ArrayList::new));

    }

    //清空question
    private boolean removeQuestion(String qid){
        return qService.remove(new QueryWrapper<Question>().eq("qid",qid));
    }





}


