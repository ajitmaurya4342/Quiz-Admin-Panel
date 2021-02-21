import React, { useState, useEffect } from 'react';
import QuestionService from '../apiServices/QuestionService';
import BootstrapTable from 'react-bootstrap-table-next';
import Iframe from 'react-iframe';

import filterFactory, { textFilter } from 'react-bootstrap-table2-filter';
import paginationFactory, {
  PaginationProvider,
} from 'react-bootstrap-table2-paginator';
import { MdRemove } from 'react-icons/md';
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
    game_name: '',
    level: '',
  });
  const [formData, updateFormData] = useState(initialFormData);
  const [gameData, updateGameData] = useState([]);
  const [searchData, updatesearchData] = useState('');
  const [levelData, updateLevelData] = useState([]);
  const [levelAddedAnsAry, updateAnswerArry] = useState([]);

  const [questionDataArray, newQuestionDataArray] = useState([]);
  const [tempQuestionDataArray, newTempQuestionDataArray] = useState([]);

  // const columns = [
  //   {
  //     dataField: 'question',
  //     text: 'Question',
  //     filter: textFilter(),
  //     formatter: (cellContent, row, rowIndex) => (
  //       <div className="checkbox disabled">
  //         {row.question_type == 1 && <td>{row.question}</td>}
  //         {row.question_type == 2 && <td><img src={row.question} style={{ width: "25%" }} /> </td>}
  //       </div>
  //     ),
  //   },
  //   {
  //     dataField: 'question_type',
  //     text: 'Type',
  //     filter: textFilter(),
  //   },

  //   {
  //     dataField: '',
  //     text: 'Action',
  //     formatter: (cellContent, row, rowIndex) => (
  //       <div className="checkbox disabled">
  //         <Button
  //           onClick={() => AddNewQuestion(row, rowIndex)}
  //           outline
  //           color="success"
  //           size="sm"
  //         >
  //           Add
  //         </Button>
  //       </div>
  //     ),
  //   },
  // ];

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

  function searchTable(e) {
    updatesearchData(e.target.value);

    let arrayNew = tempQuestionDataArray.filter(x => {
      return (
        x.question_type
          .toLowerCase()
          .toString()
          .includes(e.target.value.toLowerCase()) ||
        x.question.toLowerCase().includes(e.target.value.toLowerCase())
      );
    });

    newQuestionDataArray(arrayNew);

    console.log(arrayNew);
  }

  function AddQuestion(row, rowIndex) {
    let dummyV = [...levelAddedAnsAry];
    console.log(row, rowIndex);
    // let index = formData.question_id.indexOf(id);
    dummyV.push(row);
    console.log(levelAddedAnsAry, questionDataArray);
    updateAnswerArry(dummyV);

    let objFormData = { ...formData };
    objFormData['question_id'].push(row.question_id.toString());
    console.log(objFormData);

    updateFormData(objFormData);

    let newDummyV1 = [...questionDataArray];
    let findIndexNew = newDummyV1.findIndex(x => {
      return x.question_id == row.question_id;
    });
    newDummyV1.splice(findIndexNew, 1);
    console.log(newDummyV1);
    newQuestionDataArray(newDummyV1);

    let newDummyVTemp = [...tempQuestionDataArray];
    findIndexNew = newDummyVTemp.findIndex(x => {
      return x.question_id == row.question_id;
    });
    newDummyVTemp.splice(findIndexNew, 1);
    console.log(newDummyVTemp);
    newTempQuestionDataArray(newDummyVTemp);

    // console.log(levelAddedAnsAry, formData, questionDataArray, 'hkjh', dummyV);
  }
  function RemoveQuestion(row, rowIndex) {
    let newDummyV1 = [row, ...questionDataArray];
    // newDummyV1.push(row);
    console.log(newDummyV1);
    newQuestionDataArray(newDummyV1);

    let newDummyVTemp = [row, ...tempQuestionDataArray];
    // newDummyV1.push(row);
    console.log(newDummyVTemp);
    newTempQuestionDataArray(newDummyVTemp);

    let dummyV = [...levelAddedAnsAry];
    console.log(row, rowIndex);
    dummyV.splice(rowIndex, 1);
    console.log(dummyV);
    updateAnswerArry(dummyV);

    let objFormData = { ...formData };
    let indexCheck = objFormData['question_id'].indexOf(
      row.question_id.toString(),
    );
    objFormData['question_id'].splice(indexCheck, 1);
    console.log(objFormData);

    updateFormData(objFormData);
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
    // QuestionService.GetGameList()
    //   .then(response => {
    //     const { data } = response;
    //     if (data) {
    //       updateGameData(data.Record.data);
    //     } else {
    //       console.log('hghj');
    //     }
    //   })
    //   .catch(error => {
    //     console.log('On Catch Add_Submission_Tagging_User', error);
    //   })
    //   .finally(() => {});
    // QuestionService.GetLevelList()
    //   .then(response => {
    //     const { data } = response;
    //     if (data) {
    //       updateLevelData(data.Record.data);
    //     } else {
    //       console.log('hghj');
    //     }
    //   })
    //   .catch(error => {
    //     console.log('On Catch Add_Submission_Tagging_User', error);
    //   })
    //   .finally(() => {});
    getQuestions();
    // ... submit to API or something
  }, []);
  function getQuestions() {
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
    QuestionService.GetLevelQuestionList()
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          newQuestionDataArray(data.Record.data);
          newTempQuestionDataArray(data.Record.data);
        } else {
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});
  }
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
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>
              <b>Level Questions Set</b>
              <br></br>
              <br></br>
              <b>Game : {formData.game_name}</b>
              <br></br>
              <b>Level : {formData.level}</b>
            </CardHeader>

            <CardBody>
              <Form>
                <div className="row">
                  <div className="col-md-6">
                    <label>
                      Added Question{' '}
                      <b>
                        {''} {levelAddedAnsAry.length}
                      </b>
                    </label>
                  </div>
                  <div className="col-md-6">
                    <FormGroup>
                      <Label for="exampleGame">
                        All Questions{' '}
                        <b>
                          {''}
                          {questionDataArray.length}
                        </b>
                      </Label>
                    </FormGroup>
                  </div>
                </div>

                <div className="row">
                  <div
                    className="col-md-6"
                    style={{
                      maxHeight: '600px',

                      overflowY: 'auto',
                    }}
                  >
                    {levelAddedAnsAry.length > 0 && (
                      <Table responsive bordered>
                        <thead>
                          <tr>
                            {/* <th>SR.No</th> */}
                            <th>Question</th>
                            <th>Type</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          {levelAddedAnsAry.map((item, index) => {
                            return (
                              <tr>
                                {/* <td>{index + 1}</td> */}
                                {item.question_type == 1 && (
                                  <td>{item.question}</td>
                                )}
                                {item.question_type == 2 && (
                                  <td>
                                    <Iframe
                                      url={item.question}
                                      width="120px"
                                      height="120px"
                                      id="myId"
                                      className="myClassname"
                                      display="initial"
                                      position="relative"
                                    />
                                    {/* <img
                                      src={item.question}
                                      style={{ width: '25%' }}
                                    />{' '} */}
                                  </td>
                                )}

                                <td>
                                  {item.question_type == '2'
                                    ? 'Image'
                                    : 'Question'}
                                </td>
                                <th scope="row">
                                  {' '}
                                  <FormGroup check>
                                    <div className="checkbox disabled">
                                      <Button
                                        onClick={() =>
                                          RemoveQuestion(item, index)
                                        }
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
                  </div>

                  <div
                    className="col-md-6"
                    style={{
                      maxHeight: '600px',

                      overflowY: 'auto',
                    }}
                  >
                    <div>
                      <FormGroup>
                        <Input
                          value={searchData}
                          type="text"
                          placeHolder="Search Question"
                          name="level_id"
                          onChange={searchTable}
                        >
                          <option value="">Select Level</option>
                          {levelData.map((item, index) => (
                            <option value={item.level_id}>{item.level}</option>
                          ))}
                        </Input>
                      </FormGroup>
                    </div>

                    {questionDataArray.length > 0 && (
                      <Table responsive bordered className="mt-2">
                        <thead>
                          <tr>
                            {/* <th>SR.No</th> */}
                            <th>Question</th>
                            <th>Type</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          {questionDataArray.map((item, index) => {
                            return (
                              <tr>
                                {/* <td>{index + 1}</td> */}
                                {item.question_type == 1 && (
                                  <td>{item.question}</td>
                                )}
                                {item.question_type == 2 && (
                                  <td>
                                    <Iframe
                                      url={item.question}
                                      width="120px"
                                      height="120px"
                                      id="myId"
                                      className="myClassname"
                                      display="initial"
                                      position="relative"
                                    />
                                    {/* <img
                                      src={item.question}
                                      style={{ width: '25%' }}
                                    />{' '} */}
                                  </td>
                                )}

                                <td>
                                  {item.question_type == '2'
                                    ? 'Image'
                                    : 'Question'}
                                </td>
                                <th scope="row">
                                  {' '}
                                  <FormGroup check>
                                    <div className="checkbox disabled">
                                      <Button
                                        onClick={() => AddQuestion(item, index)}
                                        outline
                                        color="success"
                                        size="sm"
                                      >
                                        Add To Level
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
                  </div>
                </div>
                {/* <FormGroup>
                  <Label for="exampleGame">Game</Label>
                  <Input
                    disabled
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
                </FormGroup> */}

                {/* <FormGroup>
                  <Label for="exampleGame">Level</Label>
                  <Input
                    value={formData.level_id}
                    type="select"
                    name="level_id"
                    onChange={handleChange}
                    disabled
                  >
                    <option value="">Select Level</option>
                    {levelData.map((item, index) => (
                      <option value={item.level_id}>{item.level}</option>
                    ))}
                  </Input>
                </FormGroup> */}
                {formData.question_id.length > 0 && (
                  <div className="mt-4">
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
