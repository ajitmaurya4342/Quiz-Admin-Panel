import Api from './Api';
import { API_VERSION } from '../config/index';

export default {
  GetUserList() {
    return Api().get('admin/dashboard_user');
  },
  //   GetSubmissionFeedbacks(payload) {
  //     return Api().post(
  //       `/${API_VERSION}/section/feedback/${payload.feedback_id}`,
  //       payload,
  //     );
  //   },
};
