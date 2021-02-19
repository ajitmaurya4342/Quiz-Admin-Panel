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
  EditLevelList(level_id) {
    return Api().get(`admin/LevelList?level_id=${level_id}`);
  },
  GetLevelQuestionSetList() {
    return Api().get('admin/LevelQuestionSetList');
  },

  AddLevelQuestion(payload) {
    console.log(payload);
    return Api().post('admin/addEditLevel', payload);
  },
  GetLevelQuestionList() {
    return Api().get(`admin/questionlist?isUnique=1`);
  },

  //   GetSubmissionFeedbacks(payload) {
  //     return Api().post(
  //       `/${API_VERSION}/section/feedback/${payload.feedback_id}`,
  //       payload,
  //     );
  //   },
};
