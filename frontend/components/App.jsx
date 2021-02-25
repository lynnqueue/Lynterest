import React from "react";
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from "react-router-dom";
import { ProtectedRoute, AuthRoute } from "../util/route_util";

import Modal from "./modal/modal";
import NavBarContainer from "./navbar/nav_bar_container";
import PinShowContainer from "./pin/pin_show_container";
import ProfileShowContainer from "./profile/profile_show_container";
import BoardShowContainer from "./board/board_show_container";
import HomeContainer from "./home/home_container";
import CreatePinFormContainer from "./pin/form/create_pin_form_container";


const App = () => (
  <div className="app">
    <Modal />
    <header>
      <ProtectedRoute path="/" component={NavBarContainer} />
    </header>
    <Switch>
      <ProtectedRoute exact path="/:username" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username/pins" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username/boards" component={ProfileShowContainer} />      
      <ProtectedRoute exact path="/pin-builder" component={CreatePinFormContainer} />
      <ProtectedRoute exact path="/pin/:pinId" component={PinShowContainer} />
      <ProtectedRoute exact path="/:username/:boardTitle" component={BoardShowContainer} />
      <Route exact path="/" component={HomeContainer} />
    </Switch>
  </div>
);

export default App;