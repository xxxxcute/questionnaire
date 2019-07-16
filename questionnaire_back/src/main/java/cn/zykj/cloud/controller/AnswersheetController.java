package cn.zykj.cloud.controller;


import cn.zykj.cloud.entity.Answersheet;
import cn.zykj.cloud.entity.Question;
import cn.zykj.cloud.entity.Score;
import cn.zykj.cloud.entity.Student;
import cn.zykj.cloud.service.AnswersheetService;
import cn.zykj.cloud.service.StudentService;
import cn.zykj.cloud.utils.Auth;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.TResult;
import cn.zykj.cloud.utils.TResultCode;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

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
@RequestMapping("/answersheet")
public class AnswersheetController {

    private AnswersheetService answersheetService;
    private StudentService studentService;

    @Autowired
    public AnswersheetController(AnswersheetService answersheetService , StudentService studentService){
        this.answersheetService = answersheetService;
        this.studentService = studentService;
    }

    @PostMapping(value = "save")
    public TResult saveAnswerResult(HttpServletRequest request,@RequestBody String result){

        // 对结果进行处理
        String[] resultArr = result.split("&");
        List<String> sIndexArr = new ArrayList<String>();
        List<String> scoreArr = new ArrayList<String>();

        List<Answersheet> ansList = new ArrayList<Answersheet>();

        int len = resultArr.length;
        String sno = resultArr[0].replace("result%5Bsno%5D=","");
        String qid = resultArr[len/5].replace("result%5Bqid%5D=","");

        int sindexStartLen = (len/5)*3;
        int scoreStartLen = (len/5)*4;


        for(int i = sindexStartLen; i<scoreStartLen;i++){
            sIndexArr.add(resultArr[i]);
        }
        for(int i = scoreStartLen; i<resultArr.length;i++){
            scoreArr.add(resultArr[i]);
        }

        for(int i = 0; i< sIndexArr.size();i++){
            Answersheet answersheet  = new Answersheet();
            answersheet.setSno(sno);
            answersheet.setQid(qid);
            String fNumber = sIndexArr.get(i).substring(0,sIndexArr.get(i).indexOf("."));
            answersheet.setFindexPoint(fNumber.replace("result%5BSindexPoint%5D=",""));
            answersheet.setSindexPoint(sIndexArr.get(i).replace("result%5BSindexPoint%5D=",""));
            answersheet.setScore(scoreArr.get(i).replace("result%5Bscore%5D=",""));
            ansList.add(answersheet);

        }

        int count = answersheetService.count(new QueryWrapper<Answersheet>().lambda()
                .eq(Answersheet::getSno,sno)
                .eq(Answersheet::getQid,qid));
        if(count > 0){
            if(answersheetService.remove(new QueryWrapper<Answersheet>().lambda()
                    .eq(Answersheet::getSno,sno)
                    .eq(Answersheet::getQid,qid))){
                if(answersheetService.saveBatch(ansList,10)){
                    return TResult.success(TResultCode.SUCCESS);
                }else {
                    return TResult.failure(TResultCode.FAILURE);
                }
            }else {
                return TResult.failure(TResultCode.FAILURE);
            }
        } else {
            //批量插入
            if(answersheetService.saveBatch(ansList,10)){
                return TResult.success(TResultCode.SUCCESS);
            }else {
                return TResult.failure(TResultCode.FAILURE);
            }
        }


    }

    // 查找所有的学生信息
    @PostMapping(value = "getStudents")
    public TResult getStudent(HttpServletRequest request,String id){
        List<Answersheet> answersheets = answersheetService.list(new QueryWrapper<Answersheet>().eq("qid",id));
        List<Answersheet> distinctAns = answersheets.stream().collect(
                Collectors.collectingAndThen(Collectors.toCollection(
                        () -> new TreeSet<>(Comparator.comparing(Answersheet::getSno))), ArrayList::new));

        List<String> snoList = new ArrayList<String>();
        List<Student> students = new ArrayList<Student>();
        for (int i =0; i < distinctAns.size();i++){
            snoList.add(distinctAns.get(i).getSno());
            for (int j = 0;j < snoList.size();j++){
                Student student =studentService.getOne(new QueryWrapper<Student>().eq("sno",snoList.get(j)));
                students.add(student);
            }
        }
        return TResult.success(students);
    }

    //根据学号查找该学生的所答问卷的题目
    @PostMapping(value = "getStudentAnswer")
    public TResult getStudentAnswers(HttpServletRequest request,String sno){
        List<Answersheet> answersheets = answersheetService.list(new QueryWrapper<Answersheet>().eq("sno",sno));
        List<Answersheet> sortAnswer =  answersheets.stream().sorted(Comparator.comparing(Answersheet::getFindexPoint).thenComparing(Answersheet::getSindexPoint)).collect(Collectors.toList());

        return TResult.success(sortAnswer);
    }

}

