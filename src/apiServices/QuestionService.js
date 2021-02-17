import Api from './Api';
import { API_VERSION } from '../config/index';

export default {
  AddQuestion(payload) {
    return Api().post('admin/addEditQuestion', payload);
  },
  GetQuestionList() {
    return Api().get(`admin/questionlist`);
  },

  EditQuestion(questionId) {
    return Api().get(`admin/questionlist?question_id=${questionId}`);
  },
  // Level Questions
  GetGameList() {
    return Api().get('admin/gamelist');
  },

  GetLevelList() {
    return Api().get('admin/LevelList');
  },
  GetLevelQuestionSetList() {
    return Api().get('admin/LevelQuestionSetList');
  },

  AddLevelQuestion(payload) {
    return Api().post('admin/addEditLevel', payload);
  },
  GetLevelQuestionList(questionType) {
    return Api().get(`admin/questionlist?question_type=${questionType}`);
  },

  //   GetSubmissionFeedbacks(payload) {
  //     return Api().post(
  //       `/${API_VERSION}/section/feedback/${payload.feedback_id}`,
  //       payload,
  //     );
  //   },
};
