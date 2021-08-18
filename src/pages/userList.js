import React, { useEffect, useState } from 'react';
import { Card, CardBody, CardHeader, Col, Row, Table } from 'reactstrap';
import UserService from '../apiServices/UserService';

const TablePage = () => {
  const [userDataArray, newUserDataArray] = useState([]);
  const [daseBoardData, newDashboardData] = useState([]);
  const [userWithDate, newUserWithDate] = useState([]);
  useEffect(() => {
    getUserList();
  }, []);
  const getUserList = e => {
    // ... submit to API or something
    UserService.GetUserList()
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          // newUserDataArray(data.Record.data);
          newDashboardData(data.dashboardCount);
          newUserWithDate(data.user_with_date);
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
       {daseBoardData.length>0 &&  
       
        daseBoardData.map(x=>{
          return(
            
           <div>
          <h5>  {x.name} : <span >{x.totalCount}</span></h5>
          </div>   )
        })
       
       }
       
      <Row>
        <Col sm="12" md={{ size: 12, offset: 0 }}>
          <Card className="m-3">
            <CardHeader>Users</CardHeader>
            <CardBody>
              <Table responsive>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Date</th>
                    <th>Total Download</th>
                   
                  </tr>
                </thead>
                <tbody>
                  {userWithDate.length>0 && userWithDate.map((item, index) => {
                    return (
                      <tr>
                        <th scope="row">{index + 1}</th>
                        <td>{item.date_new}</td>
                        <td>{item.total_count}</td>
                        
                       
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
