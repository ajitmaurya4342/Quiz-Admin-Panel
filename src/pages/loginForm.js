import React, { useState } from 'react';
import LoginService from '../apiServices/LoginService';

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
} from 'reactstrap';
import {
  BrowserRouter,
  Redirect,
  Route,
  Switch,
  useHistory,
} from 'react-router-dom';

const LoginForm = () => {
  const initialFormData = Object.freeze({
    user_name: '',
    password: '',
  });
  const [formData, updateFormData] = useState(initialFormData);
  const handleChange = e => {
    updateFormData({
      ...formData,

      // Trimming any whitespace
      [e.target.name]: e.target.value.trim(),
    });
  };
  let history = useHistory();

  const handleSubmit = e => {
    e.preventDefault();

    // ... submit to API or something
    LoginService.LoginUser(formData)
      .then(response => {
        const { data } = response;
        if (data && data.status === true) {
          localStorage.setItem('loginId', data.Record[0].user_id);
          localStorage.setItem('loginType', data.Record[0].user_id);
          localStorage.setItem('userName', data.Record[0].user_id);
          history.push('/dashboard');
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
    <div class="section-1-container section-container loginDiv row align-items-center">
      <div className="container">
        <Row>
          <Col sm="12" md={{ size: 4, offset: 4 }}>
            <Card style={{ borderRadius: '10px' }}>
              <CardBody>
                <Form>
                  <div className="text-center pb-4">
                    <CardHeader>
                      <b>Quiz IQ</b>
                    </CardHeader>
                  </div>

                  <FormGroup>
                    <Label for="username">Username</Label>
                    <Input
                      type="text"
                      name="user_name"
                      onChange={handleChange}
                    />
                  </FormGroup>
                  <FormGroup>
                    <Label for="username">Password</Label>
                    <Input
                      type="password"
                      name="password"
                      onChange={handleChange}
                    />
                  </FormGroup>

                  <hr />
                  <Button
                    size="lg"
                    color="warning"
                    block
                    value="/dashboard"
                    onClick={handleSubmit}
                  >
                    Login
                  </Button>
                </Form>
              </CardBody>
            </Card>
          </Col>
        </Row>
      </div>
    </div>
  );
};

export default LoginForm;
