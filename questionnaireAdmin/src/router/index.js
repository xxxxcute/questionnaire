import Vue from 'vue'
import Router from 'vue-router'
import login from '@/views/login'
import manage from '@/components/layout'
import errorPage from '@/views/error'
import SetQuestionnaire from '@/views/SetQuestionnaire'
import CheckQuestionnaire from '@/views/CheckQuestionnaire'
import QuestionDetil from '@/views/CheckQuestionnaire/question'

import CheckAnswers from '@/views/CheckAnswers'
import AnswerDetil from '@/views/CheckAnswers/AnswerDetil'
import StudentAnswer from '@/views/CheckAnswers/StudentsAnswer'

import AnswerSheet from '@/views/AnswerSheet'
import AnswerResult from '@/views/AnswerResult'
Vue.use(Router)

export default new Router({
  /* mode: 'history', */
  routes: [
    {
      path: '/',
      name: 'login',
      component: login
    },
    {
      path: '/manage',
      name: 'manage',
      component: manage,
      children: [
        {
          path: 'setquestionnaire',
          name: 'setquestionnaire',
          component: SetQuestionnaire
        },
        {
          path: 'checkquestionnaire',
          name: 'checkquestionnaire',
          component: CheckQuestionnaire
        },
        {
          path: 'checkanswers',
          name: 'checkanswers',
          component: CheckAnswers
        },
        {
          path: 'quesitiondetil',
          name: 'quesitiondetil',
          component: QuestionDetil
        },
        {
          path: 'answerdetil',
          name: 'answerdetil',
          component: AnswerDetil
        },
        {
          path: 'studentanswer',
          name: 'studentanswer',
          component: StudentAnswer
        }
      ]
    },
    {
      path: '/answersheet',
      name: 'answersheet',
      component: AnswerSheet
    },
    {
      path: '/answerresult',
      name: 'answerresult',
      component: AnswerResult
    },
    {
      path: '*',
      name: 'errorPage',
      component: errorPage
    }
  ]
})
