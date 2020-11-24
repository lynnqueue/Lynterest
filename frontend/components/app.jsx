import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
// import NavContainer from './nav/nav_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import PinIndexContainer from './pins/pin_index_container';

const App = () => (
  <div>
    <AuthRoute exact path="/login" component={LogInFormContainer} />
    <AuthRoute exact path="/signup" component={SignUpFormContainer} />
    <ProtectedRoute exact path="/" component={PinIndexContainer} />
  </div>
);

export default App;