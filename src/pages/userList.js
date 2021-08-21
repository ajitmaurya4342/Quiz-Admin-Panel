import React, { useState, useEffect, createRef } from 'react';
import NotificationSystem from 'react-notification-system';
import {
  Alert,
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
  Badge,
  Fade,
  Table
} from 'reactstrap';

import UserService from '../apiServices/UserService';
import QuestionService from '../apiServices/QuestionService';

const TablePage = () => {
  const notificationSystem = createRef();
  const addNotification = (message_new) => {
    const notification = notificationSystem.current;
    notification.addNotification({
      message:message_new,
      level: 'success',
      position: 'tc',
      autoDismiss: 2,
    });
  };

  const handleSubmit = e => {
    e.preventDefault();
    e.persist();
    // formData.options = answerArry.toString();

    QuestionService.sendNotification(formData)
      .then(response => {
        const { data } = response;
        if (data.status) {
          // addNotification();
          let empObj = {
           message_body:"",
           message_title:""
          };
          updateFormData(empObj);
        } else {
          alert(data.msg)
          // addNotification(data.msg);
        }
      })
      .catch(error => {
        console.log('On Catch Add_Submission_Tagging_User', error);
      })
      .finally(() => { });

    // ... submit to API or something
  };
  
  const handleChange = e => {
    console.log(e)
    updateFormData({
      ...formData,
      // Trimming any whitespace
      [e.target.name]: e.target.value,
    });
  };
  const [userDataArray, newUserDataArray] = useState([]);
  const [formData, updateFormData] = useState({message_body:"",message_title:""});
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
              <CardHeader>
                <b>Notification</b>
              </CardHeader>
              <CardBody>
                <Form>
                  <FormGroup>
                    <Label for="exampleGame">Notification Title</Label>
                    <Input
                     value={formData.message_title}
                      type="text"
                      name="message_title"
                      onChange={handleChange}
                    >
                   
                    </Input>
                    <Label for="exampleGame">Notification Message</Label>
                    <Input
                       value={formData.message_body}
                      type="text"
                      name="message_body"
                      onChange={handleChange}
                    >
                   
                    </Input>
                  </FormGroup>
               

               
                  <div>
                    <Button color="success" onClick={handleSubmit}>
                      Submit
                    </Button>
                  </div>
                </Form>
              </CardBody>
            </Card>
          </Col>
        </Row>
      
       
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
