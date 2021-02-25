import React, { useState, useEffect, createRef } from 'react';
import QuestionService from '../apiServices/QuestionService';
import NotificationSystem from 'react-notification-system';
import GooglePicker from 'react-google-picker';
import Iframe from 'react-iframe';
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
} from 'reactstrap';

const FormPage = props => {
  const notificationSystem = createRef();
  const addNotification = e => {
    const notification = notificationSystem.current;
    notification.addNotification({
      message:
        formData.question_id == ''
          ? 'Question Added Successfully'
          : 'Question Updated Successfully',
      level: 'success',
      position: 'tc',
      autoDismiss: 2,
    });
  };
  const initialFormData = Object({
    question_type: '',
    imageFile: '',
    imageUrl: '',
    options: '',
    question: '',
    correct_options: '',
    question_is_active: '1',
    question_id: '',
  });
  const [formData, updateFormData] = useState(initialFormData);
  const [imgUrl, updateImgUrl] = useState('ajit');
  const [answerArry, updateAnswerArry] = useState(['', '', '', '']);
  const handleChange = e => {
    updateFormData({
      ...formData,
      // Trimming any whitespace
      [e.target.name]: e.target.value.trim(),
    });
  };
  const handleChangeAnswer = index => e => {
    let newArr = [...answerArry];
    newArr[index] = e.target.value;

    updateAnswerArry(newArr);
  };
  useEffect(() => {
    if (props.location.state.question_id) {
      QuestionService.EditQuestion(props.location.state.question_id)
        .then(response => {
          const { data } = response;
          if (data) {
            console.log(data);
            updateFormData(...data.Record.data);
            updateAnswerArry(data.Record.data[0].options.split(','));
          } else {
            console.log('hghj');
          }
        })
        .catch(error => {
          console.log('On Catch Add_Submission_Tagging_User', error);
        })
        .finally(() => {});
    }
  }, []);
  function showMsg() {
    return (
      <Alert color="primary">This is a primary alert — check it out!</Alert>
    );
  }
  const handleSubmit = e => {
    e.preventDefault();
    e.persist();
    formData.options = answerArry.toString();

    QuestionService.AddQuestion(formData)
      .then(response => {
        const { data } = response;
        if (data) {
          addNotification();
          let empObj = {
            question_type: '',
            imageFile: '',
            imageUrl: '',
            options: '',
            question: '',
            correct_options: '',
            question_is_active: '1',
            question_id: '',
          };
          updateFormData(empObj);
          updateAnswerArry(['', '', '', '']);
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
      <Fade in={true} timeout={200}>
        <Row>
          <Col sm="12" md={{ size: 12, offset: 0 }}>
            <Card className="m-3">
              <CardHeader>
                <b>Questions</b>
              </CardHeader>
              <CardBody>
                <Form>
                  <FormGroup>
                    <Label for="exampleGame">Question Type</Label>
                    <Input
                      value={formData.question_type}
                      type="select"
                      name="question_type"
                      onChange={handleChange}
                    >
                      <option>Select Question Type</option>
                      <option value="2">Image</option>
                      <option value="1">Question</option>
                    </Input>
                  </FormGroup>
                  {formData.question_type === '2' && formData.question && (
                    <img src={formData.question} width="200px" height="250px" />
                  )}
                  {formData.question_type === '2' && (
                    <GooglePicker
                      clientId={
                        '343300974287-mm6stif8v0rid9ukoujhbc0b3qtht3dv.apps.googleusercontent.com'
                      }
                      developerKey={'AIzaSyBY-7tBQRTRS8p0t8m3NzkhH4PjC8OXSfI'}
                      scope={[
                        'https://www.googleapis.com/auth/docs',
                        'https://www.googleapis.com/auth/drive.readonly',
                        'https://www.googleapis.com/auth/drive.metadata.readonly',
                      ]}
                      // scope={[]}
                      // scope={[
                      //  ,
                      // ]}
                      onChange={data => console.log('on change:', data)}
                      onAuthFailed={data =>
                        console.log('on auth failed:', data)
                      }
                      multiselect={true}
                      navHidden={true}
                      authImmediate={false}
                      viewId={'DOCS'}
                      mimeTypes={['image/png', 'image/jpeg', 'image/jpg']}
                      thumbnailLink={true}
                      createPicker={(google, oauthToken) => {
                        const googleViewId = google.picker.ViewId.DOCS;
                        const uploadView = new google.picker.DocsUploadView(
                          googleViewId,
                        );
                        const docsView = new google.picker.DocsView(
                          googleViewId,
                        )
                          .setIncludeFolders(true)
                          .setSelectFolderEnabled(true);

                        const picker = new window.google.picker.PickerBuilder()
                          .enableFeature(
                            google.picker.Feature.SIMPLE_UPLOAD_ENABLED,
                          )
                          .enableFeature(
                            google.picker.Feature.MULTISELECT_ENABLED,
                          )
                          .addView(docsView)
                          .addView(uploadView) /*DocsUploadView added*/
                          .setOAuthToken(oauthToken)
                          .setDeveloperKey(
                            'AIzaSyBY-7tBQRTRS8p0t8m3NzkhH4PjC8OXSfI',
                          )
                          .setCallback(data => {
                            console.log(data);
                            if (data.action == google.picker.Action.PICKED) {
                              var fileId = data.docs[0].id;
                              console.log(data.docs);

                              // let copyOfObject = {
                              //   ...formData,
                              //   question:
                              //     'https://drive.google.com/uc?export=view&id=' +
                              //     fileId,
                              // };

                              // updateFormData(copyOfObject);

                              // alert('The user selected: ' + fileId);
                              // picker();
                            }
                          });
                        picker.build().setVisible(true);
                      }}
                    >
                      {/* <Button color="success">Click here</Button> */}
                      <h5>
                        <Badge color="success">Click To Upload File</Badge>
                      </h5>
                      {/* <a>Click To Upload File</a> */}
                      <div className="google mb-2"></div>
                    </GooglePicker>
                  )}

                  <FormGroup>
                    <Label for="exampleText">Question</Label>
                    <Input
                      disabled={formData.question_type === '2'}
                      value={formData.question}
                      type="textarea"
                      name="question"
                      onChange={handleChange}
                    />
                  </FormGroup>

                  {answerArry.map((item, index) => (
                    <div className="d-flex bd-highlight">
                      <div className="p-2 flex-fill bd-highlight">
                        <FormGroup>
                          <Label for="options">Answer {index + 1}</Label>
                          <Input
                            type="text"
                            name="answerArry"
                            value={item}
                            onChange={handleChangeAnswer(index)}
                          />
                        </FormGroup>
                      </div>
                      <div className="p-2 flex-fill bd-highlight">
                        <FormGroup check className=" mt-5">
                          <Label check>
                            <Input
                              checked={
                                formData.correct_options == index &&
                                formData.correct_options
                                  ? true
                                  : false
                              }
                              type="radio"
                              name="correct_options"
                              value={index}
                              onChange={handleChange}
                            />{' '}
                            Correct Answer
                          </Label>
                        </FormGroup>
                      </div>
                    </div>
                  ))}
                  <NotificationSystem ref={notificationSystem} />
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
      </Fade>
    </div>
  );
};

export default FormPage;
