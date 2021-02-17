import React, { useEffect, useState } from 'react';
import { Card, CardBody, CardHeader, Col, Row, Table } from 'reactstrap';
import UserService from '../apiServices/UserService';

const TablePage = () => {
  const [userDataArray, newUserDataArray] = useState([]);
  useEffect(() => {
    getUserList();
  }, []);
  const getUserList = e => {
    // ... submit to API or something
    UserService.GetUserList()
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          newUserDataArray(data.Record.data);
        } else {
          console.log('iuyiu');
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => {});
  };

  return (
    <div className="mb-3">
      <Row>
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>Users</CardHeader>
            <CardBody>
              <Table responsive>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Username</th>
                    <th>Type</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  {userDataArray.map((item, index) => {
                    return (
                      <tr>
                        <th scope="row">{index + 1}</th>
                        <td>{item.user_name}</td>
                        <td>{item.user_type === '1' ? 'Admin' : 'User'}</td>
                        <td>
                          {item.user_is_active === '1' ? 'Active' : 'Deleted'}
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

export default TablePage;
