import { MainLayout, EmptyLayout } from 'components/Layout';

import React from 'react';
import { Spinner } from 'reactstrap';
import componentQueries from 'react-component-queries';
import { BrowserRouter, Redirect, Route, Switch } from 'react-router-dom';
import './styles/reduction.scss';
import 'react-bootstrap-table2-filter/dist/react-bootstrap-table2-filter.min.css';
import 'react-bootstrap-table2-paginator/dist/react-bootstrap-table2-paginator.min.css';
const DashboardPage = React.lazy(() => import('pages/DashboardPage'));
const Login = React.lazy(() => import('pages/loginForm'));
const AddQuestionPage = React.lazy(() => import('pages/addQuestionPage'));
const UserList = React.lazy(() => import('pages/userList'));
const QuestionList = React.lazy(() => import('pages/questionList'));
const LevelQuestionList = React.lazy(() => import('pages/levelQuestionList'));
const AddLevelQuestionSet = React.lazy(() =>
  import('pages/addLevelQuestionSet'),
);

const getBasename = () => {
  return `/${process.env.PUBLIC_URL.split('/').pop()}`;
};

class App extends React.Component {
  render() {
    return (
      <BrowserRouter basename={getBasename()}>
        <Switch>
          <MainLayout breakpoint={this.props.breakpoint}>
            <React.Suspense fallback>
              <Route exact path="/" layout={EmptyLayout} component={Login} />
              <Route exact path="/dasboard" component={DashboardPage} />
              <Route exact path="/UserList" component={UserList} />
              <Route exact path="/QuestionList" component={QuestionList} />
              <Route exact path="/questionForm" component={AddQuestionPage} />
              <Route
                exact
                path="/LevelQuestionList"
                component={LevelQuestionList}
              />
              <Route
                exact
                path="/AddLevelQuestionSet"
                component={AddLevelQuestionSet}
              />
            </React.Suspense>
          </MainLayout>
          <Redirect to="/" />
        </Switch>
      </BrowserRouter>
    );
  }
}

const query = ({ width }) => {
  if (width < 575) {
    return { breakpoint: 'xs' };
  }

  if (576 < width && width < 767) {
    return { breakpoint: 'sm' };
  }

  if (768 < width && width < 991) {
    return { breakpoint: 'md' };
  }

  if (992 < width && width < 1199) {
    return { breakpoint: 'lg' };
  }

  if (width > 1200) {
    return { breakpoint: 'xl' };
  }

  return { breakpoint: 'xs' };
};

export default componentQueries(query)(App);
