import React, { useEffect, useState } from 'react';
import { useHistory } from 'react-router-dom';
import BootstrapTable from 'react-bootstrap-table-next';
import filterFactory, { textFilter } from 'react-bootstrap-table2-filter';
import Iframe from 'react-iframe';

import paginationFactory, {
  PaginationProvider,
} from 'react-bootstrap-table2-paginator';
import {
  Card,
  CardBody,
  CardHeader,
  Col,
  Row,
  Table,
  Button,
  Spinner,
  Fade,
} from 'reactstrap';
import QuestionService from '../apiServices/QuestionService';
import { MdEdit } from 'react-icons/md';

const QuestionListPage = props => {
  const [isLoading, updateIsLoading] = useState(false);
  const columns = [
    {
      dataField: 'question',
      text: 'Question',
      filter: textFilter(),
      formatter: (cellContent, row) => (
        <div>
          <span>
            {row.question_type == '2' ? (
              <img
                src={row.question}
                width="130px"
                height="140px"
               
              />
            ) : (
              row.question
            )}
          </span>
        </div>
      ),
    },

    {
      dataField: 'options',
      text: 'Options',
    },
    {
      dataField: 'correct_options',
      text: 'Correct Option',
    },
    {
      dataField: 'question_type',
      text: 'Type (1-Ques,2-Img)',
      filter: textFilter(),
      formatter: (cellContent, row) => (
        <div>
          <span
            style={
              row.level_q_id
                ? { display: 'block', color: 'green' }
                : { display: 'block' }
            }
          >
            {row.question_type == '2' ? 'Image' : 'Question'} <br></br>
            {row.level_q_id ? 'ADDED TO Level ' : ''} {row.level}{' '}
            {row.game_name}
          </span>{' '}
        </div>
      ),
    },

    {
      dataField: '',
      text: 'Action',
      formatter: (cellContent, row) => (
        <div className="checkbox disabled">
          <Button
            onClick={() => handleEditQuestion(row.question_id)}
            outline
            color={row.level_q_id ? 'warning' : 'success'}
            size="sm"
          >
            <MdEdit /> Edit
          </Button>{' '}
        </div>
      ),
    },
  ];
  let history = useHistory();
  const [questionDataArray, newQuestionDataArray] = useState([]);
  useEffect(() => {
    getUserList();
  }, []);
  const getUserList = e => {
    updateIsLoading(true);

    // ... submit to API or something
    QuestionService.GetQuestionList()
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          newQuestionDataArray(data.Record.data);
          updateIsLoading(false);
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
      <Fade in={true} timeout={200}>
        {isLoading === true ? (
          <Spinner style={{ width: '3rem', height: '3rem' }}></Spinner>
        ) : (
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
                  <BootstrapTable
                    keyField="id"
                    data={questionDataArray}
                    columns={columns}
                    pagination={paginationFactory()}
                    filter={filterFactory()}
                  />
                </CardBody>
              </Card>
            </Col>
          </Row>
        )}
      </Fade>
    </div>
  );
};

export default QuestionListPage;
