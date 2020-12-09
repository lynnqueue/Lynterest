import { combineReducers } from 'redux';

import modal from './modal_reducer';
import objectId from './modal_object_reducer';

const UIReducer = combineReducers({
  modal,
  objectId
});

export default UIReducer;