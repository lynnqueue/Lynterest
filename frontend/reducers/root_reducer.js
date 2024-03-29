import { combineReducers } from "redux";

import entities from "./entities_reducer";
import ui from "./ui_reducer";
import errors from "./session_errors_reducer";
import session from "./session_reducer";

const RootReducer = combineReducers({
  entities,
  ui,
  errors,
  session
});

export default RootReducer;