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
  const [levelAddedAnsAry, updateAnswerArry] = useState([]);

  const [questionDataArray, newQuestionDataArray] = useState([]);


  const columns = [
    {
      dataField: 'question',
      text: 'Question',
      filter: textFilter(),
      formatter: (cellContent, row, rowIndex) => (
        <div className="checkbox disabled">
          {row.question_type == 1 && <td>{row.question}</td>}
          {row.question_type == 2 && <td><img src={row.question} style={{ width: "25%" }} /> </td>}
        </div>
      ),
    },
    {
      dataField: 'question_type',
      text: 'Type',
      filter: textFilter(),
    },

    {
      dataField: '',
      text: 'Action',
      formatter: (cellContent, row, rowIndex) => (
        <div className="checkbox disabled">
          <Button
            onClick={() => AddNewQuestion(row, rowIndex)}
            outline
            color="success"
            size="sm"
          >
            Add
          </Button>
        </div>
      ),
    },
  ];

  // const columnsAdded = [
  //   {
  //     dataField: 'question',
  //     text: 'Question',
  //     filter: textFilter(),
  //   },
  //   {
  //     dataField: 'question_type',
  //     text: 'Type',
  //     filter: textFilter(),
  //   },

  //   {
  //     dataField: '',
  //     text: 'Action',
  //     formatter: (cellContent, row) => (
  //       <div className="checkbox disabled">
  //         <Button
  //           onClick={() => AddNewQuestion2()}
  //           outline
  //           color="success"
  //           size="sm"
  //         >
  //           Edit
  //         </Button>
  //       </div>
  //     ),
  //   },
  // ];



  function AddNewQuestion(row, rowIndex) {
    let dummyV = [...levelAddedAnsAry];
    console.log(row, rowIndex);
    // let index = formData.question_id.indexOf(id);
    dummyV.push(row);
    console.log(levelAddedAnsAry, questionDataArray);
    updateAnswerArry(dummyV);

    let objFormData = { ...formData };
    objFormData["question_id"].push(row.question_id)
    console.log(objFormData);

    updateFormData(objFormData)


    let newDummyV1 = [...questionDataArray];
    newDummyV1.splice(rowIndex, 1);
    console.log(newDummyV1);
    newQuestionDataArray(newDummyV1);
    // console.log(levelAddedAnsAry, formData, questionDataArray, 'hkjh', dummyV);
  }
  function RemoveQuestion(row, rowIndex) {

    let newDummyV1 = [row, ...questionDataArray];
    // newDummyV1.push(row);
    console.log(newDummyV1);
    newQuestionDataArray(newDummyV1);


    let dummyV = [...levelAddedAnsAry];
    console.log(row, rowIndex);
    dummyV.splice(rowIndex, 1);
    console.log(dummyV);
    updateAnswerArry(dummyV);

    let objFormData = { ...formData };
    let indexCheck = objFormData["question_id"].indexOf(row.question_id);
    objFormData["question_id"].splice(indexCheck, 1);
    console.log(objFormData);

    updateFormData(objFormData)

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
        .finally(() => { });
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
      .finally(() => { });
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
      .finally(() => { });
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
      .finally(() => { });
  };
  const handleSubmit = e => {
    alert("fsddfsdf")
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
      .finally(() => { });

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
                <h4>Added Question:</h4>
                {levelAddedAnsAry.length > 0 && (
                  <Table responsive className="mt-3">
                    <thead>
                      <tr>

                        <th>SR.No</th>
                        <th>Question</th>
                        <th>Type</th>
                        <th>#</th>
                      </tr>
                    </thead>
                    <tbody>
                      {levelAddedAnsAry.map((item, index) => {
                        return (
                          <tr>

                            <td>{index + 1}</td>
                            {item.question_type == 1 && <td>{item.question}</td>}
                            {item.question_type == 2 && <td><img src={item.question} style={{ width: "25%" }} /> </td>}

                            <td>{item.question_type}</td>
                            <th scope="row">
                              {' '}
                              <FormGroup check>
                                <div className="checkbox disabled">
                                  <Button
                                    onClick={() => RemoveQuestion(item, index)}
                                    outline
                                    color="success"
                                    size="sm"
                                  >
                                    Remove
          </Button>
                                </div>
                              </FormGroup>
                            </th>
                          </tr>
                        );
                      })}
                    </tbody>
                  </Table>
                )}


                <hr />
                <hr />
                <hr />
                <hr />

                {questionDataArray.length > 0 && <BootstrapTable
                  keyField="id1"
                  data={questionDataArray}
                  columns={columns}
                  pagination={paginationFactory()}
                  filter={filterFactory()}
                />}


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
