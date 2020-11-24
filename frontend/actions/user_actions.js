import * as UserAPIUtil from "../util/user_api_util";

export const RECEIVE_USERS = "RECEIVE_USERSS";
export const RECEIVE_USER = "RECEIVE_USER";

export const receiveusers = (users) => ({
    type: RECEIVE_USERS,
    users
});

export const receiveuser = (user) => ({
  type: RECEIVE_USER,
  user
});

export const fetchUsers = () => (dispatch) => {
  return UserAPIUtil.fetchUsers()
    .then((users) => dispatch(receiveusers(users)));
};

export const fetchUser = (id) => (dispatch) => {
  return UserAPIUtil.fetchUser(id)
    .then((user) => dispatch(receiveuser(user)));
};