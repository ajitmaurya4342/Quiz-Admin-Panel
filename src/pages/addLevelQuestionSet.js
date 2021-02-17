import React, { useState, useEffect } from 'react';
import QuestionService from '../apiServices/QuestionService';
import BootstrapTable from 'react-bootstrap-table-next';

import filterFactory, { textFilter } from 'react-bootstrap-table2-filter';
import paginationFactory, {
  PaginationProvider,
} from 'react-bootstrap-table2-paginator';
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  Col,
  Form,
  FormGroup,
  FormText,
  Input,
  Label,
  Row,
  Table,
} from 'reactstrap';

const FormPage = props => {
  const initialFormData = Object({
    level_q_id: '',
    game_id: '',
    level_id: '',
    level_q_is_active: '1',
    question_id: [],
    dummyquestion_id: '',
  });
  const [formData, updateFormData] = useState(initialFormData);
  const [gameData, updateGameData] = useState([]);
  const [levelData, updateLevelData] = useState([]);
  const [questionDataArray, newQuestionDataArray] = useState([]);
  const [levelAddedAnsAry, updateAnswerArry] = useState([]);
  const columnsAdded = [
    {
      dataField: 'question',
      text: 'Question',
      filter: textFilter(),
    },
    {
      dataField: 'question_type',
      text: 'Type',
      filter: textFilter(),
    },

    {
      dataField: '',
      text: 'Action',
      formatter: (cellContent, row) => (
        <div className="checkbox disabled">
          <Button
            onClick={() => AddNewQuestion()}
            outline
            color="success"
            size="sm"
          >
            Edit
          </Button>{' '}
        </div>
      ),
    },
  ];

  const columns = [
    {
      dataField: 'question',
      text: 'Question',
      filter: textFilter(),
    },
    {
      dataField: 'question_type',
      text: 'Type',
      filter: textFilter(),
    },

    {
      dataField: '',
      text: 'Action',
      formatter: (cellContent, row) => (
        <div className="checkbox disabled">
          <Button
            onClick={() => AddNewQuestion()}
            outline
            color="success"
            size="sm"
          >
            Edit
          </Button>{' '}
        </div>
      ),
    },
  ];

  function AddNewQuestion(row, rowIndex, id) {
    //let dummyV = [...levelAddedAnsAry];
    console.log(row, rowIndex, id);
    // let index = formData.question_id.indexOf(id);
    //  dummyV.push(row);
    console.log(levelAddedAnsAry, questionDataArray);
    // updateAnswerArry(dummyV);

    // updateFormData({
    //   ...formData,
    //   question_id: [...formData.question_id].push(id),
    // });
    // newQuestionDataArray([...questionDataArray].splice(rowIndex, 1));
    // console.log(levelAddedAnsAry, formData, questionDataArray, 'hkjh', dummyV);
  }
  const handleChange = e => {
    updateFormData({
      ...formData,
      // Trimming any whitespace
      [e.target.name]: e.target.value.trim(),
    });
    console.log(e.target.name);
    if (e.target.name === 'game_id') {
      let filterGameLevel = levelData.filter(x => {
        return x.game_id == e.target.value;
      });
      if (filterGameLevel.length > 0) {
        updateLevelData(filterGameLevel);
      }
    }

    if (e.target.name === 'dummyquestion_id') {
      let index = formData.question_id.indexOf(e.target.value);
      if (index > -1) {
        formData.question_id.splice(index, 1);
      } else {
        formData.question_id.push(e.target.value);
      }
      formData.dummyquestion_id = '';
    }
  };

  useEffect(() => {
    if (props.location.state.level_id) {
      QuestionService.EditLevelList(props.location.state.level_id)
        .then(response => {
          const { data } = response;
          if (data) {
            console.log(data.Record.data[0], 'j', data);
            updateFormData(data.Record.data[0]);
            updateAnswerArry(data.questionArray);
          } else {
            console.log('hghj');
          }
        })
        .catch(error => {
          console.log('On Catch Add_Submission_Tagging_User', error);
        })
        .finally(() => {});
    }

    QuestionService.GetGameList()
      .then(response => {
        const { data } = response;
        if (data) {
          updateGameData(data.Record.data);
        } else {
          console.log('hghj');
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});
    QuestionService.GetLevelList()
      .then(response => {
        const { data } = response;
        if (data) {
          updateLevelData(data.Record.data);
        } else {
          console.log('hghj');
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});
    getQuestions();
    // ... submit to API or something
  }, []);
  const getQuestions = e => {
    QuestionService.GetLevelQuestionList()
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
  const handleSubmit = e => {
    e.preventDefault();

    QuestionService.AddLevelQuestion(formData)
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
  return (
    <div className="mb-3">
      <Row>
        <Col sm="12" md={{ size: 10, offset: 1 }}>
          <Card>
            <CardHeader>
              <b>Questions</b>
            </CardHeader>
            <CardBody>
              <Form>
                <FormGroup>
                  <Label for="exampleGame">Game</Label>
                  <Input
                    value={formData.game_id}
                    type="select"
                    name="game_id"
                    onChange={handleChange}
                  >
                    <option value="">Select Game</option>
                    {gameData.map((item, index) => (
                      <option value={item.game_id}>{item.game_name}</option>
                    ))}
                  </Input>
                </FormGroup>

                <FormGroup>
                  <Label for="exampleGame">Level</Label>
                  <Input
                    value={formData.level_id}
                    type="select"
                    name="level_id"
                    onChange={handleChange}
                    disabled={formData.game_id === '' ? true : false}
                  >
                    <option value="">Select Level</option>
                    {levelData.map((item, index) => (
                      <option value={item.level_id}>{item.level}</option>
                    ))}
                  </Input>
                </FormGroup>
                <BootstrapTable
                  keyField="id"
                  data={levelAddedAnsAry}
                  columns={columns}
                  pagination={paginationFactory()}
                  filter={filterFactory()}
                />
                <BootstrapTable
                  keyField="id1"
                  data={questionDataArray}
                  columns={columnsAdded}
                  pagination={paginationFactory()}
                  filter={filterFactory()}
                />

                {/* {questionDataArray.length > 0 && (
                  <Table responsive className="mt-3">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Question</th>
                        <th>Type</th>
                      </tr>
                    </thead>
                    <tbody>
                      {questionDataArray.map((item, index) => {
                        return (
                          <tr>
                            <th scope="row">
                              {' '}
                              <FormGroup check>
                                <Input
                                  name="dummyquestion_id"
                                  value={item.question_id}
                                  onChange={handleChange}
                                  type="checkbox"
                                />{' '}
                              </FormGroup>
                            </th>
                            <td>{item.question}</td>

                            <td>{item.question_type}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </Table>
                )}*/}
                {formData.question_id.length > 0 && (
                  <div className="mt-3">
                    <Button color="success" onClick={handleSubmit}>
                      Submit
                    </Button>
                  </div>
                )}
              </Form>
            </CardBody>
          </Card>
        </Col>
      </Row>
    </div>
  );
};

export default FormPage;
