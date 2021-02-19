import React, { useEffect, useState } from 'react';
import { useHistory } from 'react-router-dom';
import BootstrapTable from 'react-bootstrap-table-next';
import filterFactory, { textFilter } from 'react-bootstrap-table2-filter';

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
} from 'reactstrap';
import QuestionService from '../apiServices/QuestionService';
import { MdEdit } from 'react-icons/md';

const QuestionListPage = props => {
  const columns = [
    {
      dataField: 'game_name',
      text: 'Game Name',
      filter: textFilter(),
    },
    {
      dataField: 'level',
      text: 'Level',
      filter: textFilter(),
    },
    {
      dataField: 'total_question',
      text: 'Total Question',
    },
    {
      dataField: '',
      text: 'Action',
      formatter: (cellContent, row) => (
        <div className="checkbox disabled">
          <Button
            onClick={() => handleEditQuestion(row.level_id)}
            outline
            color="success"
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
    // ... submit to API or something
    QuestionService.GetLevelList()
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
  function handleEditQuestion(id) {
    history.push('/addLevelQuestionSet', {
      level_id: id,
    });
  }

  return (
    <div className="mb-3">
      <Row>
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>
              Level Set{' '}
              {/* <Button
                color="success"
                onClick={handleNewQuestion}
                className="float-right"
              >
                Add New Set
              </Button>{' '} */}
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
    </div>
  );
};

export default QuestionListPage;
