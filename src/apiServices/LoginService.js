import Api from './Api';
import { API_VERSION } from '../config/index';

export default {
  LoginUser(payload) {
    return Api().post('admin/login', payload);
  },
  //   GetSubmissionFeedbacks(payload) {
  //     return Api().post(
  //       `/${API_VERSION}/section/feedback/${payload.feedback_id}`,
  //       payload,
  //     );
  //   },
};
