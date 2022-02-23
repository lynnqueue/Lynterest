import React from "react";
import { connect } from "react-redux";
import NavBar from "./nav_bar";
import { withRouter } from "react-router-dom";
import { logout } from "../../actions/session_actions";
import { fetchAllUsers, fetchSingleUser } from "../../actions/user_actions";

const mapStateToProps = (state, ownProps) => {
  // debugger;
  const render = 
    ownProps.location.pathname !== "/login" &&
    ownProps.location.pathname !== "/signup";

  return {  
    currentUser: state.entities.users[state.session.id],
    currentUserId: state.session.id,
    render
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(NavBar));