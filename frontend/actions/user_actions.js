import * as UserAPIUtil from "../util/user_api_util";

// action types
// export const RECEIVE_ALL_USERS = "RECEIVE_ALL_USERS";
export const RECEIVE_SINGLE_USER = "RECEIVE_SINGLE_USER";
export const RECEIVE_USER_ERRORS = "RECEIVE_USER_ERRORS";

// const receiveAllUsers = users => ({
//   type: RECEIVE_ALL_USERS,
//   users
// });

const receiveSingleUser = payload => ({
  type: RECEIVE_SINGLE_USER,
  payload
});

const receiveUserErrors = errors => ({
  type: RECEIVE_USER_ERRORS,
  errors
});

export const fetchSingleUser = id => dispatch => (
  UserAPIUtil.fetchSingleUser(id)
    .then(payload => dispatch(receiveSingleUser(payload)))
);
