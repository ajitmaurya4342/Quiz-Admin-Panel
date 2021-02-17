import React, { useEffect, useState } from 'react';
import { useHistory } from 'react-router-dom';
import {
  Card,
  CardBody,
  CardHeader,
  Col,
  Row,
  Table,
  Button,
} from 'reactstrap';
import QuestionService from '../apiServices/QuestionService';
import { MdEdit } from 'react-icons/md';

const QuestionListPage = props => {
  let history = useHistory();
  const [questionDataArray, newQuestionDataArray] = useState([]);
  useEffect(() => {
    getUserList();
  }, []);
  const getUserList = e => {
    // ... submit to API or something
    QuestionService.GetQuestionList()
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          newQuestionDataArray(data.Record.data);
        } else {
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});
  };

  function handleNewQuestion() {
    history.push('/questionForm', {
      question_id: '',
    });
  }
  function handleEditQuestion(id) {
    history.push('/questionForm', {
      question_id: id,
    });
  }

  return (
    <div className="mb-3">
      <Row>
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>
              Questions{' '}
              <Button
                color="success"
                onClick={handleNewQuestion}
                className="float-right"
              >
                Add Question
              </Button>{' '}
            </CardHeader>

            <CardBody>
              <Table responsive>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Question</th>
                    <th>Options</th>
                    <th>Correct Options</th>
                    <th>Type</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  {questionDataArray.map((item, index) => {
                    return (
                      <tr>
                        <th scope="row">{index + 1}</th>
                        <td>{item.question}</td>
                        <td>{item.options}</td>
                        <td>{item.correct_options}</td>
                        <td>{item.question_type}</td>
                        <td>
                          {item.question_is_active === '1'
                            ? 'Active'
                            : 'Deleted'}
                        </td>
                        <td>
                          <Button
                            onClick={() => handleEditQuestion(item.question_id)}
                            outline
                            color="success"
                            size="sm"
                          >
                            <MdEdit /> Edit
                          </Button>{' '}
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </Table>
            </CardBody>
          </Card>
        </Col>
      </Row>
    </div>
  );
};

export default QuestionListPage;
