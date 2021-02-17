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
    QuestionService.GetLevelQuestionSetList()
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

  const handleEditLevlQ = item => {
    item.level_q_is_active = '0';
    console.log(item);

    QuestionService.AddLevelQuestion(item)
      .then(response => {
        const { data } = response;
        if (data) {
          // alert();
        } else {
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});

    // ... submit to API or something
  };

  function handleNewQuestion() {
    history.push('/AddLevelQuestionSet', {
      level_q_id: '',
    });
  }
  // function handleEditQuestion(id) {
  //   history.push('/questionForm', {
  //     level_q_id: id,
  //   });
  // }

  return (
    <div className="mb-3">
      <Row>
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>
              Level Set{' '}
              <Button
                color="success"
                onClick={handleNewQuestion}
                className="float-right"
              >
                Add New Set
              </Button>{' '}
            </CardHeader>

            <CardBody>
              <Table responsive>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Question</th>
                    <th>Game</th>
                    <th>Level</th>
                    <th>Type</th>

                    <th>Remove</th>
                  </tr>
                </thead>
                <tbody>
                  {questionDataArray.map((item, index) => {
                    return (
                      <tr>
                        <th scope="row">{index + 1}</th>
                        <td>{item.question}</td>
                        <td>{item.game_name}</td>
                        <td>{item.level}</td>

                        <td>
                          {item.question_type === '1'
                            ? 'Image'
                            : item.question_type === '2'
                            ? 'Math'
                            : item.question_type === '3'
                            ? 'General'
                            : item.question_type === '4'
                            ? 'Logo'
                            : item.question_type}
                        </td>
                        <td>
                          <div className="custom-control custom-switch">
                            <input
                              onClick={() => handleEditLevlQ(item)}
                              type="checkbox"
                              className="custom-control-input"
                              id={index}
                            />
                            <label
                              className="custom-control-label"
                              htmlFor={index}
                            >
                              Remove Question
                            </label>
                          </div>
                          {/* <Button
                            onClick={() => handleEditQuestion(item.question_id)}
                            outline
                            color="success"
                            size="sm"
                          >
                            <MdEdit /> Edit
                          </Button>{' '} */}
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
