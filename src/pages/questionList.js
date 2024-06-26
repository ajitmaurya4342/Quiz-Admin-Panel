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


    {
      dataField: 'options',
      text: 'Options',
      formatter: (cellContent, row) => (

        <div style={
          row.options.split(",")[0] == row.options.split(",")[1] ? { display: 'block', color: 'red' } : { display: 'block' }}>  {row.options} </div>
      ),
    },
    {
      dataField: 'correct_options',
      text: 'Correct Option',
    },
    {
      dataField: 'question',
      text: 'Question',
      filter: textFilter(),
      formatter: (cellContent, row) => (
        <div>
          <span>
            {row.question_type == '2' ? (
              <Iframe
                url={row.question}
                width="120px"
                height="120px"
                id="myId"
                className="myClassname"
                display="initial"
                position="relative"
              />
            ) : (
              row.question
            )}
          </span>
        </div>
      ),
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
          let array_new_add = [];
          let array_new_sub = [];
          // if()
          data.Record.data.map(x => {
            if (x.options.split(",")[0] == x.options.split(",")[1]) {
              array_new_add.push(x);
            } else {
              array_new_sub.push(x);
            }
          })
          let newArray = [...array_new_add, ...array_new_sub]
          newQuestionDataArray(newArray);
          updateIsLoading(false);
        } else {
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => { });
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

  const sizePerPageRenderer = ({
    options,
    currSizePerPage,
    onSizePerPageChange
  }) => (
    <div className="btn-group" role="group">
      {
        options.map((option) => {
          const isSelect = currSizePerPage === `${option.page}`;
          return (
            <button
              key={option.text}
              type="button"
              onClick={() => onSizePerPageChange(option.page)}
              className={`btn ${isSelect ? 'btn-secondary' : 'btn-warning'}`}
            >
              { option.text}
            </button>
          );
        })
      }
    </div>
  );

  const options = {
    sizePerPageRenderer
  };


  return (
    <div className="mb-3">
      <Fade in={true} timeout={200}>
        {isLoading === true ? (
          <Spinner style={{ width: '3rem', height: '3rem' }}></Spinner>
        ) : (
          <Row>
            <Col sm="12" md={{ size: 12, offset: 0 }}>
              <Card className="m-3 table-responsive">
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
                    pagination={paginationFactory(options)}
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
