package cn.zykj.cloud.service.impl;

import cn.zykj.cloud.entity.Question;
import cn.zykj.cloud.mapper.QuestionMapper;
import cn.zykj.cloud.service.QuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Zxy
 * @since 2019-01-31
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService {

}
